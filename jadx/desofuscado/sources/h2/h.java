package h2;

import i9.p;
import java.util.List;
import m2.m;
import t9.s;
import w8.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends c9.i implements p {

    /* renamed from: b, reason: collision with root package name */
    public List f7215b;

    /* renamed from: c, reason: collision with root package name */
    public m f7216c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f7217e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public /* synthetic */ Object f7218g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ i f7219h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ a f7220i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ m f7221j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ List f7222k;

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ c2.d f7223l;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ m2.i f7224m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(i iVar, a aVar, m mVar, List list, c2.d dVar, m2.i iVar2, a9.d dVar2) {
        super(dVar2);
        this.f7219h = iVar;
        this.f7220i = aVar;
        this.f7221j = mVar;
        this.f7222k = list;
        this.f7223l = dVar;
        this.f7224m = iVar2;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        h hVar = new h(this.f7219h, this.f7220i, this.f7221j, this.f7222k, this.f7223l, this.f7224m, dVar);
        hVar.f7218g = obj;
        return hVar;
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        return ((h) create((s) obj, (a9.d) obj2)).invokeSuspend(l.f10832a);
    }

    /* JADX WARN: Path cross not found for [B:16:0x005d, B:10:0x0045], limit reached: 52 */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0210  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x01e1 -> B:43:0x01e5). Please report as a decompilation issue!!! */
    @Override // c9.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r22) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: h2.h.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
