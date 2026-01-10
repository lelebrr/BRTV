package r4;

import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.ArrayDeque;
import java.util.HashSet;
import java.util.TimerTask;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends TimerTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9567a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f9568b;

    public /* synthetic */ o(int i6, Object obj) {
        this.f9567a = i6;
        this.f9568b = obj;
    }

    @Override // java.util.TimerTask, java.lang.Runnable
    public final void run() {
        BasePendingResult basePendingResultX;
        Object obj = this.f9568b;
        switch (this.f9567a) {
            case 0:
                p pVar = (p) obj;
                f fVar = pVar.f9572e;
                HashSet hashSet = pVar.f9569a;
                v4.b bVar = f.f9541k;
                fVar.E(hashSet);
                fVar.f9543b.postDelayed(this, pVar.f9570b);
                break;
            default:
                a aVar = (a) obj;
                ArrayDeque arrayDeque = aVar.f9518h;
                if (!arrayDeque.isEmpty() && aVar.f9521k == null && aVar.f9514b != 0) {
                    int[] iArrF = v4.a.f(arrayDeque);
                    f fVar2 = aVar.f9515c;
                    fVar2.getClass();
                    b5.l.b("Must be called from the main thread.");
                    if (fVar2.F()) {
                        i iVar = new i(fVar2, iArrF);
                        f.G(iVar);
                        basePendingResultX = iVar;
                    } else {
                        basePendingResultX = f.x();
                    }
                    aVar.f9521k = basePendingResultX;
                    basePendingResultX.h0(new u(aVar, 1));
                    arrayDeque.clear();
                    break;
                }
                break;
        }
    }
}
