package q1;

import android.media.MediaRouter;
import android.os.Bundle;
import android.view.Display;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y0 extends MediaRouter.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final e1 f9184a;

    public y0(e1 e1Var) {
        this.f9184a = e1Var;
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        e1 e1Var = this.f9184a;
        if (e1Var.h(routeInfo)) {
            e1Var.r();
        }
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        int i6;
        e1 e1Var = this.f9184a;
        e1Var.getClass();
        if (e1.m(routeInfo) != null || (i6 = e1Var.i(routeInfo)) < 0) {
            return;
        }
        c1 c1Var = (c1) e1Var.f8972q.get(i6);
        a0.f fVar = new a0.f(c1Var.f8946b, e1Var.l(c1Var.f8945a));
        e1Var.n(c1Var, fVar);
        c1Var.f8947c = fVar.c();
        e1Var.r();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteGrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i6) {
        this.f9184a.getClass();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        e1 e1Var = this.f9184a;
        int i6 = e1Var.i(routeInfo);
        if (i6 >= 0) {
            c1 c1Var = (c1) e1Var.f8972q.get(i6);
            Display presentationDisplay = routeInfo.getPresentationDisplay();
            int displayId = presentationDisplay != null ? presentationDisplay.getDisplayId() : -1;
            if (displayId != c1Var.f8947c.f9170a.getInt("presentationDisplayId", -1)) {
                w wVar = c1Var.f8947c;
                new ArrayList();
                new ArrayList();
                new HashSet();
                if (wVar == null) {
                    throw new IllegalArgumentException("descriptor must not be null");
                }
                Bundle bundle = new Bundle(wVar.f9170a);
                ArrayList arrayListD = wVar.d();
                ArrayList arrayListB = wVar.b();
                HashSet hashSetA = wVar.a();
                bundle.putInt("presentationDisplayId", displayId);
                bundle.putParcelableArrayList("controlFilters", new ArrayList<>(arrayListB));
                bundle.putStringArrayList("groupMemberIds", new ArrayList<>(arrayListD));
                bundle.putStringArrayList("allowedPackages", new ArrayList<>(hashSetA));
                c1Var.f8947c = new w(bundle);
                e1Var.r();
            }
        }
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        int i6;
        e1 e1Var = this.f9184a;
        e1Var.getClass();
        if (e1.m(routeInfo) != null || (i6 = e1Var.i(routeInfo)) < 0) {
            return;
        }
        e1Var.f8972q.remove(i6);
        e1Var.r();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteSelected(MediaRouter mediaRouter, int i6, MediaRouter.RouteInfo routeInfo) {
        s0 s0Var;
        e1 e1Var = this.f9184a;
        if (routeInfo != e1Var.f8965j.getSelectedRoute(8388611)) {
            return;
        }
        d1 d1VarM = e1.m(routeInfo);
        if (d1VarM != null) {
            d1VarM.f8951a.l(false);
            return;
        }
        int i10 = e1Var.i(routeInfo);
        if (i10 >= 0) {
            String str = ((c1) e1Var.f8972q.get(i10)).f8946b;
            h hVar = e1Var.f8964i;
            hVar.f8986a.removeMessages(262);
            r0 r0VarD = hVar.d(hVar.f9002s);
            if (r0VarD != null) {
                Iterator it = r0VarD.f9123b.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        s0Var = null;
                        break;
                    } else {
                        s0Var = (s0) it.next();
                        if (s0Var.f9130b.equals(str)) {
                            break;
                        }
                    }
                }
                if (s0Var != null) {
                    s0Var.l(false);
                }
            }
        }
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteUngrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
        this.f9184a.getClass();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteUnselected(MediaRouter mediaRouter, int i6, MediaRouter.RouteInfo routeInfo) {
        this.f9184a.getClass();
    }

    @Override // android.media.MediaRouter.Callback
    public final void onRouteVolumeChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
        int i6;
        e1 e1Var = this.f9184a;
        e1Var.getClass();
        if (e1.m(routeInfo) != null || (i6 = e1Var.i(routeInfo)) < 0) {
            return;
        }
        c1 c1Var = (c1) e1Var.f8972q.get(i6);
        int volume = routeInfo.getVolume();
        if (volume != c1Var.f8947c.h()) {
            w wVar = c1Var.f8947c;
            new ArrayList();
            new ArrayList();
            new HashSet();
            if (wVar == null) {
                throw new IllegalArgumentException("descriptor must not be null");
            }
            Bundle bundle = new Bundle(wVar.f9170a);
            ArrayList arrayListD = wVar.d();
            ArrayList arrayListB = wVar.b();
            HashSet hashSetA = wVar.a();
            bundle.putInt("volume", volume);
            bundle.putParcelableArrayList("controlFilters", new ArrayList<>(arrayListB));
            bundle.putStringArrayList("groupMemberIds", new ArrayList<>(arrayListD));
            bundle.putStringArrayList("allowedPackages", new ArrayList<>(hashSetA));
            c1Var.f8947c = new w(bundle);
            e1Var.r();
        }
    }
}
