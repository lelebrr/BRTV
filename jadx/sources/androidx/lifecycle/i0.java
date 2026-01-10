package androidx.lifecycle;

import android.os.Handler;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 implements w {

    /* renamed from: i, reason: collision with root package name */
    public static final i0 f1963i = new i0();

    /* renamed from: a, reason: collision with root package name */
    public int f1964a;

    /* renamed from: b, reason: collision with root package name */
    public int f1965b;

    /* renamed from: e, reason: collision with root package name */
    public Handler f1967e;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1966c = true;
    public boolean d = true;
    public final y f = new y(this);

    /* renamed from: g, reason: collision with root package name */
    public final a.b f1968g = new a.b(4, this);

    /* renamed from: h, reason: collision with root package name */
    public final a0.b f1969h = new a0.b(8, this);

    public final void b() {
        int i6 = this.f1965b + 1;
        this.f1965b = i6;
        if (i6 == 1) {
            if (this.f1966c) {
                this.f.f(n.ON_RESUME);
                this.f1966c = false;
            } else {
                Handler handler = this.f1967e;
                j9.i.c(handler);
                handler.removeCallbacks(this.f1968g);
            }
        }
    }

    @Override // androidx.lifecycle.w
    public final p f() {
        return this.f;
    }
}
