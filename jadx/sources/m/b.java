package m;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends e implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public c f8099a;

    /* renamed from: b, reason: collision with root package name */
    public c f8100b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8101c;

    public b(c cVar, c cVar2, int i6) {
        this.f8101c = i6;
        this.f8099a = cVar2;
        this.f8100b = cVar;
    }

    @Override // m.e
    public final void a(c cVar) {
        c cVar2;
        c cVarB = null;
        if (this.f8099a == cVar && cVar == this.f8100b) {
            this.f8100b = null;
            this.f8099a = null;
        }
        c cVar3 = this.f8099a;
        if (cVar3 == cVar) {
            switch (this.f8101c) {
                case 0:
                    cVar2 = cVar3.d;
                    break;
                default:
                    cVar2 = cVar3.f8104c;
                    break;
            }
            this.f8099a = cVar2;
        }
        c cVar4 = this.f8100b;
        if (cVar4 == cVar) {
            c cVar5 = this.f8099a;
            if (cVar4 != cVar5 && cVar5 != null) {
                cVarB = b(cVar4);
            }
            this.f8100b = cVarB;
        }
    }

    public final c b(c cVar) {
        switch (this.f8101c) {
            case 0:
                return cVar.f8104c;
            default:
                return cVar.d;
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8100b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        c cVar = this.f8100b;
        c cVar2 = this.f8099a;
        this.f8100b = (cVar == cVar2 || cVar2 == null) ? null : b(cVar);
        return cVar;
    }
}
