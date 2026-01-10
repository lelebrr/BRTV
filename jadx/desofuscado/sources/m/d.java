package m;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends e implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public c f8105a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f8106b = true;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f f8107c;

    public d(f fVar) {
        this.f8107c = fVar;
    }

    @Override // m.e
    public final void a(c cVar) {
        c cVar2 = this.f8105a;
        if (cVar == cVar2) {
            c cVar3 = cVar2.d;
            this.f8105a = cVar3;
            this.f8106b = cVar3 == null;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f8106b) {
            return this.f8107c.f8108a != null;
        }
        c cVar = this.f8105a;
        return (cVar == null || cVar.f8104c == null) ? false : true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f8106b) {
            this.f8106b = false;
            this.f8105a = this.f8107c.f8108a;
        } else {
            c cVar = this.f8105a;
            this.f8105a = cVar != null ? cVar.f8104c : null;
        }
        return this.f8105a;
    }
}
