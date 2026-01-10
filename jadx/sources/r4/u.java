package r4;

import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.x0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9580a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a f9581b;

    public /* synthetic */ u(a aVar, int i6) {
        this.f9580a = i6;
        this.f9581b = aVar;
    }

    public final void a(y4.l lVar) {
        k kVar = (k) lVar;
        switch (this.f9580a) {
            case 0:
                a aVar = this.f9581b;
                aVar.getClass();
                Status statusH = kVar.h();
                int i6 = statusH.f3925a;
                if (i6 != 0) {
                    StringBuilder sbU = a.e.u(i6, "Error fetching queue item ids, statusCode=", ", statusMessage=");
                    sbU.append(statusH.f3926b);
                    v4.b bVar = aVar.f9513a;
                    Log.w(bVar.f10671a, bVar.d(sbU.toString(), new Object[0]));
                }
                aVar.f9522l = null;
                if (!aVar.f9518h.isEmpty()) {
                    x0 x0Var = aVar.f9519i;
                    o oVar = aVar.f9520j;
                    x0Var.removeCallbacks(oVar);
                    x0Var.postDelayed(oVar, 500L);
                    break;
                }
                break;
            default:
                a aVar2 = this.f9581b;
                aVar2.getClass();
                Status statusH2 = kVar.h();
                int i10 = statusH2.f3925a;
                if (i10 != 0) {
                    StringBuilder sbU2 = a.e.u(i10, "Error fetching queue items, statusCode=", ", statusMessage=");
                    sbU2.append(statusH2.f3926b);
                    v4.b bVar2 = aVar2.f9513a;
                    Log.w(bVar2.f10671a, bVar2.d(sbU2.toString(), new Object[0]));
                }
                aVar2.f9521k = null;
                if (!aVar2.f9518h.isEmpty()) {
                    x0 x0Var2 = aVar2.f9519i;
                    o oVar2 = aVar2.f9520j;
                    x0Var2.removeCallbacks(oVar2);
                    x0Var2.postDelayed(oVar2, 500L);
                    break;
                }
                break;
        }
    }
}
