package retrofit2.converter.gson;

import java.lang.annotation.Annotation;
import java.lang.reflect.Type;
import l7.k;
import okhttp3.RequestBody;
import okhttp3.ResponseBody;
import retrofit2.Converter;
import retrofit2.Retrofit;
import s7.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class GsonConverterFactory extends Converter.Factory {
    private final k gson;

    private GsonConverterFactory(k kVar) {
        this.gson = kVar;
    }

    public static GsonConverterFactory create() {
        return create(new k());
    }

    @Override // retrofit2.Converter.Factory
    public Converter<?, RequestBody> requestBodyConverter(Type type, Annotation[] annotationArr, Annotation[] annotationArr2, Retrofit retrofit) {
        return new GsonRequestBodyConverter(this.gson, this.gson.c(new a(type)));
    }

    @Override // retrofit2.Converter.Factory
    public Converter<ResponseBody, ?> responseBodyConverter(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        return new GsonResponseBodyConverter(this.gson, this.gson.c(new a(type)));
    }

    public static GsonConverterFactory create(k kVar) {
        if (kVar != null) {
            return new GsonConverterFactory(kVar);
        }
        throw new NullPointerException("gson == null");
    }
}
