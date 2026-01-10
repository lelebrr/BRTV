package k2;

import coil.memory.MemoryCache$Key;
import p.k;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends k {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ a7.f f7704g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(int i6, a7.f fVar) {
        super(i6);
        this.f7704g = fVar;
    }

    @Override // p.k
    public final void a(Object obj, Object obj2, Object obj3) {
        c cVar = (c) obj2;
        ((c6.b) this.f7704g.f169b).b((MemoryCache$Key) obj, cVar.f7701a, cVar.f7702b, cVar.f7703c);
    }

    @Override // p.k
    public final int h(Object obj, Object obj2) {
        return ((c) obj2).f7703c;
    }
}
