package q1;

import android.content.Context;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.RouteDiscoveryPreference;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends e0 {

    /* renamed from: s, reason: collision with root package name */
    public static final /* synthetic */ int f9094s = 0;

    /* renamed from: i, reason: collision with root package name */
    public final MediaRouter2 f9095i;

    /* renamed from: j, reason: collision with root package name */
    public final a f9096j;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayMap f9097k;

    /* renamed from: l, reason: collision with root package name */
    public final MediaRouter2.RouteCallback f9098l;

    /* renamed from: m, reason: collision with root package name */
    public final o f9099m;

    /* renamed from: n, reason: collision with root package name */
    public final k f9100n;

    /* renamed from: o, reason: collision with root package name */
    public final androidx.media3.common.util.e f9101o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f9102p;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f9103q;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayMap f9104r;

    static {
        Log.isLoggable("MR2Provider", 3);
    }

    public p(Context context, a aVar) {
        super(context, null);
        this.f9097k = new ArrayMap();
        this.f9099m = new o(this);
        this.f9100n = new k(this);
        this.f9103q = new ArrayList();
        this.f9104r = new ArrayMap();
        this.f9095i = MediaRouter2.getInstance(context);
        this.f9096j = aVar;
        this.f9101o = new androidx.media3.common.util.e(new Handler(Looper.getMainLooper()));
        if (Build.VERSION.SDK_INT >= 34) {
            this.f9098l = new n(this, 1);
        } else {
            this.f9098l = new n(this, 0);
        }
    }

    @Override // q1.e0
    public final b0 a(String str, d0 d0Var) {
        Iterator it = this.f9097k.entrySet().iterator();
        while (it.hasNext()) {
            l lVar = (l) ((Map.Entry) it.next()).getValue();
            if (TextUtils.equals(str, lVar.f)) {
                return lVar;
            }
        }
        return null;
    }

    @Override // q1.e0
    public final c0 b(String str) {
        return new m((String) this.f9104r.get(str), null);
    }

    @Override // q1.e0
    public final c0 c(String str, String str2) {
        String str3 = (String) this.f9104r.get(str);
        for (l lVar : this.f9097k.values()) {
            w wVar = lVar.f9053o;
            if (TextUtils.equals(str2, wVar != null ? wVar.f() : lVar.f9045g.getId())) {
                return new m(str3, lVar);
            }
        }
        Log.w("MR2Provider", "Could not find the matching GroupRouteController. routeId=" + str + ", routeGroupId=" + str2);
        return new m(str3, null);
    }

    @Override // q1.e0
    public final void e(x xVar) {
        ArrayList<String> arrayList;
        l0 l0Var;
        RouteDiscoveryPreference routeDiscoveryPreferenceBuild;
        String str;
        int i6 = u0.f9159c == null ? 0 : u0.c().B;
        k kVar = this.f9100n;
        o oVar = this.f9099m;
        if (i6 <= 0) {
            this.f9095i.unregisterRouteCallback(this.f9098l);
            this.f9095i.unregisterTransferCallback(oVar);
            this.f9095i.unregisterControllerCallback(kVar);
            return;
        }
        x0 x0Var = u0.c().f9004u;
        boolean z7 = x0Var == null ? false : x0Var.f9178c;
        if (xVar == null) {
            xVar = new x(l0.f9055c, false);
        }
        xVar.a();
        ArrayList arrayListC = xVar.f9175b.c();
        if (!z7) {
            arrayListC.remove("android.media.intent.category.LIVE_AUDIO");
        } else if (!arrayListC.contains("android.media.intent.category.LIVE_AUDIO")) {
            arrayListC.add("android.media.intent.category.LIVE_AUDIO");
        }
        if (arrayListC.isEmpty()) {
            arrayList = null;
        } else {
            Iterator it = arrayListC.iterator();
            arrayList = null;
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (str2 == null) {
                    throw new IllegalArgumentException("category must not be null");
                }
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                }
                if (!arrayList.contains(str2)) {
                    arrayList.add(str2);
                }
            }
        }
        if (arrayList == null) {
            l0Var = l0.f9055c;
        } else {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("controlCategories", arrayList);
            l0Var = new l0(bundle, arrayList);
        }
        boolean zB = xVar.b();
        if (l0Var == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        Bundle bundle2 = new Bundle();
        bundle2.putBundle("selector", l0Var.f9056a);
        bundle2.putBoolean("activeScan", zB);
        MediaRouter2 mediaRouter2 = this.f9095i;
        MediaRouter2.RouteCallback routeCallback = this.f9098l;
        l0Var.a();
        if (l0Var.f9057b.contains(null)) {
            androidx.media3.common.d.p();
            routeDiscoveryPreferenceBuild = t.h(new ArrayList()).build();
        } else {
            boolean z10 = bundle2.getBoolean("activeScan");
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = l0Var.c().iterator();
            while (it2.hasNext()) {
                str = (String) it2.next();
                str.getClass();
                switch (str) {
                    case "android.media.intent.category.REMOTE_PLAYBACK":
                        str = "android.media.route.feature.REMOTE_PLAYBACK";
                        break;
                    case "android.media.intent.category.LIVE_AUDIO":
                        str = "android.media.route.feature.LIVE_AUDIO";
                        break;
                    case "android.media.intent.category.LIVE_VIDEO":
                        str = "android.media.route.feature.LIVE_VIDEO";
                        break;
                    case "android.media.intent.category.REMOTE_AUDIO_PLAYBACK":
                        str = "android.media.route.feature.REMOTE_AUDIO_PLAYBACK";
                        break;
                    case "android.media.intent.category.REMOTE_VIDEO_PLAYBACK":
                        str = "android.media.route.feature.REMOTE_VIDEO_PLAYBACK";
                        break;
                }
                arrayList2.add(str);
            }
            routeDiscoveryPreferenceBuild = t.i(arrayList2, z10).build();
        }
        androidx.media3.common.util.e eVar = this.f9101o;
        mediaRouter2.registerRouteCallback(eVar, routeCallback, routeDiscoveryPreferenceBuild);
        this.f9095i.registerTransferCallback(eVar, oVar);
        this.f9095i.registerControllerCallback(eVar, kVar);
    }

    public final MediaRoute2Info h(String str) {
        if (str == null) {
            return null;
        }
        Iterator it = this.f9103q.iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoF = androidx.media3.common.d.f(it.next());
            if (TextUtils.equals(mediaRoute2InfoF.getId(), str)) {
                return mediaRoute2InfoF;
            }
        }
        return null;
    }

    public final void i() {
        ArrayList arrayList = new ArrayList();
        ArraySet arraySet = new ArraySet();
        Iterator it = this.f9095i.getRoutes().iterator();
        while (it.hasNext()) {
            MediaRoute2Info mediaRoute2InfoF = androidx.media3.common.d.f(it.next());
            if (mediaRoute2InfoF != null && !arraySet.contains(mediaRoute2InfoF) && !mediaRoute2InfoF.isSystemRoute()) {
                if (this.f9102p) {
                    if (!mediaRoute2InfoF.getId().startsWith(this.f8956a.getPackageName() + "/")) {
                    }
                }
                arraySet.add(mediaRoute2InfoF);
                arrayList.add(mediaRoute2InfoF);
            }
        }
        if (arrayList.equals(this.f9103q)) {
            return;
        }
        this.f9103q = arrayList;
        ArrayMap arrayMap = this.f9104r;
        arrayMap.clear();
        Iterator it2 = this.f9103q.iterator();
        while (it2.hasNext()) {
            MediaRoute2Info mediaRoute2InfoF2 = androidx.media3.common.d.f(it2.next());
            Bundle extras = mediaRoute2InfoF2.getExtras();
            if (extras == null || extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID") == null) {
                Log.w("MR2Provider", "Cannot find the original route Id. route=" + mediaRoute2InfoF2);
            } else {
                arrayMap.put(mediaRoute2InfoF2.getId(), extras.getString("androidx.mediarouter.media.KEY_ORIGINAL_ROUTE_ID"));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it3 = this.f9103q.iterator();
        while (it3.hasNext()) {
            w wVarM = a2.a.M(androidx.media3.common.d.f(it3.next()));
            if (wVarM != null) {
                arrayList2.add(wVarM);
            }
        }
        ArrayList arrayList3 = new ArrayList();
        if (!arrayList2.isEmpty()) {
            Iterator it4 = arrayList2.iterator();
            while (it4.hasNext()) {
                w wVar = (w) it4.next();
                if (wVar == null) {
                    throw new IllegalArgumentException("route must not be null");
                }
                if (arrayList3.contains(wVar)) {
                    throw new IllegalArgumentException("route descriptor already added");
                }
                arrayList3.add(wVar);
            }
        }
        f(new androidx.appcompat.app.r0(arrayList3, true));
    }

    public final void j(MediaRouter2.RoutingController routingController) {
        a0.f fVar;
        l lVar = (l) this.f9097k.get(routingController);
        if (lVar == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No matching routeController found. routingController=" + routingController);
            return;
        }
        List selectedRoutes = routingController.getSelectedRoutes();
        if (selectedRoutes.isEmpty()) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: No selected routes. This may happen when the selected routes become invalid.routingController=" + routingController);
            return;
        }
        ArrayList arrayListC = a2.a.C(selectedRoutes);
        w wVarM = a2.a.M(androidx.media3.common.d.f(selectedRoutes.get(0)));
        Bundle controlHints = routingController.getControlHints();
        String string = this.f8956a.getString(R.string.mr_dialog_default_group_name);
        w wVar = null;
        if (controlHints != null) {
            try {
                String string2 = controlHints.getString("androidx.mediarouter.media.KEY_SESSION_NAME");
                if (!TextUtils.isEmpty(string2)) {
                    string = string2;
                }
                Bundle bundle = controlHints.getBundle("androidx.mediarouter.media.KEY_GROUP_ROUTE");
                if (bundle != null) {
                    wVar = new w(bundle);
                }
            } catch (Exception e5) {
                Log.w("MR2Provider", "Exception while unparceling control hints.", e5);
            }
        }
        if (wVar == null) {
            fVar = new a0.f(routingController.getId(), string);
            Bundle bundle2 = (Bundle) fVar.f38b;
            bundle2.putInt("connectionState", 2);
            bundle2.putInt("playbackType", 1);
        } else {
            fVar = new a0.f(wVar);
        }
        int volume = routingController.getVolume();
        Bundle bundle3 = (Bundle) fVar.f38b;
        bundle3.putInt("volume", volume);
        bundle3.putInt("volumeMax", routingController.getVolumeMax());
        bundle3.putInt("volumeHandling", routingController.getVolumeHandling());
        ((ArrayList) fVar.f39c).clear();
        fVar.b(wVarM.b());
        ArrayList arrayList = (ArrayList) fVar.d;
        arrayList.clear();
        if (!arrayListC.isEmpty()) {
            Iterator it = arrayListC.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (TextUtils.isEmpty(str)) {
                    throw new IllegalArgumentException("groupMemberId must not be empty");
                }
                if (!arrayList.contains(str)) {
                    arrayList.add(str);
                }
            }
        }
        w wVarC = fVar.c();
        ArrayList arrayListC2 = a2.a.C(routingController.getSelectableRoutes());
        ArrayList arrayListC3 = a2.a.C(routingController.getDeselectableRoutes());
        androidx.appcompat.app.r0 r0Var = this.f8960g;
        if (r0Var == null) {
            Log.w("MR2Provider", "setDynamicRouteDescriptors: providerDescriptor is not set.");
            return;
        }
        ArrayList arrayList2 = new ArrayList();
        List<w> list = (List) r0Var.f353c;
        if (!list.isEmpty()) {
            for (w wVar2 : list) {
                String strF = wVar2.f();
                arrayList2.add(new z(wVar2, arrayListC.contains(strF) ? 3 : 1, arrayListC3.contains(strF), arrayListC2.contains(strF), true));
            }
        }
        lVar.f9053o = wVarC;
        lVar.m(wVarC, arrayList2);
    }
}
