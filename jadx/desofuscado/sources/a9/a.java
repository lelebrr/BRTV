package a9;

import i9.p;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a implements g {

    /* renamed from: a, reason: collision with root package name */
    public final h f174a;

    public a(h hVar) {
        this.f174a = hVar;
    }

    @Override // a9.i
    public final Object a(Object obj, p pVar) {
        return pVar.invoke(obj, this);
    }

    @Override // a9.i
    public i c(h hVar) {
        return com.bumptech.glide.d.x(this, hVar);
    }

    @Override // a9.i
    public g e(h hVar) {
        return com.bumptech.glide.d.i(this, hVar);
    }

    @Override // a9.i
    public final i f(i iVar) {
        return com.bumptech.glide.d.A(this, iVar);
    }

    @Override // a9.g
    public final h getKey() {
        return this.f174a;
    }
}
