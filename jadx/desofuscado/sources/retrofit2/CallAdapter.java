package retrofit2;

import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface CallAdapter<R, T> {

    /* compiled from: MyApplication */
    public static abstract class Factory {
        public static Type getParameterUpperBound(int i6, ParameterizedType parameterizedType) {
            return Utils.getParameterUpperBound(i6, parameterizedType);
        }

        public static Class<?> getRawType(Type type) {
            return Utils.getRawType(type);
        }

        public abstract CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit);
    }

    T adapt(Call<R> call);

    Type responseType();
}
