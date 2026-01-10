package retrofit2.converter.gson;

import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import l7.k;
import l7.r;
import okhttp3.MediaType;
import okhttp3.RequestBody;
import okio.Buffer;
import retrofit2.Converter;
import t7.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class GsonRequestBodyConverter<T> implements Converter<T, RequestBody> {
    private static final MediaType MEDIA_TYPE = MediaType.get("application/json; charset=UTF-8");
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final r adapter;
    private final k gson;

    public GsonRequestBodyConverter(k kVar, r rVar) {
        this.gson = kVar;
        this.adapter = rVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // retrofit2.Converter
    public /* bridge */ /* synthetic */ RequestBody convert(Object obj) throws IOException {
        return convert((GsonRequestBodyConverter<T>) obj);
    }

    @Override // retrofit2.Converter
    public RequestBody convert(T t5) throws IOException {
        Buffer buffer = new Buffer();
        b bVarD = this.gson.d(new OutputStreamWriter(buffer.outputStream(), UTF_8));
        this.adapter.b(bVarD, t5);
        bVarD.close();
        return RequestBody.create(MEDIA_TYPE, buffer.readByteString());
    }
}
