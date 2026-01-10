package q1;

import android.content.Context;
import android.media.MediaRoute2ProviderService;
import android.media.RouteDiscoveryPreference;
import android.media.RoutingSessionInfo;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import androidx.mediarouter.media.MediaRouteProviderService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v extends MediaRoute2ProviderService {
    public static final /* synthetic */ int f = 0;

    /* renamed from: b, reason: collision with root package name */
    public final h0 f9163b;

    /* renamed from: e, reason: collision with root package name */
    public volatile androidx.appcompat.app.r0 f9165e;

    /* renamed from: a, reason: collision with root package name */
    public final Object f9162a = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final p.e f9164c = new p.e(0);
    public final SparseArray d = new SparseArray();

    static {
        Log.isLoggable("MR2ProviderService", 3);
    }

    public v(h0 h0Var) {
        this.f9163b = h0Var;
    }

    public final String a(u uVar) {
        String string;
        synchronized (this.f9162a) {
            do {
                string = UUID.randomUUID().toString();
            } while (this.f9164c.containsKey(string));
            uVar.f9156i = string;
            this.f9164c.put(string, uVar);
        }
        return string;
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final c0 b(String str) {
        ArrayList arrayList;
        synchronized (this.f9162a) {
            arrayList = new ArrayList(this.f9164c.values());
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            u uVar = (u) it.next();
            g0 g0Var = (g0) uVar.f9153e.get();
            c0 c0Var = g0Var != null ? (c0) g0Var.f8980i.get(str) : (c0) uVar.f9150a.get(str);
            if (c0Var != null) {
                return c0Var;
            }
        }
        return null;
    }

    public final b0 c(String str) {
        b0 b0Var;
        synchronized (this.f9162a) {
            u uVar = (u) this.f9164c.get(str);
            b0Var = uVar == null ? null : uVar.f9151b;
        }
        return b0Var;
    }

    public final w d(String str, String str2) {
        MediaRouteProviderService mediaRouteProviderService = this.f9163b.f9030a;
        if ((mediaRouteProviderService == null ? null : mediaRouteProviderService.d) == null || this.f9165e == null) {
            Log.w("MR2ProviderService", str2.concat(": no provider info"));
            return null;
        }
        for (w wVar : (List) this.f9165e.f353c) {
            if (TextUtils.equals(wVar.f(), str)) {
                return wVar;
            }
        }
        Log.w("MR2ProviderService", str2 + ": Couldn't find a route : " + str);
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v2, types: [q1.b0] */
    public final void e(g0 g0Var, c0 c0Var, int i6, String str, String str2) {
        int i10;
        r rVar;
        w wVarD = d(str2, "notifyRouteControllerAdded");
        if (wVarD == null) {
            return;
        }
        if (c0Var instanceof b0) {
            rVar = (b0) c0Var;
            i10 = 6;
        } else {
            i10 = !wVarD.d().isEmpty() ? 2 : 0;
            rVar = new r(str2, c0Var);
        }
        u uVar = new u(this, rVar, 0L, i10, g0Var);
        uVar.f9157j = str2;
        String strA = a(uVar);
        this.d.put(i6, strA);
        RoutingSessionInfo.Builder volumeMax = j.e(strA, str).setName(wVarD.g()).setVolumeHandling(wVarD.i()).setVolume(wVarD.h()).setVolumeMax(wVarD.j());
        if (wVarD.d().isEmpty()) {
            volumeMax.addSelectedRoute(str2);
        } else {
            Iterator it = wVarD.d().iterator();
            while (it.hasNext()) {
                volumeMax.addSelectedRoute((String) it.next());
            }
        }
        uVar.b(volumeMax.build());
    }

    public final void f(int i6) {
        u uVar;
        String str = (String) this.d.get(i6);
        if (str == null) {
            return;
        }
        this.d.remove(i6);
        synchronized (this.f9162a) {
            uVar = (u) this.f9164c.remove(str);
        }
        if (uVar != null) {
            uVar.a(false);
        }
    }

    public final void g(b0 b0Var, w wVar, ArrayList arrayList) {
        u uVar;
        synchronized (this.f9162a) {
            try {
                Iterator it = ((d7.g0) this.f9164c.entrySet()).iterator();
                while (true) {
                    p.c cVar = (p.c) it;
                    if (!cVar.hasNext()) {
                        uVar = null;
                        break;
                    } else {
                        cVar.next();
                        uVar = (u) cVar.getValue();
                        if (uVar.f9151b == b0Var) {
                        }
                    }
                }
            } finally {
            }
        }
        if (uVar == null) {
            Log.w("MR2ProviderService", "setDynamicRouteDescriptor: Ignoring unknown controller");
        } else {
            uVar.d(wVar, arrayList);
        }
    }

    @Override // android.media.MediaRoute2ProviderService
    public final void onCreateSession(long j10, String str, String str2, Bundle bundle) {
        int i6;
        b0 rVar;
        MediaRouteProviderService mediaRouteProviderService = this.f9163b.f9030a;
        e0 e0Var = mediaRouteProviderService == null ? null : mediaRouteProviderService.d;
        w wVarD = d(str2, "onCreateSession");
        if (wVarD == null) {
            notifyRequestFailed(j10, 3);
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("controlHints", bundle);
        bundle2.putString("clientPackageName", str);
        d0 d0Var = new d0(bundle2);
        if (this.f9165e.f352b) {
            b0 b0VarA = e0Var.a(str2, d0Var);
            if (b0VarA == null) {
                Log.w("MR2ProviderService", "onCreateSession: Couldn't create a dynamic controller");
                notifyRequestFailed(j10, 1);
                return;
            } else {
                rVar = b0VarA;
                i6 = 7;
            }
        } else {
            c0 c0VarD = e0Var.d(str2, d0Var);
            if (c0VarD == null) {
                Log.w("MR2ProviderService", "onCreateSession: Couldn't create a controller");
                notifyRequestFailed(j10, 1);
                return;
            } else {
                i6 = !wVarD.d().isEmpty() ? 3 : 1;
                rVar = new r(str2, c0VarD);
            }
        }
        rVar.f();
        u uVar = new u(this, rVar, j10, i6, null);
        RoutingSessionInfo.Builder volumeMax = j.e(a(uVar), str).setName(wVarD.g()).setVolumeHandling(wVarD.i()).setVolume(wVarD.h()).setVolumeMax(wVarD.j());
        if (wVarD.d().isEmpty()) {
            volumeMax.addSelectedRoute(str2);
        } else {
            Iterator it = wVarD.d().iterator();
            while (it.hasNext()) {
                volumeMax.addSelectedRoute((String) it.next());
            }
        }
        RoutingSessionInfo routingSessionInfoBuild = volumeMax.build();
        uVar.b(routingSessionInfoBuild);
        if ((i6 & 4) == 0) {
            if ((i6 & 2) != 0) {
                uVar.c(str2, null, routingSessionInfoBuild, d0Var);
            } else {
                uVar.f9150a.put(str2, uVar.f9151b);
            }
        }
        h0 h0Var = this.f9163b;
        rVar.q(u7.d.m(h0Var.f9030a.getApplicationContext()), h0Var.f9011j);
    }

    @Override // android.media.MediaRoute2ProviderService
    public final void onDeselectRoute(long j10, String str, String str2) {
        if (getSessionInfo(str) == null) {
            Log.w("MR2ProviderService", "onDeselectRoute: Couldn't find a session");
            notifyRequestFailed(j10, 4);
        } else {
            if (d(str2, "onDeselectRoute") == null) {
                notifyRequestFailed(j10, 3);
                return;
            }
            b0 b0VarC = c(str);
            if (b0VarC != null) {
                b0VarC.o(str2);
            } else {
                Log.w("MR2ProviderService", "onDeselectRoute: Couldn't find a controller");
                notifyRequestFailed(j10, 3);
            }
        }
    }

    @Override // android.media.MediaRoute2ProviderService
    public final void onDiscoveryPreferenceChanged(RouteDiscoveryPreference routeDiscoveryPreference) {
        l0 l0Var;
        h0 h0Var = this.f9163b;
        ArrayList arrayList = new ArrayList();
        for (String str : routeDiscoveryPreference.getPreferredFeatures()) {
            str.getClass();
            switch (str) {
                case "android.media.route.feature.REMOTE_AUDIO_PLAYBACK":
                    str = "android.media.intent.category.REMOTE_AUDIO_PLAYBACK";
                    break;
                case "android.media.route.feature.REMOTE_VIDEO_PLAYBACK":
                    str = "android.media.intent.category.REMOTE_VIDEO_PLAYBACK";
                    break;
                case "android.media.route.feature.REMOTE_PLAYBACK":
                    str = "android.media.intent.category.REMOTE_PLAYBACK";
                    break;
                case "android.media.route.feature.LIVE_AUDIO":
                    str = "android.media.intent.category.LIVE_AUDIO";
                    break;
                case "android.media.route.feature.LIVE_VIDEO":
                    str = "android.media.intent.category.LIVE_VIDEO";
                    break;
            }
            arrayList.add(str);
        }
        ArrayList<String> arrayList2 = null;
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str2 == null) {
                    throw new IllegalArgumentException("category must not be null");
                }
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                }
                if (!arrayList2.contains(str2)) {
                    arrayList2.add(str2);
                }
            }
        }
        if (arrayList2 == null) {
            l0Var = l0.f9055c;
        } else {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("controlCategories", arrayList2);
            l0Var = new l0(bundle, arrayList2);
        }
        x xVar = new x(l0Var, routeDiscoveryPreference.shouldPerformActiveScan());
        h0Var.getClass();
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (!Objects.equals(h0Var.d, xVar) || xVar.b()) {
            h0Var.d = xVar;
            h0Var.f9033e = jElapsedRealtime;
            h0Var.h();
        }
    }

    @Override // android.media.MediaRoute2ProviderService
    public final void onReleaseSession(long j10, String str) {
        u uVar;
        if (getSessionInfo(str) == null) {
            return;
        }
        synchronized (this.f9162a) {
            uVar = (u) this.f9164c.remove(str);
        }
        if (uVar != null) {
            uVar.a(true);
        } else {
            Log.w("MR2ProviderService", "onReleaseSession: Couldn't find a session");
            notifyRequestFailed(j10, 4);
        }
    }

    @Override // android.media.MediaRoute2ProviderService
    public final void onSelectRoute(long j10, String str, String str2) {
        if (getSessionInfo(str) == null) {
            Log.w("MR2ProviderService", "onSelectRoute: Couldn't find a session");
            notifyRequestFailed(j10, 4);
        } else {
            if (d(str2, "onSelectRoute") == null) {
                notifyRequestFailed(j10, 3);
                return;
            }
            b0 b0VarC = c(str);
            if (b0VarC != null) {
                b0VarC.n(str2);
            } else {
                Log.w("MR2ProviderService", "onSelectRoute: Couldn't find a controller");
                notifyRequestFailed(j10, 3);
            }
        }
    }

    @Override // android.media.MediaRoute2ProviderService
    public final void onSetRouteVolume(long j10, String str, int i6) {
        c0 c0VarB = b(str);
        if (c0VarB != null) {
            c0VarB.g(i6);
            return;
        }
        Log.w("MR2ProviderService", "onSetRouteVolume: Couldn't find a controller for routeId=" + str);
        notifyRequestFailed(j10, 3);
    }

    @Override // android.media.MediaRoute2ProviderService
    public final void onSetSessionVolume(long j10, String str, int i6) {
        if (getSessionInfo(str) == null) {
            Log.w("MR2ProviderService", "onSetSessionVolume: Couldn't find a session");
            notifyRequestFailed(j10, 4);
            return;
        }
        b0 b0VarC = c(str);
        if (b0VarC != null) {
            b0VarC.g(i6);
        } else {
            Log.w("MR2ProviderService", "onSetSessionVolume: Couldn't find a controller");
            notifyRequestFailed(j10, 3);
        }
    }

    @Override // android.media.MediaRoute2ProviderService
    public final void onTransferToRoute(long j10, String str, String str2) {
        if (getSessionInfo(str) == null) {
            Log.w("MR2ProviderService", "onTransferToRoute: Couldn't find a session");
            notifyRequestFailed(j10, 4);
        } else {
            if (d(str2, "onTransferToRoute") == null) {
                notifyRequestFailed(j10, 3);
                return;
            }
            b0 b0VarC = c(str);
            if (b0VarC != null) {
                b0VarC.p(Collections.singletonList(str2));
            } else {
                Log.w("MR2ProviderService", "onTransferToRoute: Couldn't find a controller");
                notifyRequestFailed(j10, 3);
            }
        }
    }
}
