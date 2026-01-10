package x8;

import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d extends e implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final e f11089a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11090b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11091c;

    public d(e eVar, int i6, int i10) {
        j9.i.f(eVar, "list");
        this.f11089a = eVar;
        this.f11090b = i6;
        b bVar = e.Companion;
        int size = eVar.size();
        bVar.getClass();
        b.c(i6, i10, size);
        this.f11091c = i10 - i6;
    }

    @Override // java.util.List
    public final Object get(int i6) {
        b bVar = e.Companion;
        int i10 = this.f11091c;
        bVar.getClass();
        b.a(i6, i10);
        return this.f11089a.get(this.f11090b + i6);
    }

    @Override // x8.a
    public final int getSize() {
        return this.f11091c;
    }
}
