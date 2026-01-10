package q1;

import android.content.ComponentName;
import android.content.Context;
import android.content.IntentFilter;
import android.media.MediaRouter;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import com.lzy.okgo.model.Progress;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e1 extends f1 {

    /* renamed from: s, reason: collision with root package name */
    public static final ArrayList f8962s;

    /* renamed from: t, reason: collision with root package name */
    public static final ArrayList f8963t;

    /* renamed from: i, reason: collision with root package name */
    public final h f8964i;

    /* renamed from: j, reason: collision with root package name */
    public final MediaRouter f8965j;

    /* renamed from: k, reason: collision with root package name */
    public final y0 f8966k;

    /* renamed from: l, reason: collision with root package name */
    public final z0 f8967l;

    /* renamed from: m, reason: collision with root package name */
    public final MediaRouter.RouteCategory f8968m;

    /* renamed from: n, reason: collision with root package name */
    public int f8969n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f8970o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f8971p;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f8972q;

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f8973r;

    static {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addCategory("android.media.intent.category.LIVE_AUDIO");
        ArrayList arrayList = new ArrayList();
        f8962s = arrayList;
        arrayList.add(intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addCategory("android.media.intent.category.LIVE_VIDEO");
        ArrayList arrayList2 = new ArrayList();
        f8963t = arrayList2;
        arrayList2.add(intentFilter2);
    }

    public e1(Context context, h hVar) {
        super(context, new j7.c(25, new ComponentName("android", f1.class.getName())));
        this.f8972q = new ArrayList();
        this.f8973r = new ArrayList();
        this.f8964i = hVar;
        MediaRouter mediaRouter = (MediaRouter) context.getSystemService("media_router");
        this.f8965j = mediaRouter;
        this.f8966k = new y0(this);
        this.f8967l = new z0(this);
        this.f8968m = mediaRouter.createRouteCategory((CharSequence) context.getResources().getString(R.string.mr_user_route_category_name), false);
        s();
    }

    public static d1 m(MediaRouter.RouteInfo routeInfo) {
        Object tag = routeInfo.getTag();
        if (tag instanceof d1) {
            return (d1) tag;
        }
        return null;
    }

    public static void t(d1 d1Var) {
        MediaRouter.UserRouteInfo userRouteInfo = d1Var.f8952b;
        s0 s0Var = d1Var.f8951a;
        userRouteInfo.setName(s0Var.d);
        userRouteInfo.setPlaybackType(s0Var.f9138l);
        userRouteInfo.setPlaybackStream(s0Var.f9139m);
        userRouteInfo.setVolume(s0Var.f9142p);
        userRouteInfo.setVolumeMax(s0Var.f9143q);
        userRouteInfo.setVolumeHandling((!s0Var.e() || u0.g()) ? s0Var.f9141o : 0);
        userRouteInfo.setDescription(s0Var.f9132e);
    }

    @Override // q1.e0
    public final c0 b(String str) {
        int iJ = j(str);
        if (iJ >= 0) {
            return new b1(((c1) this.f8972q.get(iJ)).f8945a);
        }
        return null;
    }

    @Override // q1.e0
    public final void e(x xVar) {
        boolean zB;
        int i6 = 0;
        if (xVar != null) {
            xVar.a();
            ArrayList arrayListC = xVar.f9175b.c();
            int size = arrayListC.size();
            int i10 = 0;
            while (i6 < size) {
                String str = (String) arrayListC.get(i6);
                i10 = str.equals("android.media.intent.category.LIVE_AUDIO") ? i10 | 1 : str.equals("android.media.intent.category.LIVE_VIDEO") ? i10 | 2 : i10 | 8388608;
                i6++;
            }
            zB = xVar.b();
            i6 = i10;
        } else {
            zB = false;
        }
        if (this.f8969n == i6 && this.f8970o == zB) {
            return;
        }
        this.f8969n = i6;
        this.f8970o = zB;
        s();
    }

    public final boolean h(MediaRouter.RouteInfo routeInfo) {
        String str;
        if (m(routeInfo) != null || i(routeInfo) >= 0) {
            return false;
        }
        String str2 = this.f8965j.getDefaultRoute() == routeInfo ? "DEFAULT_ROUTE" : String.format(Locale.US, "ROUTE_%08x", Integer.valueOf(l(routeInfo).hashCode()));
        if (j(str2) >= 0) {
            int i6 = 2;
            while (true) {
                Locale locale = Locale.US;
                str = str2 + "_" + i6;
                if (j(str) < 0) {
                    break;
                }
                i6++;
            }
            str2 = str;
        }
        c1 c1Var = new c1(routeInfo, str2);
        a0.f fVar = new a0.f(str2, l(routeInfo));
        n(c1Var, fVar);
        c1Var.f8947c = fVar.c();
        this.f8972q.add(c1Var);
        return true;
    }

    public final int i(MediaRouter.RouteInfo routeInfo) {
        ArrayList arrayList = this.f8972q;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            if (((c1) arrayList.get(i6)).f8945a == routeInfo) {
                return i6;
            }
        }
        return -1;
    }

    public final int j(String str) {
        ArrayList arrayList = this.f8972q;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            if (((c1) arrayList.get(i6)).f8946b.equals(str)) {
                return i6;
            }
        }
        return -1;
    }

    public final int k(s0 s0Var) {
        ArrayList arrayList = this.f8973r;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            if (((d1) arrayList.get(i6)).f8951a == s0Var) {
                return i6;
            }
        }
        return -1;
    }

    public final String l(MediaRouter.RouteInfo routeInfo) {
        Context context = this.f8956a;
        CharSequence name = routeInfo.getName(context);
        if (!TextUtils.isEmpty(name)) {
            return name.toString();
        }
        if ((routeInfo.getSupportedTypes() & 8388608) != 0) {
            return "";
        }
        int deviceType = Build.VERSION.SDK_INT >= 24 ? routeInfo.getDeviceType() : 0;
        return context.getString(deviceType != 1 ? deviceType != 2 ? deviceType != 3 ? R.string.mr_route_name_unknown : R.string.mr_route_name_bluetooth : R.string.mr_route_name_speaker : R.string.mr_route_name_tv);
    }

    public void n(c1 c1Var, a0.f fVar) {
        int supportedTypes = c1Var.f8945a.getSupportedTypes();
        if ((supportedTypes & 1) != 0) {
            fVar.b(f8962s);
        }
        if ((supportedTypes & 2) != 0) {
            fVar.b(f8963t);
        }
        MediaRouter.RouteInfo routeInfo = c1Var.f8945a;
        int playbackType = routeInfo.getPlaybackType();
        Bundle bundle = (Bundle) fVar.f38b;
        bundle.putInt("playbackType", playbackType);
        bundle.putInt("playbackStream", routeInfo.getPlaybackStream());
        bundle.putInt("volume", routeInfo.getVolume());
        bundle.putInt("volumeMax", routeInfo.getVolumeMax());
        bundle.putInt("volumeHandling", routeInfo.getVolumeHandling());
        bundle.putBoolean("isSystemRoute", (supportedTypes & 8388608) == 0);
        if (!routeInfo.isEnabled()) {
            bundle.putBoolean("enabled", false);
        }
        if (routeInfo.isConnecting()) {
            bundle.putInt("connectionState", 1);
        }
        Display presentationDisplay = routeInfo.getPresentationDisplay();
        if (presentationDisplay != null) {
            bundle.putInt("presentationDisplayId", presentationDisplay.getDisplayId());
        }
        CharSequence description = routeInfo.getDescription();
        if (description != null) {
            bundle.putString(Progress.STATUS, description.toString());
        }
    }

    public final void o(s0 s0Var) {
        e0 e0VarC = s0Var.c();
        MediaRouter mediaRouter = this.f8965j;
        if (e0VarC == this) {
            int i6 = i(mediaRouter.getSelectedRoute(8388611));
            if (i6 < 0 || !((c1) this.f8972q.get(i6)).f8946b.equals(s0Var.f9130b)) {
                return;
            }
            s0Var.l(false);
            return;
        }
        MediaRouter.UserRouteInfo userRouteInfoCreateUserRoute = mediaRouter.createUserRoute(this.f8968m);
        d1 d1Var = new d1(s0Var, userRouteInfoCreateUserRoute);
        userRouteInfoCreateUserRoute.setTag(d1Var);
        userRouteInfoCreateUserRoute.setVolumeCallback(this.f8967l);
        t(d1Var);
        this.f8973r.add(d1Var);
        mediaRouter.addUserRoute(userRouteInfoCreateUserRoute);
    }

    public final void p(s0 s0Var) {
        int iK;
        if (s0Var.c() == this || (iK = k(s0Var)) < 0) {
            return;
        }
        d1 d1Var = (d1) this.f8973r.remove(iK);
        d1Var.f8952b.setTag(null);
        MediaRouter.UserRouteInfo userRouteInfo = d1Var.f8952b;
        userRouteInfo.setVolumeCallback(null);
        try {
            this.f8965j.removeUserRoute(userRouteInfo);
        } catch (IllegalArgumentException e5) {
            Log.w("AxSysMediaRouteProvider", "Failed to remove user route", e5);
        }
    }

    public final void q(s0 s0Var) {
        if (s0Var.g()) {
            e0 e0VarC = s0Var.c();
            MediaRouter mediaRouter = this.f8965j;
            if (e0VarC != this) {
                int iK = k(s0Var);
                if (iK >= 0) {
                    mediaRouter.selectRoute(8388611, ((d1) this.f8973r.get(iK)).f8952b);
                    return;
                }
                return;
            }
            int iJ = j(s0Var.f9130b);
            if (iJ >= 0) {
                mediaRouter.selectRoute(8388611, ((c1) this.f8972q.get(iJ)).f8945a);
            }
        }
    }

    public final void r() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f8972q;
        int size = arrayList2.size();
        for (int i6 = 0; i6 < size; i6++) {
            w wVar = ((c1) arrayList2.get(i6)).f8947c;
            if (wVar == null) {
                throw new IllegalArgumentException("route must not be null");
            }
            if (arrayList.contains(wVar)) {
                throw new IllegalArgumentException("route descriptor already added");
            }
            arrayList.add(wVar);
        }
        f(new androidx.appcompat.app.r0(arrayList, false));
    }

    public final void s() {
        boolean z7 = this.f8971p;
        MediaRouter mediaRouter = this.f8965j;
        y0 y0Var = this.f8966k;
        if (z7) {
            mediaRouter.removeCallback(y0Var);
        }
        this.f8971p = true;
        mediaRouter.addCallback(this.f8969n, y0Var, (this.f8970o ? 1 : 0) | 2);
        int routeCount = mediaRouter.getRouteCount();
        ArrayList arrayList = new ArrayList(routeCount);
        boolean zH = false;
        for (int i6 = 0; i6 < routeCount; i6++) {
            arrayList.add(mediaRouter.getRouteAt(i6));
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            zH |= h((MediaRouter.RouteInfo) it.next());
        }
        if (zH) {
            r();
        }
    }
}
