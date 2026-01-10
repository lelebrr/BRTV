package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v0 {

    /* renamed from: a, reason: collision with root package name */
    public int f1559a;

    /* renamed from: b, reason: collision with root package name */
    public int f1560b;

    /* renamed from: c, reason: collision with root package name */
    public final s f1561c;
    public final ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f1562e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1563g;

    /* renamed from: h, reason: collision with root package name */
    public final p0 f1564h;

    public v0(int i6, int i10, p0 p0Var, j0.e eVar) {
        s sVar = p0Var.f1511c;
        this.d = new ArrayList();
        this.f1562e = new HashSet();
        this.f = false;
        this.f1563g = false;
        this.f1559a = i6;
        this.f1560b = i10;
        this.f1561c = sVar;
        eVar.a(new d(3, this));
        this.f1564h = p0Var;
    }

    public final void a() {
        if (this.f) {
            return;
        }
        this.f = true;
        HashSet hashSet = this.f1562e;
        if (hashSet.isEmpty()) {
            b();
            return;
        }
        Iterator it = new ArrayList(hashSet).iterator();
        while (it.hasNext()) {
            j0.e eVar = (j0.e) it.next();
            synchronized (eVar) {
                try {
                    if (!eVar.f7415a) {
                        eVar.f7415a = true;
                        eVar.f7417c = true;
                        j0.d dVar = eVar.f7416b;
                        if (dVar != null) {
                            try {
                                dVar.a();
                            } catch (Throwable th) {
                                synchronized (eVar) {
                                    eVar.f7417c = false;
                                    eVar.notifyAll();
                                    throw th;
                                }
                            }
                        }
                        synchronized (eVar) {
                            eVar.f7417c = false;
                            eVar.notifyAll();
                        }
                    }
                } finally {
                }
            }
        }
    }

    public final void b() {
        if (!this.f1563g) {
            if (Log.isLoggable("FragmentManager", 2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f1563g = true;
            Iterator it = this.d.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        }
        this.f1564h.k();
    }

    public final void c(int i6, int i10) {
        int iA = u.h.a(i10);
        s sVar = this.f1561c;
        if (iA == 0) {
            if (this.f1559a != 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + sVar + " mFinalState = " + a.e.F(this.f1559a) + " -> " + a.e.F(i6) + ". ");
                }
                this.f1559a = i6;
                return;
            }
            return;
        }
        if (iA == 1) {
            if (this.f1559a == 1) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + sVar + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + a.e.E(this.f1560b) + " to ADDING.");
                }
                this.f1559a = 2;
                this.f1560b = 2;
                return;
            }
            return;
        }
        if (iA != 2) {
            return;
        }
        if (Log.isLoggable("FragmentManager", 2)) {
            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + sVar + " mFinalState = " + a.e.F(this.f1559a) + " -> REMOVED. mLifecycleImpact  = " + a.e.E(this.f1560b) + " to REMOVING.");
        }
        this.f1559a = 1;
        this.f1560b = 3;
    }

    public final void d() {
        if (this.f1560b == 2) {
            p0 p0Var = this.f1564h;
            s sVar = p0Var.f1511c;
            View viewFindFocus = sVar.F.findFocus();
            if (viewFindFocus != null) {
                sVar.g().f1508k = viewFindFocus;
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + sVar);
                }
            }
            View viewL = this.f1561c.L();
            if (viewL.getParent() == null) {
                p0Var.b();
                viewL.setAlpha(0.0f);
            }
            if (viewL.getAlpha() == 0.0f && viewL.getVisibility() == 0) {
                viewL.setVisibility(4);
            }
            p pVar = sVar.I;
            viewL.setAlpha(pVar == null ? 1.0f : pVar.f1507j);
        }
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + a.e.F(this.f1559a) + "} {mLifecycleImpact = " + a.e.E(this.f1560b) + "} {mFragment = " + this.f1561c + "}";
    }
}
