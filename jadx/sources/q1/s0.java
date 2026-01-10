package q1;

import android.content.ComponentName;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class s0 {

    /* renamed from: a, reason: collision with root package name */
    public final r0 f9129a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9130b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9131c;
    public String d;

    /* renamed from: e, reason: collision with root package name */
    public String f9132e;
    public Uri f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9133g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f9134h;

    /* renamed from: i, reason: collision with root package name */
    public int f9135i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f9136j;

    /* renamed from: l, reason: collision with root package name */
    public int f9138l;

    /* renamed from: m, reason: collision with root package name */
    public int f9139m;

    /* renamed from: n, reason: collision with root package name */
    public int f9140n;

    /* renamed from: o, reason: collision with root package name */
    public int f9141o;

    /* renamed from: p, reason: collision with root package name */
    public int f9142p;

    /* renamed from: q, reason: collision with root package name */
    public int f9143q;

    /* renamed from: s, reason: collision with root package name */
    public Bundle f9145s;

    /* renamed from: t, reason: collision with root package name */
    public IntentSender f9146t;

    /* renamed from: u, reason: collision with root package name */
    public w f9147u;

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f9137k = new ArrayList();

    /* renamed from: r, reason: collision with root package name */
    public int f9144r = -1;

    /* renamed from: v, reason: collision with root package name */
    public ArrayList f9148v = new ArrayList();

    public s0(r0 r0Var, String str, String str2, boolean z7) {
        this.f9129a = r0Var;
        this.f9130b = str;
        this.f9131c = str2;
        this.f9134h = z7;
    }

    public static b0 b() {
        u0.b();
        c0 c0Var = u0.c().f8989e;
        if (c0Var instanceof b0) {
            return (b0) c0Var;
        }
        return null;
    }

    public final p0 a() {
        if (this instanceof p0) {
            return (p0) this;
        }
        return null;
    }

    public final e0 c() {
        r0 r0Var = this.f9129a;
        r0Var.getClass();
        u0.b();
        return r0Var.f9122a;
    }

    public final boolean d() {
        u0.b();
        s0 s0Var = u0.c().f9005v;
        if (s0Var == null) {
            throw new IllegalStateException("There is no default route.  The media router has not yet been fully initialized.");
        }
        if (s0Var == this || this.f9140n == 3) {
            return true;
        }
        return TextUtils.equals(((ComponentName) c().f8957b.f7444b).getPackageName(), "android") && m("android.media.intent.category.LIVE_AUDIO") && !m("android.media.intent.category.LIVE_VIDEO");
    }

    public final boolean e() {
        return !this.f9148v.isEmpty();
    }

    public final boolean f() {
        return this.f9147u != null && this.f9133g;
    }

    public final boolean g() {
        u0.b();
        return u0.c().g() == this;
    }

    public final boolean h(l0 l0Var) {
        if (l0Var == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        u0.b();
        ArrayList arrayList = this.f9137k;
        if (arrayList == null) {
            return false;
        }
        l0Var.a();
        if (l0Var.f9057b.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            IntentFilter intentFilter = (IntentFilter) it.next();
            if (intentFilter != null) {
                Iterator it2 = l0Var.f9057b.iterator();
                while (it2.hasNext()) {
                    if (intentFilter.hasCategory((String) it2.next())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x00ec A[EDGE_INSN: B:120:0x00ec->B:60:0x00ec BREAK  A[LOOP:0: B:27:0x007f->B:126:0x007f], EDGE_INSN: B:121:0x00ec->B:60:0x00ec BREAK  A[LOOP:0: B:27:0x007f->B:126:0x007f], EDGE_INSN: B:122:0x00ec->B:60:0x00ec BREAK  A[LOOP:0: B:27:0x007f->B:126:0x007f], EDGE_INSN: B:123:0x00ec->B:60:0x00ec BREAK  A[LOOP:0: B:27:0x007f->B:126:0x007f, LOOP_LABEL: LOOP:0: B:27:0x007f->B:126:0x007f], EDGE_INSN: B:124:0x00ec->B:60:0x00ec BREAK  A[LOOP:0: B:27:0x007f->B:126:0x007f], EDGE_INSN: B:125:0x00ec->B:60:0x00ec BREAK  A[LOOP:0: B:27:0x007f->B:126:0x007f, LOOP_LABEL: LOOP:0: B:27:0x007f->B:126:0x007f]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int i(q1.w r14) {
        /*
            Method dump skipped, instructions count: 558
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: q1.s0.i(q1.w):int");
    }

    public final void j(int i6) {
        u0.b();
        h hVarC = u0.c();
        int iMin = Math.min(this.f9143q, Math.max(0, i6));
        c0 c0VarF = hVarC.f(this);
        if (c0VarF != null) {
            c0VarF.g(iMin);
        }
    }

    public final void k(int i6) {
        c0 c0VarF;
        u0.b();
        if (i6 == 0 || (c0VarF = u0.c().f(this)) == null) {
            return;
        }
        c0VarF.j(i6);
    }

    public final void l(boolean z7) {
        u0.b();
        u0.c().j(this, 3, z7);
    }

    public final boolean m(String str) {
        u0.b();
        Iterator it = this.f9137k.iterator();
        while (it.hasNext()) {
            if (((IntentFilter) it.next()).hasCategory(str)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaRouter.RouteInfo{ uniqueId=");
        sb.append(this.f9131c);
        sb.append(", name=");
        sb.append(this.d);
        sb.append(", description=");
        sb.append(this.f9132e);
        sb.append(", iconUri=");
        sb.append(this.f);
        sb.append(", enabled=");
        sb.append(this.f9133g);
        sb.append(", isSystemRoute=");
        sb.append(this.f9134h);
        sb.append(", connectionState=");
        sb.append(this.f9135i);
        sb.append(", canDisconnect=");
        sb.append(this.f9136j);
        sb.append(", playbackType=");
        sb.append(this.f9138l);
        sb.append(", playbackStream=");
        sb.append(this.f9139m);
        sb.append(", deviceType=");
        sb.append(this.f9140n);
        sb.append(", volumeHandling=");
        sb.append(this.f9141o);
        sb.append(", volume=");
        sb.append(this.f9142p);
        sb.append(", volumeMax=");
        sb.append(this.f9143q);
        sb.append(", presentationDisplayId=");
        sb.append(this.f9144r);
        sb.append(", extras=");
        sb.append(this.f9145s);
        sb.append(", settingsIntent=");
        sb.append(this.f9146t);
        sb.append(", providerPackageName=");
        sb.append(((ComponentName) this.f9129a.d.f7444b).getPackageName());
        if (e()) {
            sb.append(", members=[");
            int size = this.f9148v.size();
            for (int i6 = 0; i6 < size; i6++) {
                if (i6 > 0) {
                    sb.append(", ");
                }
                if (this.f9148v.get(i6) != this) {
                    sb.append(((s0) this.f9148v.get(i6)).f9131c);
                }
            }
            sb.append(']');
        }
        sb.append(" }");
        return sb.toString();
    }
}
