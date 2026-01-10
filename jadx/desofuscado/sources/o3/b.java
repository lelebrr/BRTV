package o3;

import android.graphics.drawable.Drawable;
import r3.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b implements h {

    /* renamed from: a, reason: collision with root package name */
    public final int f8552a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8553b;

    /* renamed from: c, reason: collision with root package name */
    public n3.c f8554c;

    public b() {
        if (!n.i(Integer.MIN_VALUE, Integer.MIN_VALUE)) {
            throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648");
        }
        this.f8552a = Integer.MIN_VALUE;
        this.f8553b = Integer.MIN_VALUE;
    }

    @Override // o3.h
    public final void a(n3.c cVar) {
        this.f8554c = cVar;
    }

    @Override // o3.h
    public final void f(n3.f fVar) {
        fVar.m(this.f8552a, this.f8553b);
    }

    @Override // o3.h
    public final n3.c getRequest() {
        return this.f8554c;
    }

    @Override // k3.i
    public final void c() {
    }

    @Override // k3.i
    public final void i() {
    }

    @Override // k3.i
    public final void j() {
    }

    @Override // o3.h
    public final void b(Drawable drawable) {
    }

    @Override // o3.h
    public final void e(n3.f fVar) {
    }

    @Override // o3.h
    public final void g(Drawable drawable) {
    }
}
