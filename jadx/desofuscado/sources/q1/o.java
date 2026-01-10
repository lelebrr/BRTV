package q1;

import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.text.TextUtils;
import android.util.Log;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends MediaRouter2.TransferCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p f9089a;

    public o(p pVar) {
        this.f9089a = pVar;
    }

    @Override // android.media.MediaRouter2.TransferCallback
    public final void onStop(MediaRouter2.RoutingController routingController) {
        c0 c0Var = (c0) this.f9089a.f9097k.remove(routingController);
        if (c0Var == null) {
            Log.w("MR2Provider", "onStop: No matching routeController found. routingController=" + routingController);
            return;
        }
        h hVar = this.f9089a.f9096j.f8933a;
        if (c0Var != hVar.f8989e) {
            int i6 = h.F;
            return;
        }
        s0 s0VarC = hVar.c();
        if (hVar.g() != s0VarC) {
            hVar.k(s0VarC, 2, true);
        }
    }

    @Override // android.media.MediaRouter2.TransferCallback
    public final void onTransfer(MediaRouter2.RoutingController routingController, MediaRouter2.RoutingController routingController2) {
        s0 s0Var;
        this.f9089a.f9097k.remove(routingController);
        if (routingController2 == this.f9089a.f9095i.getSystemController()) {
            h hVar = this.f9089a.f9096j.f8933a;
            s0 s0VarC = hVar.c();
            if (hVar.g() != s0VarC) {
                hVar.k(s0VarC, 3, true);
                return;
            }
            return;
        }
        List selectedRoutes = routingController2.getSelectedRoutes();
        if (selectedRoutes.isEmpty()) {
            Log.w("MR2Provider", "Selected routes are empty. This shouldn't happen.");
            return;
        }
        String id = androidx.media3.common.d.f(selectedRoutes.get(0)).getId();
        this.f9089a.f9097k.put(routingController2, new l(this.f9089a, routingController2, id));
        h hVar2 = this.f9089a.f9096j.f8933a;
        Iterator it = hVar2.f8992i.iterator();
        while (true) {
            if (!it.hasNext()) {
                s0Var = null;
                break;
            }
            s0Var = (s0) it.next();
            if (s0Var.c() == hVar2.f9001r && TextUtils.equals(id, s0Var.f9130b)) {
                break;
            }
        }
        if (s0Var == null) {
            Log.w("AxMediaRouter", "onSelectRoute: The target RouteInfo is not found for descriptorId=" + id);
        } else {
            hVar2.k(s0Var, 3, true);
        }
        this.f9089a.j(routingController2);
    }

    @Override // android.media.MediaRouter2.TransferCallback
    public final void onTransferFailure(MediaRoute2Info mediaRoute2Info) {
        Log.w("MR2Provider", "Transfer failed. requestedRoute=" + mediaRoute2Info);
    }
}
