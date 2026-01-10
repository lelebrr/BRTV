package q1;

import android.media.RoutingSessionInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.util.Log;
import android.util.SparseArray;
import androidx.mediarouter.media.MediaRouteProviderService;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u {

    /* renamed from: b, reason: collision with root package name */
    public final b0 f9151b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9152c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final WeakReference f9153e;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9154g;

    /* renamed from: h, reason: collision with root package name */
    public RoutingSessionInfo f9155h;

    /* renamed from: i, reason: collision with root package name */
    public String f9156i;

    /* renamed from: j, reason: collision with root package name */
    public String f9157j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ v f9158k;

    /* renamed from: a, reason: collision with root package name */
    public final p.e f9150a = new p.e(0);
    public boolean f = false;

    public u(v vVar, b0 b0Var, long j10, int i6, g0 g0Var) {
        this.f9158k = vVar;
        this.f9151b = b0Var;
        this.f9152c = j10;
        this.d = i6;
        this.f9153e = new WeakReference(g0Var);
    }

    public final void a(boolean z7) {
        g0 g0Var;
        if (this.f9154g) {
            return;
        }
        int i6 = this.d;
        if ((i6 & 3) == 3) {
            c(null, this.f9155h, null, d0.f8949b);
        }
        if (z7) {
            c0 c0Var = this.f9151b;
            c0Var.i(2);
            c0Var.e();
            if ((i6 & 1) == 0 && (g0Var = (g0) this.f9153e.get()) != null) {
                if (c0Var instanceof r) {
                    c0Var = ((r) c0Var).f9121g;
                }
                String str = this.f9157j;
                SparseArray sparseArray = g0Var.f;
                int iIndexOfValue = sparseArray.indexOfValue(c0Var);
                int iKeyAt = iIndexOfValue < 0 ? -1 : sparseArray.keyAt(iIndexOfValue);
                g0Var.f(iKeyAt);
                if (g0Var.f9023b < 4) {
                    g0Var.f8982k.put(str, Integer.valueOf(iKeyAt));
                    g0Var.f8981j.postDelayed(new androidx.appcompat.app.m0(g0Var, 14, str), 5000L);
                    androidx.appcompat.app.r0 r0Var = g0Var.f8983l.f9030a.d.f8960g;
                    if (r0Var != null) {
                        MediaRouteProviderService.e(g0Var.f9022a, 5, 0, 0, g0Var.a(r0Var), null);
                    }
                } else if (iKeyAt < 0) {
                    Log.w("MediaRouteProviderSrv", "releaseControllerByProvider: Can't find the controller. route ID=" + str);
                } else {
                    MediaRouteProviderService.e(g0Var.f9022a, 8, 0, iKeyAt, null, null);
                }
            }
        }
        this.f9154g = true;
        this.f9158k.notifySessionReleased(this.f9156i);
    }

    public final void b(RoutingSessionInfo routingSessionInfo) {
        if (this.f9155h != null) {
            Log.w("MR2ProviderService", "setSessionInfo: This shouldn't be called after sessionInfo is set");
            return;
        }
        Messenger messenger = new Messenger(new s(this.f9158k, this.f9156i));
        RoutingSessionInfo.Builder builderD = j.d(routingSessionInfo);
        Bundle bundle = new Bundle();
        bundle.putParcelable("androidx.mediarouter.media.KEY_MESSENGER", messenger);
        bundle.putString("androidx.mediarouter.media.KEY_SESSION_NAME", routingSessionInfo.getName() != null ? routingSessionInfo.getName().toString() : null);
        this.f9155h = builderD.setControlHints(bundle).build();
    }

    public final void c(String str, RoutingSessionInfo routingSessionInfo, RoutingSessionInfo routingSessionInfo2, d0 d0Var) {
        p.e eVar;
        c0 c0Var;
        List<String> listEmptyList = routingSessionInfo == null ? Collections.emptyList() : routingSessionInfo.getSelectedRoutes();
        List listEmptyList2 = routingSessionInfo2 == null ? Collections.emptyList() : routingSessionInfo2.getSelectedRoutes();
        Iterator it = listEmptyList2.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            eVar = this.f9150a;
            if (!zHasNext) {
                break;
            }
            String str2 = (String) it.next();
            g0 g0Var = (g0) this.f9153e.get();
            if ((g0Var != null ? (c0) g0Var.f8980i.get(str2) : (c0) eVar.get(str2)) == null) {
                c0 c0VarC = (c0) eVar.get(str2);
                if (c0VarC == null) {
                    v vVar = this.f9158k;
                    if (str == null) {
                        MediaRouteProviderService mediaRouteProviderService = vVar.f9163b.f9030a;
                        c0VarC = (mediaRouteProviderService != null ? mediaRouteProviderService.d : null).d(str2, d0Var);
                    } else {
                        MediaRouteProviderService mediaRouteProviderService2 = vVar.f9163b.f9030a;
                        c0VarC = (mediaRouteProviderService2 != null ? mediaRouteProviderService2.d : null).c(str2, str);
                    }
                    if (c0VarC != null) {
                        eVar.put(str2, c0VarC);
                    }
                }
                if (c0VarC != null) {
                    c0VarC.f();
                }
            }
        }
        for (String str3 : listEmptyList) {
            if (!listEmptyList2.contains(str3) && (c0Var = (c0) eVar.remove(str3)) != null) {
                c0Var.i(0);
                c0Var.e();
            }
        }
    }

    public final void d(w wVar, ArrayList arrayList) {
        RoutingSessionInfo routingSessionInfo = this.f9155h;
        if (routingSessionInfo == null) {
            Log.w("MR2ProviderService", "updateSessionInfo: mSessionInfo is null. This shouldn't happen.");
            return;
        }
        v vVar = this.f9158k;
        if (wVar != null && !wVar.f9170a.getBoolean("enabled", true)) {
            vVar.onReleaseSession(0L, this.f9156i);
            return;
        }
        RoutingSessionInfo.Builder builderD = j.d(routingSessionInfo);
        if (wVar != null) {
            this.f9157j = wVar.f();
            builderD.setName(wVar.g()).setVolume(wVar.h()).setVolumeMax(wVar.j()).setVolumeHandling(wVar.i());
            builderD.clearSelectedRoutes();
            if (wVar.d().isEmpty()) {
                builderD.addSelectedRoute(this.f9157j);
            } else {
                Iterator it = wVar.d().iterator();
                while (it.hasNext()) {
                    builderD.addSelectedRoute((String) it.next());
                }
            }
            Bundle controlHints = routingSessionInfo.getControlHints();
            if (controlHints == null) {
                Log.w("MR2ProviderService", "updateSessionInfo: controlHints is null. This shouldn't happen.");
                controlHints = new Bundle();
            }
            controlHints.putString("androidx.mediarouter.media.KEY_SESSION_NAME", wVar.g());
            controlHints.putBundle("androidx.mediarouter.media.KEY_GROUP_ROUTE", wVar.f9170a);
            builderD.setControlHints(controlHints);
        }
        this.f9155h = builderD.build();
        if (arrayList != null && !arrayList.isEmpty()) {
            builderD.clearSelectedRoutes();
            builderD.clearSelectableRoutes();
            builderD.clearDeselectableRoutes();
            builderD.clearTransferableRoutes();
            Iterator it2 = arrayList.iterator();
            boolean z7 = false;
            while (it2.hasNext()) {
                z zVar = (z) it2.next();
                String strF = zVar.f9185a.f();
                int i6 = zVar.f9186b;
                if (i6 == 2 || i6 == 3) {
                    builderD.addSelectedRoute(strF);
                    z7 = true;
                }
                if (zVar.d) {
                    builderD.addSelectableRoute(strF);
                }
                if (zVar.f9187c) {
                    builderD.addDeselectableRoute(strF);
                }
                if (zVar.f9188e) {
                    builderD.addTransferableRoute(strF);
                }
            }
            if (z7) {
                this.f9155h = builderD.build();
            }
        }
        int i10 = v.f;
        if ((this.d & 5) == 5 && wVar != null) {
            c(wVar.f(), routingSessionInfo, this.f9155h, d0.f8949b);
        }
        boolean z10 = this.f;
        if (z10) {
            vVar.notifySessionUpdated(this.f9155h);
        } else if (z10) {
            Log.w("MR2ProviderService", "notifySessionCreated: Routing session is already created.");
        } else {
            this.f = true;
            vVar.notifySessionCreated(this.f9152c, this.f9155h);
        }
    }
}
