package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n6 extends z5 implements Runnable {

    /* renamed from: k, reason: collision with root package name */
    public final Runnable f4361k;

    public n6(Runnable runnable) {
        super(11);
        runnable.getClass();
        this.f4361k = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f4361k.run();
        } catch (Throwable th) {
            if (e6.f4149j.q(this, null, new x5(th))) {
                z5.y(this);
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.cast.z5
    public final String u() {
        return a.e.r("task=[", this.f4361k.toString(), "]");
    }
}
