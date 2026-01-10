package okio;

import i9.l;
import j9.i;
import java.io.Closeable;
import l5.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final /* synthetic */ class Okio__OkioKt {
    public static final Sink blackhole() {
        return new BlackholeSink();
    }

    public static final BufferedSource buffer(Source source) {
        i.f(source, "<this>");
        return new RealBufferedSource(source);
    }

    public static final <T extends Closeable, R> R use(T t5, l lVar) throws Throwable {
        R r10;
        i.f(lVar, "block");
        Throwable th = null;
        try {
            r10 = (R) lVar.invoke(t5);
            if (t5 != null) {
                try {
                    t5.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (t5 != null) {
                try {
                    t5.close();
                } catch (Throwable th4) {
                    a.a(th3, th4);
                }
            }
            th = th3;
            r10 = null;
        }
        if (th != null) {
            throw th;
        }
        i.c(r10);
        return r10;
    }

    public static final BufferedSink buffer(Sink sink) {
        i.f(sink, "<this>");
        return new RealBufferedSink(sink);
    }
}
