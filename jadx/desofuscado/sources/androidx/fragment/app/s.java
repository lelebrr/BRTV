package androidx.fragment.app;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.a1;
import androidx.lifecycle.y0;
import androidx.lifecycle.z0;
import com.p2elite.brtv2.R;
import d7.c2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class s implements ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.w, a1, androidx.lifecycle.j, v1.e {
    public static final Object S = new Object();
    public boolean A;
    public boolean B;
    public boolean D;
    public ViewGroup E;
    public View F;
    public boolean G;
    public p I;
    public boolean J;
    public boolean K;
    public androidx.lifecycle.y M;
    public s0 N;
    public androidx.lifecycle.s0 P;
    public k3.t Q;
    public final ArrayList R;

    /* renamed from: b, reason: collision with root package name */
    public Bundle f1521b;

    /* renamed from: c, reason: collision with root package name */
    public SparseArray f1522c;
    public Bundle d;

    /* renamed from: e, reason: collision with root package name */
    public Boolean f1523e;

    /* renamed from: g, reason: collision with root package name */
    public Bundle f1524g;

    /* renamed from: h, reason: collision with root package name */
    public s f1525h;

    /* renamed from: j, reason: collision with root package name */
    public int f1527j;

    /* renamed from: l, reason: collision with root package name */
    public boolean f1529l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1530m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1531n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1532o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f1533p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f1534q;

    /* renamed from: r, reason: collision with root package name */
    public int f1535r;

    /* renamed from: s, reason: collision with root package name */
    public j0 f1536s;

    /* renamed from: t, reason: collision with root package name */
    public v f1537t;

    /* renamed from: v, reason: collision with root package name */
    public s f1539v;

    /* renamed from: w, reason: collision with root package name */
    public int f1540w;

    /* renamed from: x, reason: collision with root package name */
    public int f1541x;

    /* renamed from: y, reason: collision with root package name */
    public String f1542y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f1543z;

    /* renamed from: a, reason: collision with root package name */
    public int f1520a = -1;
    public String f = UUID.randomUUID().toString();

    /* renamed from: i, reason: collision with root package name */
    public String f1526i = null;

    /* renamed from: k, reason: collision with root package name */
    public Boolean f1528k = null;

    /* renamed from: u, reason: collision with root package name */
    public k0 f1538u = new k0();
    public boolean C = true;
    public boolean H = true;
    public androidx.lifecycle.o L = androidx.lifecycle.o.f1983e;
    public final androidx.lifecycle.d0 O = new androidx.lifecycle.d0();

    public s() {
        new AtomicInteger();
        this.R = new ArrayList();
        this.M = new androidx.lifecycle.y(this);
        this.Q = new k3.t(this);
        this.P = null;
    }

    public void B() {
        this.D = true;
    }

    public void C() {
        this.D = true;
    }

    public void E(Bundle bundle) {
        this.D = true;
    }

    public void F(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f1538u.K();
        this.f1534q = true;
        this.N = new s0(this, e());
        View viewT = t(layoutInflater, viewGroup, bundle);
        this.F = viewT;
        if (viewT == null) {
            if (this.N.d != null) {
                throw new IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.N = null;
            return;
        }
        this.N.g();
        View view = this.F;
        s0 s0Var = this.N;
        j9.i.f(view, "<this>");
        view.setTag(R.id.view_tree_lifecycle_owner, s0Var);
        View view2 = this.F;
        s0 s0Var2 = this.N;
        j9.i.f(view2, "<this>");
        view2.setTag(R.id.view_tree_view_model_store_owner, s0Var2);
        View view3 = this.F;
        s0 s0Var3 = this.N;
        j9.i.f(view3, "<this>");
        view3.setTag(R.id.view_tree_saved_state_registry_owner, s0Var3);
        this.O.j(this.N);
    }

    public final void G() {
        this.D = true;
        for (s sVar : this.f1538u.f1459c.w()) {
            if (sVar != null) {
                sVar.G();
            }
        }
    }

    public final void H(boolean z7) {
        for (s sVar : this.f1538u.f1459c.w()) {
            if (sVar != null) {
                sVar.H(z7);
            }
        }
    }

    public final void I(boolean z7) {
        for (s sVar : this.f1538u.f1459c.w()) {
            if (sVar != null) {
                sVar.I(z7);
            }
        }
    }

    public final FragmentActivity J() {
        FragmentActivity fragmentActivityH = h();
        if (fragmentActivityH != null) {
            return fragmentActivityH;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to an activity.");
    }

    public final Context K() {
        Context contextJ = j();
        if (contextJ != null) {
            return contextJ;
        }
        throw new IllegalStateException("Fragment " + this + " not attached to a context.");
    }

    public final View L() {
        View view = this.F;
        if (view != null) {
            return view;
        }
        throw new IllegalStateException("Fragment " + this + " did not return a View from onCreateView() or this was called before onCreateView().");
    }

    public final void M(Bundle bundle) {
        Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable("android:support:fragments")) == null) {
            return;
        }
        this.f1538u.P(parcelable);
        k0 k0Var = this.f1538u;
        k0Var.f1479y = false;
        k0Var.f1480z = false;
        k0Var.F.f1487i = false;
        k0Var.p(1);
    }

    public final void N(int i6, int i10, int i11, int i12) {
        if (this.I == null && i6 == 0 && i10 == 0 && i11 == 0 && i12 == 0) {
            return;
        }
        g().f1501b = i6;
        g().f1502c = i10;
        g().d = i11;
        g().f1503e = i12;
    }

    public final void O(Bundle bundle) {
        j0 j0Var = this.f1536s;
        if (j0Var != null) {
            if (j0Var == null ? false : j0Var.I()) {
                throw new IllegalStateException("Fragment already added and state has been saved");
            }
        }
        this.f1524g = bundle;
    }

    public final void P(boolean z7) {
        boolean z10 = false;
        if (!this.H && z7 && this.f1520a < 5 && this.f1536s != null && o() && this.K) {
            j0 j0Var = this.f1536s;
            p0 p0VarF = j0Var.f(this);
            s sVar = p0VarF.f1511c;
            if (sVar.G) {
                if (j0Var.f1458b) {
                    j0Var.B = true;
                } else {
                    sVar.G = false;
                    p0VarF.k();
                }
            }
        }
        this.H = z7;
        if (this.f1520a < 5 && !z7) {
            z10 = true;
        }
        this.G = z10;
        if (this.f1521b != null) {
            this.f1523e = Boolean.valueOf(z7);
        }
    }

    @Override // v1.e
    public final androidx.appcompat.widget.v a() {
        return (androidx.appcompat.widget.v) this.Q.d;
    }

    public o9.e b() {
        return new n(this);
    }

    @Override // androidx.lifecycle.j
    public final y0 c() {
        Application application;
        if (this.f1536s == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.P == null) {
            Context applicationContext = K().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof ContextWrapper)) {
                    application = null;
                    break;
                }
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
                applicationContext = ((ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && Log.isLoggable("FragmentManager", 3)) {
                Log.d("FragmentManager", "Could not find Application instance from Context " + K().getApplicationContext() + ", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
            }
            this.P = new androidx.lifecycle.s0(application, this, this.f1524g);
        }
        return this.P;
    }

    @Override // androidx.lifecycle.j
    public final c2 d() {
        return j1.a.f7427b;
    }

    @Override // androidx.lifecycle.a1
    public final z0 e() {
        if (this.f1536s == null) {
            throw new IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (k() == 1) {
            throw new IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        HashMap map = this.f1536s.F.f;
        z0 z0Var = (z0) map.get(this.f);
        if (z0Var != null) {
            return z0Var;
        }
        z0 z0Var2 = new z0();
        map.put(this.f, z0Var2);
        return z0Var2;
    }

    @Override // androidx.lifecycle.w
    public final androidx.lifecycle.p f() {
        return this.M;
    }

    public final p g() {
        if (this.I == null) {
            p pVar = new p();
            Object obj = S;
            pVar.f1504g = obj;
            pVar.f1505h = obj;
            pVar.f1506i = obj;
            pVar.f1507j = 1.0f;
            pVar.f1508k = null;
            this.I = pVar;
        }
        return this.I;
    }

    public final FragmentActivity h() {
        v vVar = this.f1537t;
        if (vVar == null) {
            return null;
        }
        return vVar.f;
    }

    public final j0 i() {
        if (this.f1537t != null) {
            return this.f1538u;
        }
        throw new IllegalStateException("Fragment " + this + " has not been attached yet.");
    }

    public final Context j() {
        v vVar = this.f1537t;
        if (vVar == null) {
            return null;
        }
        return vVar.f1555g;
    }

    public final int k() {
        androidx.lifecycle.o oVar = this.L;
        return (oVar == androidx.lifecycle.o.f1981b || this.f1539v == null) ? oVar.ordinal() : Math.min(oVar.ordinal(), this.f1539v.k());
    }

    public final j0 l() {
        j0 j0Var = this.f1536s;
        if (j0Var != null) {
            return j0Var;
        }
        throw new IllegalStateException("Fragment " + this + " not associated with a fragment manager.");
    }

    public final Resources m() {
        return K().getResources();
    }

    public final String n(int i6) {
        return m().getString(i6);
    }

    public final boolean o() {
        return this.f1537t != null && this.f1529l;
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        this.D = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        J().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.D = true;
    }

    public void p(int i6, int i10, Intent intent) {
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i6 + " resultCode: " + i10 + " data: " + intent);
        }
    }

    public void q(Activity activity) {
        this.D = true;
    }

    public void r(FragmentActivity fragmentActivity) {
        this.D = true;
        v vVar = this.f1537t;
        FragmentActivity fragmentActivity2 = vVar == null ? null : vVar.f;
        if (fragmentActivity2 != null) {
            this.D = false;
            q(fragmentActivity2);
        }
    }

    public void s(Bundle bundle) {
        this.D = true;
        M(bundle);
        k0 k0Var = this.f1538u;
        if (k0Var.f1467m >= 1) {
            return;
        }
        k0Var.f1479y = false;
        k0Var.f1480z = false;
        k0Var.F.f1487i = false;
        k0Var.p(1);
    }

    public View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return null;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.f);
        if (this.f1540w != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f1540w));
        }
        if (this.f1542y != null) {
            sb.append(" tag=");
            sb.append(this.f1542y);
        }
        sb.append(")");
        return sb.toString();
    }

    public void u() {
        this.D = true;
    }

    public void v() {
        this.D = true;
    }

    public void w() {
        this.D = true;
    }

    public LayoutInflater x(Bundle bundle) {
        v vVar = this.f1537t;
        if (vVar == null) {
            throw new IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        FragmentActivity fragmentActivity = vVar.f1558j;
        LayoutInflater layoutInflaterCloneInContext = fragmentActivity.getLayoutInflater().cloneInContext(fragmentActivity);
        layoutInflaterCloneInContext.setFactory2(this.f1538u.f);
        return layoutInflaterCloneInContext;
    }

    public void y() {
        this.D = true;
    }

    public void z() {
        this.D = true;
    }

    public void D() {
    }

    public void A(Bundle bundle) {
    }
}
