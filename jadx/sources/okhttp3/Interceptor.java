package okhttp3;

import i9.l;
import j9.i;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import okhttp3.Interceptor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public interface Interceptor {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: MyApplication */
    public interface Chain {
        Call call();

        int connectTimeoutMillis();

        Connection connection();

        Response proceed(Request request) throws IOException;

        int readTimeoutMillis();

        Request request();

        Chain withConnectTimeout(int i6, TimeUnit timeUnit);

        Chain withReadTimeout(int i6, TimeUnit timeUnit);

        Chain withWriteTimeout(int i6, TimeUnit timeUnit);

        int writeTimeoutMillis();
    }

    /* compiled from: MyApplication */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        private Companion() {
        }

        public final Interceptor invoke(final l lVar) {
            i.f(lVar, "block");
            return new Interceptor() { // from class: okhttp3.Interceptor$Companion$invoke$1
                @Override // okhttp3.Interceptor
                public final Response intercept(Interceptor.Chain chain) {
                    i.f(chain, "it");
                    return (Response) lVar.invoke(chain);
                }
            };
        }
    }

    Response intercept(Chain chain) throws IOException;
}
