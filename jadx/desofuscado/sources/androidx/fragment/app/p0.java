package androidx.fragment.app;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.a1;
import androidx.lifecycle.z0;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.UUID;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p0 {

    /* renamed from: a, reason: collision with root package name */
    public final a7.f f1509a;

    /* renamed from: b, reason: collision with root package name */
    public final a1.b f1510b;

    /* renamed from: c, reason: collision with root package name */
    public final s f1511c;
    public boolean d = false;

    /* renamed from: e, reason: collision with root package name */
    public int f1512e = -1;

    public p0(a7.f fVar, a1.b bVar, s sVar) {
        this.f1509a = fVar;
        this.f1510b = bVar;
        this.f1511c = sVar;
    }

    public final void a() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        s sVar = this.f1511c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + sVar);
        }
        Bundle bundle = sVar.f1521b;
        sVar.f1538u.K();
        sVar.f1520a = 3;
        sVar.D = true;
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + sVar);
        }
        View view = sVar.F;
        if (view != null) {
            Bundle bundle2 = sVar.f1521b;
            SparseArray<Parcelable> sparseArray = sVar.f1522c;
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
                sVar.f1522c = null;
            }
            if (sVar.F != null) {
                sVar.N.f1547e.e(sVar.d);
                sVar.d = null;
            }
            sVar.D = false;
            sVar.E(bundle2);
            if (!sVar.D) {
                throw new w0("Fragment " + sVar + " did not call through to super.onViewStateRestored()");
            }
            if (sVar.F != null) {
                sVar.N.b(androidx.lifecycle.n.ON_CREATE);
            }
        }
        sVar.f1521b = null;
        k0 k0Var = sVar.f1538u;
        k0Var.f1479y = false;
        k0Var.f1480z = false;
        k0Var.F.f1487i = false;
        k0Var.p(4);
        this.f1509a.g(sVar, sVar.f1521b, false);
    }

    public final void b() {
        View view;
        View view2;
        a1.b bVar = this.f1510b;
        bVar.getClass();
        s sVar = this.f1511c;
        ViewGroup viewGroup = sVar.E;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            ArrayList arrayList = (ArrayList) bVar.f47b;
            int iIndexOf = arrayList.indexOf(sVar);
            int i6 = iIndexOf - 1;
            while (true) {
                if (i6 < 0) {
                    while (true) {
                        iIndexOf++;
                        if (iIndexOf >= arrayList.size()) {
                            break;
                        }
                        s sVar2 = (s) arrayList.get(iIndexOf);
                        if (sVar2.E == viewGroup && (view = sVar2.F) != null) {
                            iIndexOfChild = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    s sVar3 = (s) arrayList.get(i6);
                    if (sVar3.E == viewGroup && (view2 = sVar3.F) != null) {
                        iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i6--;
                }
            }
        }
        sVar.E.addView(sVar.F, iIndexOfChild);
    }

    public final void c() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        s sVar = this.f1511c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto ATTACHED: " + sVar);
        }
        s sVar2 = sVar.f1525h;
        a1.b bVar = this.f1510b;
        p0 p0Var = null;
        if (sVar2 != null) {
            p0 p0Var2 = (p0) ((HashMap) bVar.f48c).get(sVar2.f);
            if (p0Var2 == null) {
                throw new IllegalStateException("Fragment " + sVar + " declared target fragment " + sVar.f1525h + " that does not belong to this FragmentManager!");
            }
            sVar.f1526i = sVar.f1525h.f;
            sVar.f1525h = null;
            p0Var = p0Var2;
        } else {
            String str = sVar.f1526i;
            if (str != null && (p0Var = (p0) ((HashMap) bVar.f48c).get(str)) == null) {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(sVar);
                sb.append(" declared target fragment ");
                throw new IllegalStateException(a.e.t(sb, sVar.f1526i, " that does not belong to this FragmentManager!"));
            }
        }
        if (p0Var != null) {
            p0Var.k();
        }
        j0 j0Var = sVar.f1536s;
        sVar.f1537t = j0Var.f1468n;
        sVar.f1539v = j0Var.f1470p;
        a7.f fVar = this.f1509a;
        fVar.r(sVar, false);
        ArrayList arrayList = sVar.R;
        Iterator it = arrayList.iterator();
        if (it.hasNext()) {
            throw a.e.l(it);
        }
        arrayList.clear();
        sVar.f1538u.b(sVar.f1537t, sVar.b(), sVar);
        sVar.f1520a = 0;
        sVar.D = false;
        sVar.r(sVar.f1537t.f1555g);
        if (!sVar.D) {
            throw new w0("Fragment " + sVar + " did not call through to super.onAttach()");
        }
        Iterator it2 = sVar.f1536s.f1466l.iterator();
        while (it2.hasNext()) {
            ((m0) it2.next()).b();
        }
        k0 k0Var = sVar.f1538u;
        k0Var.f1479y = false;
        k0Var.f1480z = false;
        k0Var.F.f1487i = false;
        k0Var.p(0);
        fVar.m(sVar, false);
    }

    public final int d() {
        v0 v0Var;
        s sVar = this.f1511c;
        if (sVar.f1536s == null) {
            return sVar.f1520a;
        }
        int iMin = this.f1512e;
        int iOrdinal = sVar.L.ordinal();
        if (iOrdinal == 1) {
            iMin = Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = Math.min(iMin, -1);
        }
        if (sVar.f1531n) {
            if (sVar.f1532o) {
                iMin = Math.max(this.f1512e, 2);
                View view = sVar.F;
                if (view != null && view.getParent() == null) {
                    iMin = Math.min(iMin, 2);
                }
            } else {
                iMin = this.f1512e < 4 ? Math.min(iMin, sVar.f1520a) : Math.min(iMin, 1);
            }
        }
        if (!sVar.f1529l) {
            iMin = Math.min(iMin, 1);
        }
        ViewGroup viewGroup = sVar.E;
        if (viewGroup != null) {
            i iVarF = i.f(viewGroup, sVar.l().D());
            iVarF.getClass();
            v0 v0VarD = iVarF.d(sVar);
            i = v0VarD != null ? v0VarD.f1560b : 0;
            Iterator it = iVarF.f1452c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    v0Var = null;
                    break;
                }
                v0Var = (v0) it.next();
                if (v0Var.f1561c.equals(sVar) && !v0Var.f) {
                    break;
                }
            }
            if (v0Var != null && (i == 0 || i == 1)) {
                i = v0Var.f1560b;
            }
        }
        if (i == 2) {
            iMin = Math.min(iMin, 6);
        } else if (i == 3) {
            iMin = Math.max(iMin, 3);
        } else if (sVar.f1530m) {
            iMin = sVar.f1535r > 0 ? Math.min(iMin, 1) : Math.min(iMin, -1);
        }
        if (sVar.G && sVar.f1520a < 5) {
            iMin = Math.min(iMin, 4);
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + iMin + " for " + sVar);
        }
        return iMin;
    }

    public final void e() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        s sVar = this.f1511c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto CREATED: " + sVar);
        }
        if (sVar.K) {
            sVar.M(sVar.f1521b);
            sVar.f1520a = 1;
            return;
        }
        Bundle bundle = sVar.f1521b;
        a7.f fVar = this.f1509a;
        fVar.s(sVar, bundle, false);
        Bundle bundle2 = sVar.f1521b;
        sVar.f1538u.K();
        sVar.f1520a = 1;
        sVar.D = false;
        sVar.M.a(new o(sVar));
        sVar.Q.e(bundle2);
        sVar.s(bundle2);
        sVar.K = true;
        if (sVar.D) {
            sVar.M.f(androidx.lifecycle.n.ON_CREATE);
            fVar.n(sVar, sVar.f1521b, false);
        } else {
            throw new w0("Fragment " + sVar + " did not call through to super.onCreate()");
        }
    }

    public final void f() throws Resources.NotFoundException {
        String resourceName;
        s sVar = this.f1511c;
        if (sVar.f1531n) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + sVar);
        }
        LayoutInflater layoutInflaterX = sVar.x(sVar.f1521b);
        ViewGroup viewGroup = sVar.E;
        if (viewGroup == null) {
            int i6 = sVar.f1541x;
            if (i6 == 0) {
                viewGroup = null;
            } else {
                if (i6 == -1) {
                    throw new IllegalArgumentException("Cannot create fragment " + sVar + " for a container view with no id");
                }
                viewGroup = (ViewGroup) sVar.f1536s.f1469o.B(i6);
                if (viewGroup == null && !sVar.f1533p) {
                    try {
                        resourceName = sVar.m().getResourceName(sVar.f1541x);
                    } catch (Resources.NotFoundException unused) {
                        resourceName = "unknown";
                    }
                    throw new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(sVar.f1541x) + " (" + resourceName + ") for fragment " + sVar);
                }
            }
        }
        sVar.E = viewGroup;
        sVar.F(layoutInflaterX, viewGroup, sVar.f1521b);
        View view = sVar.F;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            sVar.F.setTag(R.id.fragment_container_view_tag, sVar);
            if (viewGroup != null) {
                b();
            }
            if (sVar.f1543z) {
                sVar.F.setVisibility(8);
            }
            View view2 = sVar.F;
            WeakHashMap weakHashMap = n0.s0.f8353a;
            if (view2.isAttachedToWindow()) {
                n0.e0.c(sVar.F);
            } else {
                View view3 = sVar.F;
                view3.addOnAttachStateChangeListener(new o0(view3));
            }
            sVar.D();
            sVar.f1538u.p(2);
            this.f1509a.x(sVar, sVar.F, sVar.f1521b, false);
            int visibility = sVar.F.getVisibility();
            sVar.g().f1507j = sVar.F.getAlpha();
            if (sVar.E != null && visibility == 0) {
                View viewFindFocus = sVar.F.findFocus();
                if (viewFindFocus != null) {
                    sVar.g().f1508k = viewFindFocus;
                    if (Log.isLoggable("FragmentManager", 2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + sVar);
                    }
                }
                sVar.F.setAlpha(0.0f);
            }
        }
        sVar.f1520a = 2;
    }

    public final void g() {
        s sVarL;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        s sVar = this.f1511c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom CREATED: " + sVar);
        }
        boolean zIsChangingConfigurations = true;
        boolean z7 = sVar.f1530m && sVar.f1535r <= 0;
        a1.b bVar = this.f1510b;
        if (!z7) {
            l0 l0Var = (l0) bVar.d;
            if (!((l0Var.d.containsKey(sVar.f) && l0Var.f1485g) ? l0Var.f1486h : true)) {
                String str = sVar.f1526i;
                if (str != null && (sVarL = bVar.l(str)) != null && sVarL.B) {
                    sVar.f1525h = sVarL;
                }
                sVar.f1520a = 0;
                return;
            }
        }
        v vVar = sVar.f1537t;
        if (vVar instanceof a1) {
            zIsChangingConfigurations = ((l0) bVar.d).f1486h;
        } else {
            FragmentActivity fragmentActivity = vVar.f1555g;
            if (fragmentActivity instanceof Activity) {
                zIsChangingConfigurations = true ^ fragmentActivity.isChangingConfigurations();
            }
        }
        if (z7 || zIsChangingConfigurations) {
            l0 l0Var2 = (l0) bVar.d;
            l0Var2.getClass();
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "Clearing non-config state for " + sVar);
            }
            HashMap map = l0Var2.f1484e;
            l0 l0Var3 = (l0) map.get(sVar.f);
            if (l0Var3 != null) {
                l0Var3.b();
                map.remove(sVar.f);
            }
            HashMap map2 = l0Var2.f;
            z0 z0Var = (z0) map2.get(sVar.f);
            if (z0Var != null) {
                z0Var.a();
                map2.remove(sVar.f);
            }
        }
        sVar.f1538u.k();
        sVar.M.f(androidx.lifecycle.n.ON_DESTROY);
        sVar.f1520a = 0;
        sVar.D = false;
        sVar.K = false;
        sVar.u();
        if (!sVar.D) {
            throw new w0("Fragment " + sVar + " did not call through to super.onDestroy()");
        }
        this.f1509a.o(sVar, false);
        Iterator it = bVar.q().iterator();
        while (it.hasNext()) {
            p0 p0Var = (p0) it.next();
            if (p0Var != null) {
                String str2 = sVar.f;
                s sVar2 = p0Var.f1511c;
                if (str2.equals(sVar2.f1526i)) {
                    sVar2.f1525h = sVar;
                    sVar2.f1526i = null;
                }
            }
        }
        String str3 = sVar.f1526i;
        if (str3 != null) {
            sVar.f1525h = bVar.l(str3);
        }
        bVar.A(this);
    }

    public final void h() {
        View view;
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        s sVar = this.f1511c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + sVar);
        }
        ViewGroup viewGroup = sVar.E;
        if (viewGroup != null && (view = sVar.F) != null) {
            viewGroup.removeView(view);
        }
        sVar.f1538u.p(1);
        if (sVar.F != null) {
            s0 s0Var = sVar.N;
            s0Var.g();
            if (s0Var.d.d.compareTo(androidx.lifecycle.o.f1982c) >= 0) {
                sVar.N.b(androidx.lifecycle.n.ON_DESTROY);
            }
        }
        sVar.f1520a = 1;
        sVar.D = false;
        sVar.v();
        if (!sVar.D) {
            throw new w0("Fragment " + sVar + " did not call through to super.onDestroyView()");
        }
        p.m mVar = ((k1.b) new a1.b(sVar.e(), k1.b.f7696e).n(k1.b.class)).d;
        int i6 = mVar.f8861c;
        for (int i10 = 0; i10 < i6; i10++) {
            ((k1.a) mVar.f8860b[i10]).getClass();
        }
        sVar.f1534q = false;
        this.f1509a.y(sVar, false);
        sVar.E = null;
        sVar.F = null;
        sVar.N = null;
        sVar.O.j(null);
        sVar.f1532o = false;
    }

    public final void i() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        s sVar = this.f1511c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + sVar);
        }
        sVar.f1520a = -1;
        sVar.D = false;
        sVar.w();
        if (!sVar.D) {
            throw new w0("Fragment " + sVar + " did not call through to super.onDetach()");
        }
        k0 k0Var = sVar.f1538u;
        if (!k0Var.A) {
            k0Var.k();
            sVar.f1538u = new k0();
        }
        this.f1509a.p(sVar, false);
        sVar.f1520a = -1;
        sVar.f1537t = null;
        sVar.f1539v = null;
        sVar.f1536s = null;
        if (!sVar.f1530m || sVar.f1535r > 0) {
            l0 l0Var = (l0) this.f1510b.d;
            boolean z7 = true;
            if (l0Var.d.containsKey(sVar.f) && l0Var.f1485g) {
                z7 = l0Var.f1486h;
            }
            if (!z7) {
                return;
            }
        }
        if (Log.isLoggable("FragmentManager", 3)) {
            Log.d("FragmentManager", "initState called for fragment: " + sVar);
        }
        sVar.M = new androidx.lifecycle.y(sVar);
        sVar.Q = new k3.t(sVar);
        sVar.P = null;
        sVar.f = UUID.randomUUID().toString();
        sVar.f1529l = false;
        sVar.f1530m = false;
        sVar.f1531n = false;
        sVar.f1532o = false;
        sVar.f1533p = false;
        sVar.f1535r = 0;
        sVar.f1536s = null;
        sVar.f1538u = new k0();
        sVar.f1537t = null;
        sVar.f1540w = 0;
        sVar.f1541x = 0;
        sVar.f1542y = null;
        sVar.f1543z = false;
        sVar.A = false;
    }

    public final void j() {
        s sVar = this.f1511c;
        if (sVar.f1531n && sVar.f1532o && !sVar.f1534q) {
            if (Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + sVar);
            }
            sVar.F(sVar.x(sVar.f1521b), null, sVar.f1521b);
            View view = sVar.F;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                sVar.F.setTag(R.id.fragment_container_view_tag, sVar);
                if (sVar.f1543z) {
                    sVar.F.setVisibility(8);
                }
                sVar.D();
                sVar.f1538u.p(2);
                this.f1509a.x(sVar, sVar.F, sVar.f1521b, false);
                sVar.f1520a = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z7 = this.d;
        s sVar = this.f1511c;
        if (z7) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + sVar);
                return;
            }
            return;
        }
        try {
            this.d = true;
            while (true) {
                int iD = d();
                int i6 = sVar.f1520a;
                if (iD == i6) {
                    if (sVar.J) {
                        if (sVar.F != null && (viewGroup = sVar.E) != null) {
                            i iVarF = i.f(viewGroup, sVar.l().D());
                            if (sVar.f1543z) {
                                iVarF.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + sVar);
                                }
                                iVarF.a(3, 1, this);
                            } else {
                                iVarF.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + sVar);
                                }
                                iVarF.a(2, 1, this);
                            }
                        }
                        j0 j0Var = sVar.f1536s;
                        if (j0Var != null && sVar.f1529l && j0.F(sVar)) {
                            j0Var.f1478x = true;
                        }
                        sVar.J = false;
                    }
                    this.d = false;
                    return;
                }
                if (iD <= i6) {
                    switch (i6 - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            sVar.f1520a = 1;
                            break;
                        case 2:
                            sVar.f1532o = false;
                            sVar.f1520a = 2;
                            break;
                        case 3:
                            if (Log.isLoggable("FragmentManager", 3)) {
                                Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + sVar);
                            }
                            if (sVar.F != null && sVar.f1522c == null) {
                                p();
                            }
                            if (sVar.F != null && (viewGroup3 = sVar.E) != null) {
                                i iVarF2 = i.f(viewGroup3, sVar.l().D());
                                iVarF2.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + sVar);
                                }
                                iVarF2.a(1, 3, this);
                            }
                            sVar.f1520a = 3;
                            break;
                        case 4:
                            r();
                            break;
                        case 5:
                            sVar.f1520a = 5;
                            break;
                        case 6:
                            l();
                            break;
                    }
                } else {
                    switch (i6 + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (sVar.F != null && (viewGroup2 = sVar.E) != null) {
                                i iVarF3 = i.f(viewGroup2, sVar.l().D());
                                int iB = a.e.b(sVar.F.getVisibility());
                                iVarF3.getClass();
                                if (Log.isLoggable("FragmentManager", 2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + sVar);
                                }
                                iVarF3.a(iB, 2, this);
                            }
                            sVar.f1520a = 4;
                            break;
                        case 5:
                            q();
                            break;
                        case 6:
                            sVar.f1520a = 6;
                            break;
                        case 7:
                            n();
                            break;
                    }
                }
            }
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    public final void l() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        s sVar = this.f1511c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom RESUMED: " + sVar);
        }
        sVar.f1538u.p(5);
        if (sVar.F != null) {
            sVar.N.b(androidx.lifecycle.n.ON_PAUSE);
        }
        sVar.M.f(androidx.lifecycle.n.ON_PAUSE);
        sVar.f1520a = 6;
        sVar.D = false;
        sVar.y();
        if (sVar.D) {
            this.f1509a.q(sVar, false);
            return;
        }
        throw new w0("Fragment " + sVar + " did not call through to super.onPause()");
    }

    public final void m(ClassLoader classLoader) {
        s sVar = this.f1511c;
        Bundle bundle = sVar.f1521b;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        sVar.f1522c = sVar.f1521b.getSparseParcelableArray("android:view_state");
        sVar.d = sVar.f1521b.getBundle("android:view_registry_state");
        sVar.f1526i = sVar.f1521b.getString("android:target_state");
        if (sVar.f1526i != null) {
            sVar.f1527j = sVar.f1521b.getInt("android:target_req_state", 0);
        }
        Boolean bool = sVar.f1523e;
        if (bool != null) {
            sVar.H = bool.booleanValue();
            sVar.f1523e = null;
        } else {
            sVar.H = sVar.f1521b.getBoolean("android:user_visible_hint", true);
        }
        if (sVar.H) {
            return;
        }
        sVar.G = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void n() {
        /*
            r7 = this;
            r0 = 3
            java.lang.String r1 = "FragmentManager"
            boolean r0 = android.util.Log.isLoggable(r1, r0)
            androidx.fragment.app.s r2 = r7.f1511c
            if (r0 == 0) goto L1c
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "moveto RESUMED: "
            r0.<init>(r3)
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r1, r0)
        L1c:
            androidx.fragment.app.p r0 = r2.I
            r3 = 0
            if (r0 != 0) goto L23
            r0 = r3
            goto L25
        L23:
            android.view.View r0 = r0.f1508k
        L25:
            if (r0 == 0) goto L7d
            android.view.View r4 = r2.F
            if (r0 != r4) goto L2c
            goto L36
        L2c:
            android.view.ViewParent r4 = r0.getParent()
        L30:
            if (r4 == 0) goto L7d
            android.view.View r5 = r2.F
            if (r4 != r5) goto L78
        L36:
            boolean r4 = r0.requestFocus()
            r5 = 2
            boolean r5 = android.util.Log.isLoggable(r1, r5)
            if (r5 == 0) goto L7d
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "requestFocus: Restoring focused view "
            r5.<init>(r6)
            r5.append(r0)
            java.lang.String r0 = " "
            r5.append(r0)
            if (r4 == 0) goto L55
            java.lang.String r0 = "succeeded"
            goto L57
        L55:
            java.lang.String r0 = "failed"
        L57:
            r5.append(r0)
            java.lang.String r0 = " on Fragment "
            r5.append(r0)
            r5.append(r2)
            java.lang.String r0 = " resulting in focused view "
            r5.append(r0)
            android.view.View r0 = r2.F
            android.view.View r0 = r0.findFocus()
            r5.append(r0)
            java.lang.String r0 = r5.toString()
            android.util.Log.v(r1, r0)
            goto L7d
        L78:
            android.view.ViewParent r4 = r4.getParent()
            goto L30
        L7d:
            androidx.fragment.app.p r0 = r2.g()
            r0.f1508k = r3
            androidx.fragment.app.k0 r0 = r2.f1538u
            r0.K()
            androidx.fragment.app.k0 r0 = r2.f1538u
            r1 = 1
            r0.u(r1)
            r0 = 7
            r2.f1520a = r0
            r1 = 0
            r2.D = r1
            r2.z()
            boolean r4 = r2.D
            if (r4 == 0) goto Lc6
            androidx.lifecycle.y r4 = r2.M
            androidx.lifecycle.n r5 = androidx.lifecycle.n.ON_RESUME
            r4.f(r5)
            android.view.View r4 = r2.F
            if (r4 == 0) goto Lad
            androidx.fragment.app.s0 r4 = r2.N
            androidx.lifecycle.y r4 = r4.d
            r4.f(r5)
        Lad:
            androidx.fragment.app.k0 r4 = r2.f1538u
            r4.f1479y = r1
            r4.f1480z = r1
            androidx.fragment.app.l0 r5 = r4.F
            r5.f1487i = r1
            r4.p(r0)
            a7.f r0 = r7.f1509a
            r0.t(r2, r1)
            r2.f1521b = r3
            r2.f1522c = r3
            r2.d = r3
            return
        Lc6:
            androidx.fragment.app.w0 r0 = new androidx.fragment.app.w0
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r3 = "Fragment "
            r1.<init>(r3)
            r1.append(r2)
            java.lang.String r2 = " did not call through to super.onResume()"
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.p0.n():void");
    }

    public final Bundle o() {
        Bundle bundle = new Bundle();
        s sVar = this.f1511c;
        sVar.A(bundle);
        sVar.Q.f(bundle);
        Parcelable parcelableQ = sVar.f1538u.Q();
        if (parcelableQ != null) {
            bundle.putParcelable("android:support:fragments", parcelableQ);
        }
        this.f1509a.u(sVar, bundle, false);
        if (bundle.isEmpty()) {
            bundle = null;
        }
        if (sVar.F != null) {
            p();
        }
        if (sVar.f1522c != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", sVar.f1522c);
        }
        if (sVar.d != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBundle("android:view_registry_state", sVar.d);
        }
        if (!sVar.H) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", sVar.H);
        }
        return bundle;
    }

    public final void p() {
        s sVar = this.f1511c;
        if (sVar.F == null) {
            return;
        }
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        sVar.F.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            sVar.f1522c = sparseArray;
        }
        Bundle bundle = new Bundle();
        sVar.N.f1547e.f(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        sVar.d = bundle;
    }

    public final void q() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        s sVar = this.f1511c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "moveto STARTED: " + sVar);
        }
        sVar.f1538u.K();
        sVar.f1538u.u(true);
        sVar.f1520a = 5;
        sVar.D = false;
        sVar.B();
        if (!sVar.D) {
            throw new w0("Fragment " + sVar + " did not call through to super.onStart()");
        }
        androidx.lifecycle.y yVar = sVar.M;
        androidx.lifecycle.n nVar = androidx.lifecycle.n.ON_START;
        yVar.f(nVar);
        if (sVar.F != null) {
            sVar.N.d.f(nVar);
        }
        k0 k0Var = sVar.f1538u;
        k0Var.f1479y = false;
        k0Var.f1480z = false;
        k0Var.F.f1487i = false;
        k0Var.p(5);
        this.f1509a.v(sVar, false);
    }

    public final void r() {
        boolean zIsLoggable = Log.isLoggable("FragmentManager", 3);
        s sVar = this.f1511c;
        if (zIsLoggable) {
            Log.d("FragmentManager", "movefrom STARTED: " + sVar);
        }
        k0 k0Var = sVar.f1538u;
        k0Var.f1480z = true;
        k0Var.F.f1487i = true;
        k0Var.p(4);
        if (sVar.F != null) {
            sVar.N.b(androidx.lifecycle.n.ON_STOP);
        }
        sVar.M.f(androidx.lifecycle.n.ON_STOP);
        sVar.f1520a = 4;
        sVar.D = false;
        sVar.C();
        if (sVar.D) {
            this.f1509a.w(sVar, false);
            return;
        }
        throw new w0("Fragment " + sVar + " did not call through to super.onStop()");
    }

    public p0(a7.f fVar, a1.b bVar, ClassLoader classLoader, d0 d0Var, FragmentState fragmentState) {
        this.f1509a = fVar;
        this.f1510b = bVar;
        s sVarA = d0Var.a(fragmentState.f1395a);
        this.f1511c = sVarA;
        Bundle bundle = fragmentState.f1402j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        sVarA.O(bundle);
        sVarA.f = fragmentState.f1396b;
        sVarA.f1531n = fragmentState.f1397c;
        sVarA.f1533p = true;
        sVarA.f1540w = fragmentState.d;
        sVarA.f1541x = fragmentState.f1398e;
        sVarA.f1542y = fragmentState.f;
        sVarA.B = fragmentState.f1399g;
        sVarA.f1530m = fragmentState.f1400h;
        sVarA.A = fragmentState.f1401i;
        sVarA.f1543z = fragmentState.f1403k;
        sVarA.L = androidx.lifecycle.o.values()[fragmentState.f1404l];
        Bundle bundle2 = fragmentState.f1405m;
        if (bundle2 != null) {
            sVarA.f1521b = bundle2;
        } else {
            sVarA.f1521b = new Bundle();
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Instantiated fragment " + sVarA);
        }
    }

    public p0(a7.f fVar, a1.b bVar, s sVar, FragmentState fragmentState) {
        this.f1509a = fVar;
        this.f1510b = bVar;
        this.f1511c = sVar;
        sVar.f1522c = null;
        sVar.d = null;
        sVar.f1535r = 0;
        sVar.f1532o = false;
        sVar.f1529l = false;
        s sVar2 = sVar.f1525h;
        sVar.f1526i = sVar2 != null ? sVar2.f : null;
        sVar.f1525h = null;
        Bundle bundle = fragmentState.f1405m;
        if (bundle != null) {
            sVar.f1521b = bundle;
        } else {
            sVar.f1521b = new Bundle();
        }
    }
}
