package androidx.media3.datasource.okhttp;

import android.net.Uri;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.BaseDataSource;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.HttpDataSource;
import androidx.media3.datasource.HttpUtil;
import androidx.media3.datasource.TransferListener;
import b7.n;
import com.google.common.util.concurrent.SettableFuture;
import com.lzy.okgo.model.HttpHeaders;
import e7.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import okhttp3.CacheControl;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class OkHttpDataSource extends BaseDataSource implements HttpDataSource {
    private long bytesRead;
    private long bytesToRead;
    private final CacheControl cacheControl;
    private final Call.Factory callFactory;
    private boolean connectionEstablished;
    private final n contentTypePredicate;
    private DataSpec dataSpec;
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    private final HttpDataSource.RequestProperties requestProperties;
    private Response response;
    private InputStream responseByteStream;
    private final String userAgent;

    /* compiled from: MyApplication */
    public static final class Factory implements HttpDataSource.Factory {
        private CacheControl cacheControl;
        private final Call.Factory callFactory;
        private n contentTypePredicate;
        private final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        private TransferListener transferListener;
        private String userAgent;

        public Factory(Call.Factory factory) {
            this.callFactory = factory;
        }

        @UnstableApi
        public Factory setCacheControl(CacheControl cacheControl) {
            this.cacheControl = cacheControl;
            return this;
        }

        @UnstableApi
        public Factory setContentTypePredicate(n nVar) {
            this.contentTypePredicate = nVar;
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        @UnstableApi
        public /* bridge */ /* synthetic */ HttpDataSource.Factory setDefaultRequestProperties(Map map) {
            return setDefaultRequestProperties((Map<String, String>) map);
        }

        @UnstableApi
        public Factory setTransferListener(TransferListener transferListener) {
            this.transferListener = transferListener;
            return this;
        }

        @UnstableApi
        public Factory setUserAgent(String str) {
            this.userAgent = str;
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        @UnstableApi
        public final Factory setDefaultRequestProperties(Map<String, String> map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory, androidx.media3.datasource.DataSource.Factory
        @UnstableApi
        public OkHttpDataSource createDataSource() {
            OkHttpDataSource okHttpDataSource = new OkHttpDataSource(this.callFactory, this.userAgent, this.cacheControl, this.defaultRequestProperties, this.contentTypePredicate);
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                okHttpDataSource.addTransferListener(transferListener);
            }
            return okHttpDataSource;
        }
    }

    static {
        MediaLibraryInfo.registerModule("media3.datasource.okhttp");
    }

    private void closeConnectionQuietly() {
        Response response = this.response;
        if (response != null) {
            ((ResponseBody) Assertions.checkNotNull(response.body())).close();
        }
        this.responseByteStream = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Response executeCall(Call call) throws IOException {
        final SettableFuture settableFutureCreate = SettableFuture.create();
        call.enqueue(new Callback() { // from class: androidx.media3.datasource.okhttp.OkHttpDataSource.1
            @Override // okhttp3.Callback
            public void onFailure(Call call2, IOException iOException) {
                settableFutureCreate.setException(iOException);
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call2, Response response) {
                settableFutureCreate.set(response);
            }
        });
        try {
            return (Response) settableFutureCreate.get();
        } catch (InterruptedException unused) {
            call.cancel();
            throw new InterruptedIOException();
        } catch (ExecutionException e5) {
            throw new IOException(e5);
        }
    }

    private Request makeRequest(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        long j10 = dataSpec.position;
        long j11 = dataSpec.length;
        HttpUrl httpUrl = HttpUrl.parse(dataSpec.uri.toString());
        if (httpUrl == null) {
            throw new HttpDataSource.HttpDataSourceException("Malformed URL", dataSpec, 1004, 1);
        }
        Request.Builder builderUrl = new Request.Builder().url(httpUrl);
        CacheControl cacheControl = this.cacheControl;
        if (cacheControl != null) {
            builderUrl.cacheControl(cacheControl);
        }
        HashMap map = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            map.putAll(requestProperties.getSnapshot());
        }
        map.putAll(this.requestProperties.getSnapshot());
        map.putAll(dataSpec.httpRequestHeaders);
        for (Map.Entry entry : map.entrySet()) {
            builderUrl.header((String) entry.getKey(), (String) entry.getValue());
        }
        String strBuildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(j10, j11);
        if (strBuildRangeRequestHeader != null) {
            builderUrl.addHeader("Range", strBuildRangeRequestHeader);
        }
        String str = this.userAgent;
        if (str != null) {
            builderUrl.addHeader("User-Agent", str);
        }
        if (!dataSpec.isFlagSet(1)) {
            builderUrl.addHeader(HttpHeaders.HEAD_KEY_ACCEPT_ENCODING, "identity");
        }
        byte[] bArr = dataSpec.httpBody;
        builderUrl.method(dataSpec.getHttpMethodString(), bArr != null ? RequestBody.create(bArr) : dataSpec.httpMethod == 2 ? RequestBody.create(Util.EMPTY_BYTE_ARRAY) : null);
        return builderUrl.build();
    }

    private int readInternal(byte[] bArr, int i6, int i10) throws IOException {
        if (i10 == 0) {
            return 0;
        }
        long j10 = this.bytesToRead;
        if (j10 != -1) {
            long j11 = j10 - this.bytesRead;
            if (j11 == 0) {
                return -1;
            }
            i10 = (int) Math.min(i10, j11);
        }
        int i11 = ((InputStream) Util.castNonNull(this.responseByteStream)).read(bArr, i6, i10);
        if (i11 == -1) {
            return -1;
        }
        this.bytesRead += i11;
        bytesTransferred(i11);
        return i11;
    }

    private void skipFully(long j10, DataSpec dataSpec) throws IOException {
        if (j10 == 0) {
            return;
        }
        byte[] bArr = new byte[4096];
        while (j10 > 0) {
            try {
                int i6 = ((InputStream) Util.castNonNull(this.responseByteStream)).read(bArr, 0, (int) Math.min(j10, 4096));
                if (Thread.currentThread().isInterrupted()) {
                    throw new InterruptedIOException();
                }
                if (i6 == -1) {
                    throw new HttpDataSource.HttpDataSourceException(dataSpec, 2008, 1);
                }
                j10 -= i6;
                bytesTransferred(i6);
            } catch (IOException e5) {
                if (!(e5 instanceof HttpDataSource.HttpDataSourceException)) {
                    throw new HttpDataSource.HttpDataSourceException(dataSpec, 2000, 1);
                }
                throw ((HttpDataSource.HttpDataSourceException) e5);
            }
        }
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void clearAllRequestProperties() {
        this.requestProperties.clear();
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void clearRequestProperty(String str) {
        Assertions.checkNotNull(str);
        this.requestProperties.remove(str);
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public void close() {
        if (this.connectionEstablished) {
            this.connectionEstablished = false;
            transferEnded();
            closeConnectionQuietly();
        }
        this.response = null;
        this.dataSpec = null;
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public int getResponseCode() {
        Response response = this.response;
        if (response == null) {
            return -1;
        }
        return response.code();
    }

    @Override // androidx.media3.datasource.BaseDataSource, androidx.media3.datasource.DataSource
    @UnstableApi
    public Map<String, List<String>> getResponseHeaders() {
        Response response = this.response;
        return response == null ? Collections.emptyMap() : response.headers().toMultimap();
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public Uri getUri() {
        Response response = this.response;
        if (response != null) {
            return Uri.parse(response.request().url().toString());
        }
        DataSpec dataSpec = this.dataSpec;
        if (dataSpec != null) {
            return dataSpec.uri;
        }
        return null;
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public long open(DataSpec dataSpec) throws IOException {
        byte[] bArrB;
        this.dataSpec = dataSpec;
        long j10 = 0;
        this.bytesRead = 0L;
        this.bytesToRead = 0L;
        transferInitializing(dataSpec);
        try {
            Response responseExecuteCall = executeCall(this.callFactory.newCall(makeRequest(dataSpec)));
            this.response = responseExecuteCall;
            ResponseBody responseBody = (ResponseBody) Assertions.checkNotNull(responseExecuteCall.body());
            this.responseByteStream = responseBody.byteStream();
            int iCode = responseExecuteCall.code();
            if (!responseExecuteCall.isSuccessful()) {
                if (iCode == 416) {
                    if (dataSpec.position == HttpUtil.getDocumentSize(responseExecuteCall.headers().get(HttpHeaders.HEAD_KEY_CONTENT_RANGE))) {
                        this.connectionEstablished = true;
                        transferStarted(dataSpec);
                        long j11 = dataSpec.length;
                        if (j11 != -1) {
                            return j11;
                        }
                        return 0L;
                    }
                }
                try {
                    bArrB = b.b((InputStream) Assertions.checkNotNull(this.responseByteStream));
                } catch (IOException unused) {
                    bArrB = Util.EMPTY_BYTE_ARRAY;
                }
                byte[] bArr = bArrB;
                Map<String, List<String>> multimap = responseExecuteCall.headers().toMultimap();
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidResponseCodeException(iCode, responseExecuteCall.message(), iCode == 416 ? new DataSourceException(2008) : null, multimap, dataSpec, bArr);
            }
            MediaType mediaTypeContentType = responseBody.contentType();
            String string = mediaTypeContentType != null ? mediaTypeContentType.toString() : "";
            n nVar = this.contentTypePredicate;
            if (nVar != null && !nVar.apply(string)) {
                closeConnectionQuietly();
                throw new HttpDataSource.InvalidContentTypeException(string, dataSpec);
            }
            if (iCode == 200) {
                long j12 = dataSpec.position;
                if (j12 != 0) {
                    j10 = j12;
                }
            }
            long j13 = dataSpec.length;
            if (j13 != -1) {
                this.bytesToRead = j13;
            } else {
                long jContentLength = responseBody.contentLength();
                this.bytesToRead = jContentLength != -1 ? jContentLength - j10 : -1L;
            }
            this.connectionEstablished = true;
            transferStarted(dataSpec);
            try {
                skipFully(j10, dataSpec);
                return this.bytesToRead;
            } catch (HttpDataSource.HttpDataSourceException e5) {
                closeConnectionQuietly();
                throw e5;
            }
        } catch (IOException e10) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e10, dataSpec, 1);
        }
    }

    @Override // androidx.media3.common.DataReader
    @UnstableApi
    public int read(byte[] bArr, int i6, int i10) throws HttpDataSource.HttpDataSourceException {
        try {
            return readInternal(bArr, i6, i10);
        } catch (IOException e5) {
            throw HttpDataSource.HttpDataSourceException.createForIOException(e5, (DataSpec) Util.castNonNull(this.dataSpec), 2);
        }
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void setRequestProperty(String str, String str2) {
        Assertions.checkNotNull(str);
        Assertions.checkNotNull(str2);
        this.requestProperties.set(str, str2);
    }

    private OkHttpDataSource(Call.Factory factory, String str, CacheControl cacheControl, HttpDataSource.RequestProperties requestProperties, n nVar) {
        super(true);
        this.callFactory = (Call.Factory) Assertions.checkNotNull(factory);
        this.userAgent = str;
        this.cacheControl = cacheControl;
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = nVar;
        this.requestProperties = new HttpDataSource.RequestProperties();
    }
}
