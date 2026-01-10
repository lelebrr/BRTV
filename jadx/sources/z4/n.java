package z4;

import android.content.Context;
import android.content.res.Resources;
import android.os.DeadObjectException;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.leanback.widget.n0;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.cast.x0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class n implements y4.h, y4.i {
    public final y4.c d;

    /* renamed from: e, reason: collision with root package name */
    public final b f11618e;
    public final l6.h f;

    /* renamed from: i, reason: collision with root package name */
    public final int f11621i;

    /* renamed from: j, reason: collision with root package name */
    public final w f11622j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f11623k;

    /* renamed from: o, reason: collision with root package name */
    public final /* synthetic */ e f11627o;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedList f11617c = new LinkedList();

    /* renamed from: g, reason: collision with root package name */
    public final HashSet f11619g = new HashSet();

    /* renamed from: h, reason: collision with root package name */
    public final HashMap f11620h = new HashMap();

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f11624l = new ArrayList();

    /* renamed from: m, reason: collision with root package name */
    public ConnectionResult f11625m = null;

    /* renamed from: n, reason: collision with root package name */
    public int f11626n = 0;

    public n(e eVar, y4.g gVar) {
        this.f11627o = eVar;
        Looper looper = eVar.f11608m.getLooper();
        a1.b bVarA = gVar.a();
        a4.h hVar = new a4.h((p.f) bVarA.f47b, (String) bVarA.f48c, (String) bVarA.d);
        l5.a aVar = (l5.a) gVar.f11398c.f8016b;
        b5.l.e(aVar);
        y4.c cVarC = aVar.c(gVar.f11396a, looper, hVar, gVar.d, this, this);
        String str = gVar.f11397b;
        if (str != null && (cVarC instanceof com.google.android.gms.common.internal.a)) {
            ((com.google.android.gms.common.internal.a) cVarC).f4005s = str;
        }
        if (str != null && (cVarC instanceof i)) {
            ea.q.n(cVarC);
            throw null;
        }
        this.d = cVarC;
        this.f11618e = gVar.f11399e;
        this.f = new l6.h(17);
        this.f11621i = gVar.f11400g;
        if (!cVarC.k()) {
            this.f11622j = null;
            return;
        }
        Context context = eVar.f11601e;
        x0 x0Var = eVar.f11608m;
        a1.b bVarA2 = gVar.a();
        this.f11622j = new w(context, x0Var, new a4.h((p.f) bVarA2.f47b, (String) bVarA2.f48c, (String) bVarA2.d));
    }

    public final Feature a(Feature[] featureArr) {
        if (featureArr != null && featureArr.length != 0) {
            Feature[] featureArrF = this.d.f();
            if (featureArrF == null) {
                featureArrF = new Feature[0];
            }
            p.e eVar = new p.e(featureArrF.length);
            for (Feature feature : featureArrF) {
                eVar.put(feature.f3908a, Long.valueOf(feature.j()));
            }
            for (Feature feature2 : featureArr) {
                Long l9 = (Long) eVar.get(feature2.f3908a);
                if (l9 == null || l9.longValue() < feature2.j()) {
                    return feature2;
                }
            }
        }
        return null;
    }

    public final void b(ConnectionResult connectionResult) {
        HashSet hashSet = this.f11619g;
        Iterator it = hashSet.iterator();
        if (!it.hasNext()) {
            hashSet.clear();
        } else {
            if (it.next() != null) {
                throw new ClassCastException();
            }
            if (b5.l.h(connectionResult, ConnectionResult.f3904e)) {
                this.d.g();
            }
            throw null;
        }
    }

    public final void c(Status status) {
        b5.l.a(this.f11627o.f11608m);
        d(status, null, false);
    }

    public final void d(Status status, RuntimeException runtimeException, boolean z7) {
        b5.l.a(this.f11627o.f11608m);
        if ((status == null) == (runtimeException == null)) {
            throw new IllegalArgumentException("Status XOR exception should be null");
        }
        Iterator it = this.f11617c.iterator();
        while (it.hasNext()) {
            q qVar = (q) it.next();
            if (!z7 || qVar.f11630a == 2) {
                if (status != null) {
                    qVar.c(status);
                } else {
                    qVar.d(runtimeException);
                }
                it.remove();
            }
        }
    }

    public final void e() {
        LinkedList linkedList = this.f11617c;
        ArrayList arrayList = new ArrayList(linkedList);
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            q qVar = (q) arrayList.get(i6);
            if (!this.d.isConnected()) {
                return;
            }
            if (j(qVar)) {
                linkedList.remove(qVar);
            }
        }
    }

    public final void f() {
        y4.c cVar = this.d;
        e eVar = this.f11627o;
        b5.l.a(eVar.f11608m);
        this.f11625m = null;
        b(ConnectionResult.f3904e);
        if (this.f11623k) {
            x0 x0Var = eVar.f11608m;
            b bVar = this.f11618e;
            x0Var.removeMessages(11, bVar);
            eVar.f11608m.removeMessages(9, bVar);
            this.f11623k = false;
        }
        Iterator it = this.f11620h.values().iterator();
        while (it.hasNext()) {
            u uVar = (u) it.next();
            if (a((Feature[]) uVar.f11641a.f9689c) != null) {
                it.remove();
            } else {
                try {
                    s.g gVar = uVar.f11641a;
                    ((j) gVar.d).f11612a.r(cVar, new w5.d());
                } catch (DeadObjectException unused) {
                    g(3);
                    cVar.c("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException unused2) {
                    it.remove();
                }
            }
        }
        e();
        i();
    }

    @Override // y4.h
    public final void g(int i6) {
        Looper looperMyLooper = Looper.myLooper();
        e eVar = this.f11627o;
        if (looperMyLooper == eVar.f11608m.getLooper()) {
            h(i6);
        } else {
            eVar.f11608m.post(new n0(i6, 6, this));
        }
    }

    public final void h(int i6) {
        e eVar = this.f11627o;
        b5.l.a(eVar.f11608m);
        this.f11625m = null;
        this.f11623k = true;
        String strI = this.d.i();
        l6.h hVar = this.f;
        hVar.getClass();
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i6 == 1) {
            sb.append(" due to service disconnection.");
        } else if (i6 == 3) {
            sb.append(" due to dead object exception.");
        }
        if (strI != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(strI);
        }
        hVar.t(true, new Status(20, sb.toString(), null, null));
        x0 x0Var = eVar.f11608m;
        b bVar = this.f11618e;
        x0Var.sendMessageDelayed(Message.obtain(x0Var, 9, bVar), 5000L);
        x0 x0Var2 = eVar.f11608m;
        x0Var2.sendMessageDelayed(Message.obtain(x0Var2, 11, bVar), 120000L);
        ((SparseIntArray) eVar.f11602g.f169b).clear();
        Iterator it = this.f11620h.values().iterator();
        while (it.hasNext()) {
            ((u) it.next()).getClass();
        }
    }

    public final void i() {
        e eVar = this.f11627o;
        x0 x0Var = eVar.f11608m;
        b bVar = this.f11618e;
        x0Var.removeMessages(12, bVar);
        x0 x0Var2 = eVar.f11608m;
        x0Var2.sendMessageDelayed(x0Var2.obtainMessage(12, bVar), eVar.f11598a);
    }

    public final boolean j(q qVar) throws Resources.NotFoundException {
        if (!(qVar instanceof q)) {
            y4.c cVar = this.d;
            qVar.f(this.f, cVar.k());
            try {
                qVar.e(this);
            } catch (DeadObjectException unused) {
                g(1);
                cVar.c("DeadObjectException thrown while running ApiCallRunner.");
            }
            return true;
        }
        Feature featureA = a(qVar.b(this));
        if (featureA == null) {
            y4.c cVar2 = this.d;
            qVar.f(this.f, cVar2.k());
            try {
                qVar.e(this);
            } catch (DeadObjectException unused2) {
                g(1);
                cVar2.c("DeadObjectException thrown while running ApiCallRunner.");
            }
            return true;
        }
        Log.w("GoogleApiManager", this.d.getClass().getName() + " could not execute call because it requires feature (" + featureA.f3908a + ", " + featureA.j() + ").");
        if (!this.f11627o.f11609n || !qVar.a(this)) {
            qVar.d(new y4.m(featureA));
            return true;
        }
        o oVar = new o(this.f11618e, featureA);
        int iIndexOf = this.f11624l.indexOf(oVar);
        if (iIndexOf >= 0) {
            o oVar2 = (o) this.f11624l.get(iIndexOf);
            this.f11627o.f11608m.removeMessages(15, oVar2);
            x0 x0Var = this.f11627o.f11608m;
            x0Var.sendMessageDelayed(Message.obtain(x0Var, 15, oVar2), 5000L);
            return false;
        }
        this.f11624l.add(oVar);
        x0 x0Var2 = this.f11627o.f11608m;
        x0Var2.sendMessageDelayed(Message.obtain(x0Var2, 15, oVar), 5000L);
        x0 x0Var3 = this.f11627o.f11608m;
        x0Var3.sendMessageDelayed(Message.obtain(x0Var3, 16, oVar), 120000L);
        ConnectionResult connectionResult = new ConnectionResult(2, null);
        if (k(connectionResult)) {
            return false;
        }
        this.f11627o.b(connectionResult, this.f11621i);
        return false;
    }

    public final boolean k(ConnectionResult connectionResult) {
        synchronized (e.f11596q) {
            this.f11627o.getClass();
        }
        return false;
    }

    @Override // y4.i
    public final void l(ConnectionResult connectionResult) {
        o(connectionResult, null);
    }

    public final void m() {
        e eVar = this.f11627o;
        b5.l.a(eVar.f11608m);
        y4.c cVar = this.d;
        if (cVar.isConnected() || cVar.e()) {
            return;
        }
        try {
            a7.f fVar = eVar.f11602g;
            Context context = eVar.f11601e;
            fVar.getClass();
            b5.l.e(context);
            int iD = cVar.d();
            SparseIntArray sparseIntArray = (SparseIntArray) fVar.f169b;
            int iB = sparseIntArray.get(iD, -1);
            if (iB == -1) {
                iB = 0;
                int i6 = 0;
                while (true) {
                    if (i6 >= sparseIntArray.size()) {
                        iB = -1;
                        break;
                    }
                    int iKeyAt = sparseIntArray.keyAt(i6);
                    if (iKeyAt > iD && sparseIntArray.get(iKeyAt) == 0) {
                        break;
                    } else {
                        i6++;
                    }
                }
                if (iB == -1) {
                    iB = ((x4.b) fVar.f170c).b(context, iD);
                }
                sparseIntArray.put(iD, iB);
            }
            if (iB != 0) {
                ConnectionResult connectionResult = new ConnectionResult(iB, null);
                Log.w("GoogleApiManager", "The service for " + cVar.getClass().getName() + " is not available: " + connectionResult.toString());
                o(connectionResult, null);
                return;
            }
            a.q qVar = new a.q(eVar, cVar, this.f11618e);
            if (cVar.k()) {
                w wVar = this.f11622j;
                b5.l.e(wVar);
                v5.a aVar = wVar.f11648i;
                if (aVar != null) {
                    aVar.disconnect();
                }
                Integer numValueOf = Integer.valueOf(System.identityHashCode(wVar));
                a4.h hVar = wVar.f11647h;
                hVar.f122b = numValueOf;
                x0 x0Var = wVar.f11645e;
                wVar.f11648i = (v5.a) wVar.f.c(wVar.d, x0Var.getLooper(), hVar, (u5.a) hVar.f, wVar, wVar);
                wVar.f11649j = qVar;
                Set set = wVar.f11646g;
                if (set == null || set.isEmpty()) {
                    x0Var.post(new s4.h(10, wVar));
                } else {
                    v5.a aVar2 = wVar.f11648i;
                    aVar2.getClass();
                    aVar2.j(new b5.d(aVar2));
                }
            }
            try {
                cVar.j(qVar);
            } catch (SecurityException e5) {
                o(new ConnectionResult(10), e5);
            }
        } catch (IllegalStateException e10) {
            o(new ConnectionResult(10), e10);
        }
    }

    public final void n(q qVar) {
        b5.l.a(this.f11627o.f11608m);
        boolean zIsConnected = this.d.isConnected();
        LinkedList linkedList = this.f11617c;
        if (zIsConnected) {
            if (j(qVar)) {
                i();
                return;
            } else {
                linkedList.add(qVar);
                return;
            }
        }
        linkedList.add(qVar);
        ConnectionResult connectionResult = this.f11625m;
        if (connectionResult == null || connectionResult.f3906b == 0 || connectionResult.f3907c == null) {
            m();
        } else {
            o(connectionResult, null);
        }
    }

    public final void o(ConnectionResult connectionResult, RuntimeException runtimeException) {
        v5.a aVar;
        b5.l.a(this.f11627o.f11608m);
        w wVar = this.f11622j;
        if (wVar != null && (aVar = wVar.f11648i) != null) {
            aVar.disconnect();
        }
        b5.l.a(this.f11627o.f11608m);
        this.f11625m = null;
        ((SparseIntArray) this.f11627o.f11602g.f169b).clear();
        b(connectionResult);
        if ((this.d instanceof d5.c) && connectionResult.f3906b != 24) {
            e eVar = this.f11627o;
            eVar.f11599b = true;
            x0 x0Var = eVar.f11608m;
            x0Var.sendMessageDelayed(x0Var.obtainMessage(19), 300000L);
        }
        if (connectionResult.f3906b == 4) {
            c(e.f11595p);
            return;
        }
        if (this.f11617c.isEmpty()) {
            this.f11625m = connectionResult;
            return;
        }
        if (runtimeException != null) {
            b5.l.a(this.f11627o.f11608m);
            d(null, runtimeException, false);
            return;
        }
        if (!this.f11627o.f11609n) {
            c(e.c(this.f11618e, connectionResult));
            return;
        }
        d(e.c(this.f11618e, connectionResult), null, true);
        if (this.f11617c.isEmpty() || k(connectionResult) || this.f11627o.b(connectionResult, this.f11621i)) {
            return;
        }
        if (connectionResult.f3906b == 18) {
            this.f11623k = true;
        }
        if (!this.f11623k) {
            c(e.c(this.f11618e, connectionResult));
            return;
        }
        e eVar2 = this.f11627o;
        b bVar = this.f11618e;
        x0 x0Var2 = eVar2.f11608m;
        x0Var2.sendMessageDelayed(Message.obtain(x0Var2, 9, bVar), 5000L);
    }

    @Override // y4.h
    public final void onConnected() {
        Looper looperMyLooper = Looper.myLooper();
        e eVar = this.f11627o;
        if (looperMyLooper == eVar.f11608m.getLooper()) {
            f();
        } else {
            eVar.f11608m.post(new s4.h(8, this));
        }
    }

    public final void p(ConnectionResult connectionResult) {
        b5.l.a(this.f11627o.f11608m);
        y4.c cVar = this.d;
        cVar.c("onSignInFailed for " + cVar.getClass().getName() + " with " + String.valueOf(connectionResult));
        o(connectionResult, null);
    }

    public final void q() {
        b5.l.a(this.f11627o.f11608m);
        Status status = e.f11594o;
        c(status);
        this.f.t(false, status);
        for (g gVar : (g[]) this.f11620h.keySet().toArray(new g[0])) {
            n(new x(gVar, new w5.d()));
        }
        b(new ConnectionResult(4));
        y4.c cVar = this.d;
        if (cVar.isConnected()) {
            cVar.h(new s2.c(11, this));
        }
    }
}
