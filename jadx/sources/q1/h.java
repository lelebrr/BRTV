package q1;

import android.content.ComponentName;
import android.content.Context;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h {
    public static final /* synthetic */ int F = 0;
    public x A;
    public int B;
    public e C;
    public MediaSessionCompat D;
    public final a E;

    /* renamed from: c, reason: collision with root package name */
    public final n1 f8988c;
    public s0 d;

    /* renamed from: e, reason: collision with root package name */
    public c0 f8989e;
    public q0 f;

    /* renamed from: g, reason: collision with root package name */
    public final Context f8990g;

    /* renamed from: n, reason: collision with root package name */
    public final o1 f8997n;

    /* renamed from: o, reason: collision with root package name */
    public final f f8998o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f8999p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f9000q;

    /* renamed from: r, reason: collision with root package name */
    public p f9001r;

    /* renamed from: s, reason: collision with root package name */
    public final e1 f9002s;

    /* renamed from: t, reason: collision with root package name */
    public final v0 f9003t;

    /* renamed from: u, reason: collision with root package name */
    public x0 f9004u;

    /* renamed from: v, reason: collision with root package name */
    public s0 f9005v;

    /* renamed from: w, reason: collision with root package name */
    public s0 f9006w;

    /* renamed from: x, reason: collision with root package name */
    public s0 f9007x;

    /* renamed from: y, reason: collision with root package name */
    public b0 f9008y;

    /* renamed from: z, reason: collision with root package name */
    public x f9009z;

    /* renamed from: a, reason: collision with root package name */
    public final b f8986a = new b(this);

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f8987b = new HashMap();

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f8991h = new ArrayList();

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f8992i = new ArrayList();

    /* renamed from: j, reason: collision with root package name */
    public final HashMap f8993j = new HashMap();

    /* renamed from: k, reason: collision with root package name */
    public final HashMap f8994k = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f8995l = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f8996m = new ArrayList();

    static {
        Log.isLoggable("AxMediaRouter", 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public h(android.content.Context r8) {
        /*
            Method dump skipped, instructions count: 294
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q1.h.<init>(android.content.Context):void");
    }

    public final void a(e0 e0Var, boolean z7) {
        if (d(e0Var) == null) {
            r0 r0Var = new r0(e0Var, z7);
            this.f8995l.add(r0Var);
            this.f8986a.b(513, r0Var);
            n(r0Var, e0Var.f8960g);
            u0.b();
            e0Var.d = this.f8998o;
            e0Var.g(this.f9009z);
        }
    }

    public final String b(r0 r0Var, String str) {
        String strFlattenToShortString = ((ComponentName) r0Var.d.f7444b).flattenToShortString();
        boolean z7 = r0Var.f9124c;
        String strI = z7 ? str : ea.q.i(strFlattenToShortString, ":", str);
        HashMap map = this.f8994k;
        if (!z7) {
            ArrayList arrayList = this.f8992i;
            int size = arrayList.size();
            int i6 = 0;
            while (true) {
                if (i6 >= size) {
                    i6 = -1;
                    break;
                }
                if (((s0) arrayList.get(i6)).f9131c.equals(strI)) {
                    break;
                }
                i6++;
            }
            if (i6 >= 0) {
                Log.w("AxMediaRouter", "Either " + str + " isn't unique in " + strFlattenToShortString + " or we're trying to assign a unique ID for an already added route");
                int i10 = 2;
                while (true) {
                    Locale locale = Locale.US;
                    String str2 = strI + "_" + i10;
                    int size2 = arrayList.size();
                    int i11 = 0;
                    while (true) {
                        if (i11 >= size2) {
                            i11 = -1;
                            break;
                        }
                        if (((s0) arrayList.get(i11)).f9131c.equals(str2)) {
                            break;
                        }
                        i11++;
                    }
                    if (i11 < 0) {
                        map.put(new m0.b(strFlattenToShortString, str), str2);
                        return str2;
                    }
                    i10++;
                }
            }
        }
        map.put(new m0.b(strFlattenToShortString, str), strI);
        return strI;
    }

    public final s0 c() {
        Iterator it = this.f8992i.iterator();
        while (it.hasNext()) {
            s0 s0Var = (s0) it.next();
            if (s0Var != this.f9005v && s0Var.c() == this.f9002s && s0Var.m("android.media.intent.category.LIVE_AUDIO") && !s0Var.m("android.media.intent.category.LIVE_VIDEO") && s0Var.f()) {
                return s0Var;
            }
        }
        return this.f9005v;
    }

    public final r0 d(e0 e0Var) {
        Iterator it = this.f8995l.iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            if (r0Var.f9122a == e0Var) {
                return r0Var;
            }
        }
        return null;
    }

    public final void e() {
        Iterator it = this.f8993j.values().iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
    }

    public final c0 f(s0 s0Var) {
        c0 c0Var;
        if (s0Var == this.d && (c0Var = this.f8989e) != null) {
            return c0Var;
        }
        if ((s0Var instanceof p0) && ((p0) s0Var).n()) {
            e();
            return null;
        }
        c0 c0Var2 = (c0) this.f8987b.get(s0Var.f9131c);
        if (c0Var2 != null) {
            return c0Var2;
        }
        Iterator it = this.f8993j.values().iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        return c0Var2;
    }

    public final s0 g() {
        s0 s0Var = this.d;
        if (s0Var != null) {
            return s0Var;
        }
        throw new IllegalStateException("There is no currently selected route.  The media router has not yet been fully initialized.");
    }

    public final boolean h() {
        x0 x0Var;
        return this.f9000q && ((x0Var = this.f9004u) == null || x0Var.f9176a);
    }

    public final void i() {
        if (this.d.e()) {
            List<s0> listUnmodifiableList = Collections.unmodifiableList(this.d.f9148v);
            HashSet hashSet = new HashSet();
            Iterator it = listUnmodifiableList.iterator();
            while (it.hasNext()) {
                hashSet.add(((s0) it.next()).f9131c);
            }
            HashMap map = this.f8987b;
            Iterator it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                if (!hashSet.contains(entry.getKey())) {
                    c0 c0Var = (c0) entry.getValue();
                    c0Var.i(0);
                    c0Var.e();
                    it2.remove();
                }
            }
            for (s0 s0Var : listUnmodifiableList) {
                if (!map.containsKey(s0Var.f9131c)) {
                    c0 c0VarC = s0Var.c().c(s0Var.f9130b, this.d.f9130b);
                    if (c0VarC != null) {
                        c0VarC.f();
                        map.put(s0Var.f9131c, c0VarC);
                    }
                }
            }
        }
    }

    public final void j(s0 s0Var, int i6, boolean z7) {
        if (!this.f8992i.contains(s0Var)) {
            Log.w("AxMediaRouter", "Ignoring attempt to select removed route: " + s0Var);
            return;
        }
        if (!s0Var.f9133g) {
            Log.w("AxMediaRouter", "Ignoring attempt to select disabled route: " + s0Var);
            return;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            e0 e0VarC = s0Var.c();
            p pVar = this.f9001r;
            if (e0VarC == pVar && this.d != s0Var) {
                String str = s0Var.f9130b;
                MediaRoute2Info mediaRoute2InfoH = pVar.h(str);
                if (mediaRoute2InfoH != null) {
                    pVar.f9095i.transferTo(mediaRoute2InfoH);
                    return;
                }
                Log.w("MR2Provider", "transferTo: Specified route not found. routeId=" + str);
                return;
            }
        }
        k(s0Var, i6, z7);
    }

    public final void k(s0 s0Var, int i6, boolean z7) {
        androidx.appcompat.app.r0 r0Var;
        String str;
        if (this.d == s0Var) {
            return;
        }
        boolean z10 = s0Var == this.f9005v;
        s0 s0Var2 = this.f9006w;
        Context context = this.f8990g;
        if (s0Var2 != null && z10) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            StringBuilder sb = new StringBuilder("- Stracktrace: [");
            int i10 = 3;
            while (i10 < stackTrace.length) {
                StackTraceElement stackTraceElement = stackTrace[i10];
                sb.append(stackTraceElement.getClassName());
                sb.append(".");
                sb.append(stackTraceElement.getMethodName());
                sb.append(":");
                sb.append(stackTraceElement.getLineNumber());
                i10++;
                if (i10 < stackTrace.length) {
                    sb.append(", ");
                }
            }
            sb.append("]");
            s0 s0Var3 = this.d;
            if (s0Var3 != null) {
                Locale locale = Locale.US;
                String str2 = s0Var3.d;
                u0.b();
                str = str2 + "(BT=" + (u0.c().f9006w == s0Var3) + ", syncMediaRoute1Provider=" + z7 + ")";
            } else {
                str = null;
            }
            StringBuilder sbX = a.e.x("Changing selection(", str, ") to default while BT is available: pkgName=");
            sbX.append(context.getPackageName());
            sbX.append((Object) sb);
            Log.w("AxMediaRouter", sbX.toString());
        }
        if (this.f9007x != null) {
            this.f9007x = null;
            b0 b0Var = this.f9008y;
            if (b0Var != null) {
                b0Var.i(3);
                this.f9008y.e();
                this.f9008y = null;
            }
        }
        if (h() && (r0Var = s0Var.f9129a.f9125e) != null && r0Var.f352b) {
            e0 e0VarC = s0Var.c();
            Bundle bundle = new Bundle();
            bundle.putString("clientPackageName", context.getPackageName());
            b0 b0VarA = e0VarC.a(s0Var.f9130b, new d0(bundle));
            if (b0VarA != null) {
                b0VarA.q(u7.d.m(context), this.E);
                this.f9007x = s0Var;
                this.f9008y = b0VarA;
                b0VarA.f();
                return;
            }
            Log.w("AxMediaRouter", "setSelectedRouteInternal: Failed to create dynamic group route controller. route=" + s0Var);
        }
        e0 e0VarC2 = s0Var.c();
        Bundle bundle2 = new Bundle();
        bundle2.putString("clientPackageName", context.getPackageName());
        c0 c0VarD = e0VarC2.d(s0Var.f9130b, new d0(bundle2));
        if (c0VarD != null) {
            c0VarD.f();
        }
        if (this.d == null) {
            this.d = s0Var;
            this.f8989e = c0VarD;
            b bVar = this.f8986a;
            bVar.getClass();
            Message messageObtainMessage = bVar.obtainMessage(262, new g(null, s0Var, z7));
            messageObtainMessage.arg1 = i6;
            messageObtainMessage.sendToTarget();
            return;
        }
        q0 q0Var = this.f;
        if (q0Var != null) {
            if (!q0Var.f9117i && !q0Var.f9118j) {
                q0Var.f9118j = true;
                c0 c0Var = q0Var.f9111a;
                if (c0Var != null) {
                    c0Var.i(0);
                    c0Var.e();
                }
            }
            this.f = null;
        }
        q0 q0Var2 = new q0(this, s0Var, c0VarD, i6, z7, null, null);
        this.f = q0Var2;
        q0Var2.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void l() {
        /*
            Method dump skipped, instructions count: 331
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q1.h.l():void");
    }

    public final void m() {
        MediaRouter2.RoutingController routingController;
        s0 s0Var = this.d;
        if (s0Var == null) {
            e eVar = this.C;
            if (eVar != null) {
                eVar.a();
                return;
            }
            return;
        }
        int i6 = s0Var.f9142p;
        o1 o1Var = this.f8997n;
        o1Var.f9090a = i6;
        o1Var.f9091b = s0Var.f9143q;
        o1Var.f9092c = (!s0Var.e() || u0.g()) ? s0Var.f9141o : 0;
        o1Var.d = this.d.f9139m;
        String id = null;
        if (h() && this.d.c() == this.f9001r) {
            c0 c0Var = this.f8989e;
            int i10 = p.f9094s;
            if ((c0Var instanceof l) && (routingController = ((l) c0Var).f9045g) != null) {
                id = routingController.getId();
            }
            o1Var.f9093e = id;
        } else {
            o1Var.f9093e = null;
        }
        Iterator it = this.f8996m.iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        e eVar2 = this.C;
        if (eVar2 != null) {
            s0 s0Var2 = this.d;
            s0 s0Var3 = this.f9005v;
            if (s0Var3 == null) {
                throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
            }
            if (s0Var2 == s0Var3 || s0Var2 == this.f9006w) {
                eVar2.a();
                return;
            }
            int i11 = o1Var.f9092c == 1 ? 2 : 0;
            int i12 = o1Var.f9091b;
            int i13 = o1Var.f9090a;
            String str = o1Var.f9093e;
            MediaSessionCompat mediaSessionCompat = eVar2.f8953a;
            if (mediaSessionCompat != null) {
                d dVar = eVar2.f8954b;
                if (dVar == null || i11 != 0 || i12 != 0) {
                    d dVar2 = new d(eVar2, i11, i12, i13, str);
                    eVar2.f8954b = dVar2;
                    mediaSessionCompat.setPlaybackToRemote(dVar2);
                } else {
                    dVar.d = i13;
                    m1.v.a(dVar.a(), i13);
                    m1.w wVar = dVar.f8156e;
                    if (wVar != null) {
                        wVar.onVolumeChanged(dVar);
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x012f A[LOOP:3: B:54:0x0129->B:56:0x012f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void n(q1.r0 r19, androidx.appcompat.app.r0 r20) {
        /*
            Method dump skipped, instructions count: 463
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q1.h.n(q1.r0, androidx.appcompat.app.r0):void");
    }

    public final int o(s0 s0Var, w wVar) {
        int i6 = s0Var.i(wVar);
        if (i6 != 0) {
            int i10 = i6 & 1;
            b bVar = this.f8986a;
            if (i10 != 0) {
                bVar.b(259, s0Var);
            }
            if ((i6 & 2) != 0) {
                bVar.b(260, s0Var);
            }
            if ((i6 & 4) != 0) {
                bVar.b(261, s0Var);
            }
        }
        return i6;
    }

    public final void p(boolean z7) {
        s0 s0Var = this.f9005v;
        if (s0Var != null && !s0Var.f()) {
            Log.i("AxMediaRouter", "Clearing the default route because it is no longer selectable: " + this.f9005v);
            this.f9005v = null;
        }
        s0 s0Var2 = this.f9005v;
        ArrayList arrayList = this.f8992i;
        if (s0Var2 == null) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                s0 s0Var3 = (s0) it.next();
                if (s0Var3.c() == this.f9002s && s0Var3.f9130b.equals("DEFAULT_ROUTE") && s0Var3.f()) {
                    this.f9005v = s0Var3;
                    Log.i("AxMediaRouter", "Found default route: " + this.f9005v);
                    break;
                }
            }
        }
        s0 s0Var4 = this.f9006w;
        if (s0Var4 != null && !s0Var4.f()) {
            Log.i("AxMediaRouter", "Clearing the bluetooth route because it is no longer selectable: " + this.f9006w);
            this.f9006w = null;
        }
        if (this.f9006w == null) {
            Iterator it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                s0 s0Var5 = (s0) it2.next();
                if (s0Var5.c() == this.f9002s && s0Var5.m("android.media.intent.category.LIVE_AUDIO") && !s0Var5.m("android.media.intent.category.LIVE_VIDEO") && s0Var5.f()) {
                    this.f9006w = s0Var5;
                    Log.i("AxMediaRouter", "Found bluetooth route: " + this.f9006w);
                    break;
                }
            }
        }
        s0 s0Var6 = this.d;
        if (s0Var6 == null || !s0Var6.f9133g) {
            Log.i("AxMediaRouter", "Unselecting the current route because it is no longer selectable: " + this.d);
            k(c(), 0, true);
            return;
        }
        if (z7) {
            i();
            m();
        }
    }
}
