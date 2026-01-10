package retrofit2.converter.gson;

import java.io.IOException;
import java.io.Reader;
import l7.k;
import l7.n;
import l7.r;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import t7.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class GsonResponseBodyConverter<T> implements Converter<ResponseBody, T> {
    private final r adapter;
    private final k gson;

    public GsonResponseBodyConverter(k kVar, r rVar) {
        this.gson = kVar;
        this.adapter = rVar;
    }

    @Override // retrofit2.Converter
    public T convert(ResponseBody responseBody) throws IOException {
        k kVar = this.gson;
        Reader readerCharStream = responseBody.charStream();
        kVar.getClass();
        a aVar = new a(readerCharStream);
        aVar.f10156b = false;
        try {
            T t5 = (T) this.adapter.a(aVar);
            if (aVar.u() == 10) {
                return t5;
            }
            throw new n("JSON document was not fully consumed.");
        } finally {
            responseBody.close();
        }
    }
}
