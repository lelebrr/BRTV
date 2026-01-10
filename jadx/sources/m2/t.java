package m2;

import androidx.lifecycle.v;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t extends c9.i implements i9.p {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f8256b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(u uVar, a9.d dVar) {
        super(dVar);
        this.f8256b = uVar;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        return new t(this.f8256b, dVar);
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        t tVar = (t) create((t9.s) obj, (a9.d) obj2);
        w8.l lVar = w8.l.f10832a;
        tVar.invokeSuspend(lVar);
        return lVar;
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        o9.d.I(obj);
        u uVar = this.f8256b;
        s sVar = uVar.d;
        if (sVar != null) {
            t9.u.c(sVar.f8255e);
            o2.a aVar = sVar.f8254c;
            boolean z7 = aVar instanceof v;
            androidx.lifecycle.p pVar = sVar.d;
            if (z7) {
                pVar.c(aVar);
            }
            pVar.c(sVar);
        }
        uVar.d = null;
        return w8.l.f10832a;
    }
}
