package l;

import android.os.Looper;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends l5.a {

    /* renamed from: s, reason: collision with root package name */
    public static volatile a f7920s;

    /* renamed from: r, reason: collision with root package name */
    public final d f7921r = new d();

    public static a V() {
        if (f7920s != null) {
            return f7920s;
        }
        synchronized (a.class) {
            try {
                if (f7920s == null) {
                    f7920s = new a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f7920s;
    }

    public final void W(Runnable runnable) {
        d dVar = this.f7921r;
        if (dVar.f7926t == null) {
            synchronized (dVar.f7924r) {
                try {
                    if (dVar.f7926t == null) {
                        dVar.f7926t = d.V(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        dVar.f7926t.post(runnable);
    }
}
