package h2;

import coil.memory.MemoryCache$Key;
import i9.p;
import m2.m;
import t9.s;
import w8.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends c9.i implements p {

    /* renamed from: b, reason: collision with root package name */
    public int f7209b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ i f7210c;
    public final /* synthetic */ m2.i d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7211e;
    public final /* synthetic */ m f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ c2.d f7212g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ MemoryCache$Key f7213h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ k f7214i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(i iVar, m2.i iVar2, Object obj, m mVar, c2.d dVar, MemoryCache$Key memoryCache$Key, k kVar, a9.d dVar2) {
        super(dVar2);
        this.f7210c = iVar;
        this.d = iVar2;
        this.f7211e = obj;
        this.f = mVar;
        this.f7212g = dVar;
        this.f7213h = memoryCache$Key;
        this.f7214i = kVar;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        return new g(this.f7210c, this.d, this.f7211e, this.f, this.f7212g, this.f7213h, this.f7214i, dVar);
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        return ((g) create((s) obj, (a9.d) obj2)).invokeSuspend(l.f10832a);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0066  */
    @Override // c9.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 229
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h2.g.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
