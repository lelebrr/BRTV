package okhttp3.internal.http;

import j9.i;
import okhttp3.MediaType;
import okhttp3.ResponseBody;
import okio.BufferedSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class RealResponseBody extends ResponseBody {
    private final long contentLength;
    private final String contentTypeString;
    private final BufferedSource source;

    public RealResponseBody(String str, long j10, BufferedSource bufferedSource) {
        i.f(bufferedSource, "source");
        this.contentTypeString = str;
        this.contentLength = j10;
        this.source = bufferedSource;
    }

    @Override // okhttp3.ResponseBody
    public long contentLength() {
        return this.contentLength;
    }

    @Override // okhttp3.ResponseBody
    public MediaType contentType() {
        String str = this.contentTypeString;
        if (str != null) {
            return MediaType.Companion.parse(str);
        }
        return null;
    }

    @Override // okhttp3.ResponseBody
    public BufferedSource source() {
        return this.source;
    }
}
