package p8;

import q8.q;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends a {

    /* renamed from: k, reason: collision with root package name */
    public final i8.f f8924k;

    /* renamed from: l, reason: collision with root package name */
    public final int f8925l;

    public e(o9.d dVar, i8.f fVar, int i6) {
        super(dVar);
        this.f8924k = fVar;
        this.f8925l = i6;
    }

    @Override // o9.d
    public final void G(i8.c cVar) {
        i8.f fVar = this.f8924k;
        boolean z7 = fVar instanceof q;
        o9.d dVar = this.f8913j;
        if (z7) {
            dVar.F(cVar);
        } else {
            dVar.F(new d(cVar, fVar.a(), this.f8925l));
        }
    }
}
