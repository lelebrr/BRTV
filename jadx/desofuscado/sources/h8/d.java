package h8;

import android.os.Handler;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements Runnable, j8.b {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f7278a;

    /* renamed from: b, reason: collision with root package name */
    public final Runnable f7279b;

    public d(Handler handler, Runnable runnable) {
        this.f7278a = handler;
        this.f7279b = runnable;
    }

    @Override // j8.b
    public final void a() {
        this.f7278a.removeCallbacks(this);
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f7279b.run();
        } catch (Throwable th) {
            com.bumptech.glide.d.y(th);
        }
    }
}
