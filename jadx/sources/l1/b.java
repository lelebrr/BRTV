package l1;

import android.content.Context;
import android.os.Process;
import java.util.concurrent.Callable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7946a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7947b;

    public /* synthetic */ b(int i6, Object obj) {
        this.f7946a = i6;
        this.f7947b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f7946a) {
            case 0:
                a aVar = (a) this.f7947b;
                aVar.f7944b.set(true);
                try {
                    Process.setThreadPriority(10);
                    throw null;
                } catch (Throwable th) {
                    try {
                        aVar.f7943a.set(true);
                        throw th;
                    } catch (Throwable th2) {
                        aVar.a(null);
                        throw th2;
                    }
                }
            case 1:
                return ((Context) this.f7947b).getSharedPreferences("google_sdk_flags", 0);
            default:
                synchronized (((s2.d) this.f7947b)) {
                    try {
                        s2.d dVar = (s2.d) this.f7947b;
                        if (dVar.f9752i == null) {
                            return null;
                        }
                        dVar.n();
                        if (((s2.d) this.f7947b).g()) {
                            ((s2.d) this.f7947b).l();
                            ((s2.d) this.f7947b).f9754k = 0;
                        }
                        return null;
                    } finally {
                    }
                }
        }
    }
}
