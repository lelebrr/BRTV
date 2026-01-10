package k0;

import java.util.ArrayList;
import p.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements m0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7684a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7685b;

    public /* synthetic */ d(int i6, Object obj) {
        this.f7684a = i6;
        this.f7685b = obj;
    }

    @Override // m0.a
    public final void accept(Object obj) {
        switch (this.f7684a) {
            case 0:
                e eVar = (e) obj;
                if (eVar == null) {
                    eVar = new e(-3);
                }
                ((a7.f) this.f7685b).G(eVar);
                return;
            default:
                e eVar2 = (e) obj;
                synchronized (f.f7690c) {
                    try {
                        l lVar = f.d;
                        ArrayList arrayList = (ArrayList) lVar.get((String) this.f7685b);
                        if (arrayList == null) {
                            return;
                        }
                        lVar.remove((String) this.f7685b);
                        for (int i6 = 0; i6 < arrayList.size(); i6++) {
                            ((m0.a) arrayList.get(i6)).accept(eVar2);
                        }
                        return;
                    } finally {
                    }
                }
        }
    }
}
