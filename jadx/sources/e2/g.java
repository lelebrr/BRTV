package e2;

import i9.p;
import java.io.IOException;
import okio.Okio;
import t9.s;
import w8.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends c9.i implements p {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f6461b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(h hVar, a9.d dVar) {
        super(dVar);
        this.f6461b = hVar;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        return new g(this.f6461b, dVar);
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        return ((g) create((s) obj, (a9.d) obj2)).invokeSuspend(l.f10832a);
    }

    @Override // c9.a
    public final Object invokeSuspend(Object obj) {
        o9.d.I(obj);
        h hVar = this.f6461b;
        synchronized (hVar) {
            if (!hVar.f6472l || hVar.f6473m) {
                return l.f10832a;
            }
            try {
                hVar.j();
            } catch (IOException unused) {
                hVar.f6474n = true;
            }
            try {
                if (hVar.f6469i >= 2000) {
                    hVar.l();
                }
            } catch (IOException unused2) {
                hVar.f6475o = true;
                hVar.f6470j = Okio.buffer(Okio.blackhole());
            }
            return l.f10832a;
        }
    }
}
