package androidx.fragment.app;

import android.animation.Animator;
import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f1450a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1451b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1452c = new ArrayList();
    public boolean d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1453e = false;

    public i(ViewGroup viewGroup) {
        this.f1450a = viewGroup;
    }

    public static i f(ViewGroup viewGroup, c0 c0Var) {
        Object tag = viewGroup.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof i) {
            return (i) tag;
        }
        c0Var.getClass();
        i iVar = new i(viewGroup);
        viewGroup.setTag(R.id.special_effects_controller_view_tag, iVar);
        return iVar;
    }

    public final void a(int i6, int i10, p0 p0Var) {
        synchronized (this.f1451b) {
            try {
                j0.e eVar = new j0.e();
                v0 v0VarD = d(p0Var.f1511c);
                if (v0VarD != null) {
                    v0VarD.c(i6, i10);
                    return;
                }
                v0 v0Var = new v0(i6, i10, p0Var, eVar);
                this.f1451b.add(v0Var);
                v0Var.d.add(new u0(this, v0Var, 0));
                v0Var.d.add(new u0(this, v0Var, 1));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(ArrayList arrayList, boolean z7) throws Resources.NotFoundException {
        Iterator it = arrayList.iterator();
        v0 v0Var = null;
        v0 v0Var2 = null;
        while (it.hasNext()) {
            v0 v0Var3 = (v0) it.next();
            int iC = a.e.c(v0Var3.f1561c.F);
            int iA = u.h.a(v0Var3.f1559a);
            if (iA != 0) {
                if (iA != 1) {
                    if (iA == 2 || iA == 3) {
                    }
                } else if (iC != 2) {
                    v0Var2 = v0Var3;
                }
            }
            if (iC == 2 && v0Var == null) {
                v0Var = v0Var3;
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList(arrayList);
        Iterator it2 = arrayList.iterator();
        while (true) {
            boolean z10 = false;
            if (!it2.hasNext()) {
                break;
            }
            v0 v0Var4 = (v0) it2.next();
            j0.e eVar = new j0.e();
            v0Var4.d();
            HashSet hashSet = v0Var4.f1562e;
            hashSet.add(eVar);
            g gVar = new g(v0Var4, eVar);
            gVar.d = false;
            gVar.f1448c = z7;
            arrayList2.add(gVar);
            j0.e eVar2 = new j0.e();
            v0Var4.d();
            hashSet.add(eVar2);
            if (!z7 ? v0Var4 == v0Var2 : v0Var4 == v0Var) {
                z10 = true;
            }
            h hVar = new h(v0Var4, eVar2);
            int i6 = v0Var4.f1559a;
            s sVar = v0Var4.f1561c;
            if (i6 == 2) {
                if (z7) {
                    sVar.getClass();
                } else {
                    sVar.getClass();
                }
                if (z7) {
                    sVar.getClass();
                } else {
                    sVar.getClass();
                }
            } else if (z7) {
                sVar.getClass();
            } else {
                sVar.getClass();
            }
            if (z10) {
                if (z7) {
                    sVar.getClass();
                } else {
                    sVar.getClass();
                }
            }
            arrayList3.add(hVar);
            v0Var4.d.add(new androidx.appcompat.app.c(this, arrayList4, v0Var4, 1));
        }
        HashMap map = new HashMap();
        Iterator it3 = arrayList3.iterator();
        while (it3.hasNext()) {
            v0 v0Var5 = (v0) ((h) it3.next()).f232a;
            a.e.c(v0Var5.f1561c.F);
            int i10 = v0Var5.f1559a;
        }
        Iterator it4 = arrayList3.iterator();
        while (it4.hasNext()) {
            h hVar2 = (h) it4.next();
            map.put((v0) hVar2.f232a, Boolean.FALSE);
            hVar2.d();
        }
        boolean zContainsValue = map.containsValue(Boolean.TRUE);
        ViewGroup viewGroup = this.f1450a;
        Context context = viewGroup.getContext();
        ArrayList arrayList5 = new ArrayList();
        Iterator it5 = arrayList2.iterator();
        boolean z11 = false;
        while (it5.hasNext()) {
            g gVar2 = (g) it5.next();
            v0 v0Var6 = (v0) gVar2.f232a;
            int iC2 = a.e.c(v0Var6.f1561c.F);
            int i11 = v0Var6.f1559a;
            if (iC2 == i11 || !(iC2 == 2 || i11 == 2)) {
                gVar2.d();
            } else {
                a7.f fVarN = gVar2.n(context);
                if (fVarN == null) {
                    gVar2.d();
                } else {
                    Animator animator = (Animator) fVarN.f170c;
                    if (animator == null) {
                        arrayList5.add(gVar2);
                    } else {
                        v0 v0Var7 = (v0) gVar2.f232a;
                        boolean zEquals = Boolean.TRUE.equals(map.get(v0Var7));
                        s sVar2 = v0Var7.f1561c;
                        if (zEquals) {
                            if (Log.isLoggable("FragmentManager", 2)) {
                                Log.v("FragmentManager", "Ignoring Animator set on " + sVar2 + " as this Fragment was involved in a Transition.");
                            }
                            gVar2.d();
                        } else {
                            boolean z12 = v0Var7.f1559a == 3;
                            if (z12) {
                                arrayList4.remove(v0Var7);
                            }
                            View view = sVar2.F;
                            viewGroup.startViewTransition(view);
                            animator.addListener(new c(viewGroup, view, z12, v0Var7, gVar2));
                            animator.setTarget(view);
                            animator.start();
                            ((j0.e) gVar2.f233b).a(new d(0, animator));
                            z11 = true;
                        }
                    }
                }
            }
        }
        Iterator it6 = arrayList5.iterator();
        while (it6.hasNext()) {
            g gVar3 = (g) it6.next();
            v0 v0Var8 = (v0) gVar3.f232a;
            s sVar3 = v0Var8.f1561c;
            if (zContainsValue) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + sVar3 + " as Animations cannot run alongside Transitions.");
                }
                gVar3.d();
            } else if (z11) {
                if (Log.isLoggable("FragmentManager", 2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + sVar3 + " as Animations cannot run alongside Animators.");
                }
                gVar3.d();
            } else {
                View view2 = sVar3.F;
                a7.f fVarN2 = gVar3.n(context);
                fVarN2.getClass();
                Animation animation = (Animation) fVarN2.f169b;
                animation.getClass();
                if (v0Var8.f1559a != 1) {
                    view2.startAnimation(animation);
                    gVar3.d();
                } else {
                    viewGroup.startViewTransition(view2);
                    w wVar = new w(animation, viewGroup, view2);
                    wVar.setAnimationListener(new f(viewGroup, view2, gVar3));
                    view2.startAnimation(wVar);
                }
                ((j0.e) gVar3.f233b).a(new a1.b(view2, viewGroup, gVar3, 6));
            }
        }
        Iterator it7 = arrayList4.iterator();
        while (it7.hasNext()) {
            v0 v0Var9 = (v0) it7.next();
            a.e.a(v0Var9.f1559a, v0Var9.f1561c.F);
        }
        arrayList4.clear();
    }

    public final void c() {
        if (this.f1453e) {
            return;
        }
        ViewGroup viewGroup = this.f1450a;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        if (!viewGroup.isAttachedToWindow()) {
            e();
            this.d = false;
            return;
        }
        synchronized (this.f1451b) {
            try {
                if (!this.f1451b.isEmpty()) {
                    ArrayList arrayList = new ArrayList(this.f1452c);
                    this.f1452c.clear();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        v0 v0Var = (v0) it.next();
                        if (Log.isLoggable("FragmentManager", 2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + v0Var);
                        }
                        v0Var.a();
                        if (!v0Var.f1563g) {
                            this.f1452c.add(v0Var);
                        }
                    }
                    g();
                    ArrayList arrayList2 = new ArrayList(this.f1451b);
                    this.f1451b.clear();
                    this.f1452c.addAll(arrayList2);
                    Iterator it2 = arrayList2.iterator();
                    while (it2.hasNext()) {
                        ((v0) it2.next()).d();
                    }
                    b(arrayList2, this.d);
                    this.d = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final v0 d(s sVar) {
        Iterator it = this.f1451b.iterator();
        while (it.hasNext()) {
            v0 v0Var = (v0) it.next();
            if (v0Var.f1561c.equals(sVar) && !v0Var.f) {
                return v0Var;
            }
        }
        return null;
    }

    public final void e() {
        String str;
        String str2;
        ViewGroup viewGroup = this.f1450a;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        boolean zIsAttachedToWindow = viewGroup.isAttachedToWindow();
        synchronized (this.f1451b) {
            try {
                g();
                Iterator it = this.f1451b.iterator();
                while (it.hasNext()) {
                    ((v0) it.next()).d();
                }
                Iterator it2 = new ArrayList(this.f1452c).iterator();
                while (it2.hasNext()) {
                    v0 v0Var = (v0) it2.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("SpecialEffectsController: ");
                        if (zIsAttachedToWindow) {
                            str2 = "";
                        } else {
                            str2 = "Container " + this.f1450a + " is not attached to window. ";
                        }
                        sb.append(str2);
                        sb.append("Cancelling running operation ");
                        sb.append(v0Var);
                        Log.v("FragmentManager", sb.toString());
                    }
                    v0Var.a();
                }
                Iterator it3 = new ArrayList(this.f1451b).iterator();
                while (it3.hasNext()) {
                    v0 v0Var2 = (v0) it3.next();
                    if (Log.isLoggable("FragmentManager", 2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("SpecialEffectsController: ");
                        if (zIsAttachedToWindow) {
                            str = "";
                        } else {
                            str = "Container " + this.f1450a + " is not attached to window. ";
                        }
                        sb2.append(str);
                        sb2.append("Cancelling pending operation ");
                        sb2.append(v0Var2);
                        Log.v("FragmentManager", sb2.toString());
                    }
                    v0Var2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        Iterator it = this.f1451b.iterator();
        while (it.hasNext()) {
            v0 v0Var = (v0) it.next();
            if (v0Var.f1560b == 2) {
                v0Var.c(a.e.b(v0Var.f1561c.L().getVisibility()), 1);
            }
        }
    }
}
