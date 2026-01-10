package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class o implements a9.h {

    /* renamed from: a, reason: collision with root package name */
    public final j9.j f10219a;

    /* renamed from: b, reason: collision with root package name */
    public final a9.h f10220b;

    /* JADX WARN: Multi-variable type inference failed */
    public o(a9.h hVar, i9.l lVar) {
        j9.i.f(hVar, "baseKey");
        this.f10219a = (j9.j) lVar;
        this.f10220b = hVar instanceof o ? ((o) hVar).f10220b : hVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [i9.l, j9.j] */
    public final a9.g a(p pVar) {
        return (a9.g) this.f10219a.invoke(pVar);
    }
}
