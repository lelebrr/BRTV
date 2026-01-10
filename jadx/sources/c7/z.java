package c7;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class z extends WeakReference implements c0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f3478a;

    /* renamed from: b, reason: collision with root package name */
    public final c0 f3479b;

    /* renamed from: c, reason: collision with root package name */
    public volatile v f3480c;

    public z(ReferenceQueue referenceQueue, Object obj, int i6, c0 c0Var) {
        super(obj, referenceQueue);
        this.f3480c = b0.f3400s;
        this.f3478a = i6;
        this.f3479b = c0Var;
    }

    @Override // c7.c0
    public final v a() {
        return this.f3480c;
    }

    @Override // c7.c0
    public final c0 b() {
        return this.f3479b;
    }

    @Override // c7.c0
    public final int c() {
        return this.f3478a;
    }

    public void d(long j10) {
        throw new UnsupportedOperationException();
    }

    public c0 e() {
        throw new UnsupportedOperationException();
    }

    public void f(c0 c0Var) {
        throw new UnsupportedOperationException();
    }

    public void g(c0 c0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // c7.c0
    public final Object getKey() {
        return get();
    }

    public void h(c0 c0Var) {
        throw new UnsupportedOperationException();
    }

    public c0 i() {
        throw new UnsupportedOperationException();
    }

    @Override // c7.c0
    public final void j(v vVar) {
        this.f3480c = vVar;
    }

    public long k() {
        throw new UnsupportedOperationException();
    }

    public void l(long j10) {
        throw new UnsupportedOperationException();
    }

    public c0 m() {
        throw new UnsupportedOperationException();
    }

    public void n(c0 c0Var) {
        throw new UnsupportedOperationException();
    }

    public c0 o() {
        throw new UnsupportedOperationException();
    }

    public long p() {
        throw new UnsupportedOperationException();
    }
}
