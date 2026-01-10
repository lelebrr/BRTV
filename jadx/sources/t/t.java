package t;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.Constraints;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public v.f f10026a = new v.f();

    /* renamed from: b, reason: collision with root package name */
    public v.f f10027b = new v.f();

    /* renamed from: c, reason: collision with root package name */
    public androidx.constraintlayout.widget.d f10028c = null;
    public androidx.constraintlayout.widget.d d = null;

    /* renamed from: e, reason: collision with root package name */
    public int f10029e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ MotionLayout f10030g;

    public t(MotionLayout motionLayout) {
        this.f10030g = motionLayout;
    }

    public static void b(v.f fVar, v.f fVar2) {
        ArrayList arrayList = fVar.f10563g0;
        HashMap map = new HashMap();
        map.put(fVar, fVar2);
        fVar2.f10563g0.clear();
        fVar2.f(fVar, map);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            v.e eVar = (v.e) it.next();
            v.e aVar = eVar instanceof v.a ? new v.a() : eVar instanceof v.i ? new v.i() : eVar instanceof v.h ? new v.h() : eVar instanceof v.j ? new v.j() : new v.e();
            fVar2.f10563g0.add(aVar);
            v.e eVar2 = aVar.K;
            if (eVar2 != null) {
                ((v.f) eVar2).f10563g0.remove(aVar);
                aVar.K = null;
            }
            aVar.K = fVar2;
            map.put(eVar, aVar);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            v.e eVar3 = (v.e) it2.next();
            ((v.e) map.get(eVar3)).f(eVar3, map);
        }
    }

    public static v.e c(v.f fVar, View view) {
        if (fVar.W == view) {
            return fVar;
        }
        ArrayList arrayList = fVar.f10563g0;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            v.e eVar = (v.e) arrayList.get(i6);
            if (eVar.W == view) {
                return eVar;
            }
        }
        return null;
    }

    public final void a() {
        int i6;
        MotionLayout motionLayout = this.f10030g;
        int childCount = motionLayout.getChildCount();
        motionLayout.f976z.clear();
        int i10 = 0;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = motionLayout.getChildAt(i11);
            motionLayout.f976z.put(childAt, new o(childAt));
        }
        while (i10 < childCount) {
            View childAt2 = motionLayout.getChildAt(i10);
            o oVar = (o) motionLayout.f976z.get(childAt2);
            if (oVar == null) {
                i6 = childCount;
            } else {
                if (this.f10028c != null) {
                    v.e eVarC = c(this.f10026a, childAt2);
                    if (eVarC != null) {
                        androidx.constraintlayout.widget.d dVar = this.f10028c;
                        y yVar = oVar.d;
                        yVar.f10044c = 0.0f;
                        yVar.d = 0.0f;
                        oVar.d(yVar);
                        float fN = eVarC.n();
                        float fO = eVarC.o();
                        float fM = eVarC.m();
                        i6 = childCount;
                        float fJ = eVarC.j();
                        yVar.f10045e = fN;
                        yVar.f = fO;
                        yVar.f10046g = fM;
                        yVar.f10047h = fJ;
                        androidx.constraintlayout.widget.c cVarG = dVar.g(oVar.f9967b);
                        yVar.a(cVarG);
                        oVar.f9973j = cVarG.f1093c.f;
                        oVar.f.c(eVarC, dVar, oVar.f9967b);
                    } else {
                        i6 = childCount;
                        if (motionLayout.J != 0) {
                            Log.e("MotionLayout", a2.a.w() + "no widget for  " + a2.a.y(childAt2) + " (" + childAt2.getClass().getName() + ")");
                        }
                    }
                } else {
                    i6 = childCount;
                }
                if (this.d != null) {
                    v.e eVarC2 = c(this.f10027b, childAt2);
                    if (eVarC2 != null) {
                        androidx.constraintlayout.widget.d dVar2 = this.d;
                        y yVar2 = oVar.f9969e;
                        yVar2.f10044c = 1.0f;
                        yVar2.d = 1.0f;
                        oVar.d(yVar2);
                        float fN2 = eVarC2.n();
                        float fO2 = eVarC2.o();
                        float fM2 = eVarC2.m();
                        float fJ2 = eVarC2.j();
                        yVar2.f10045e = fN2;
                        yVar2.f = fO2;
                        yVar2.f10046g = fM2;
                        yVar2.f10047h = fJ2;
                        yVar2.a(dVar2.g(oVar.f9967b));
                        oVar.f9970g.c(eVarC2, dVar2, oVar.f9967b);
                    } else if (motionLayout.J != 0) {
                        Log.e("MotionLayout", a2.a.w() + "no widget for  " + a2.a.y(childAt2) + " (" + childAt2.getClass().getName() + ")");
                    }
                }
            }
            i10++;
            childCount = i6;
        }
    }

    public final void d(androidx.constraintlayout.widget.d dVar, androidx.constraintlayout.widget.d dVar2) {
        this.f10028c = dVar;
        this.d = dVar2;
        this.f10026a = new v.f();
        v.f fVar = new v.f();
        this.f10027b = fVar;
        v.f fVar2 = this.f10026a;
        int i6 = MotionLayout.A0;
        MotionLayout motionLayout = this.f10030g;
        v.f fVar3 = motionLayout.f1021c;
        w.c cVar = fVar3.f10565j0;
        fVar2.f10565j0 = cVar;
        fVar2.i0.f = cVar;
        w.c cVar2 = fVar3.f10565j0;
        fVar.f10565j0 = cVar2;
        fVar.i0.f = cVar2;
        fVar2.f10563g0.clear();
        this.f10027b.f10563g0.clear();
        b(motionLayout.f1021c, this.f10026a);
        b(motionLayout.f1021c, this.f10027b);
        if (motionLayout.D > 0.5d) {
            if (dVar != null) {
                f(this.f10026a, dVar);
            }
            f(this.f10027b, dVar2);
        } else {
            f(this.f10027b, dVar2);
            if (dVar != null) {
                f(this.f10026a, dVar);
            }
        }
        this.f10026a.f10566k0 = motionLayout.k();
        this.f10026a.G();
        this.f10027b.f10566k0 = motionLayout.k();
        this.f10027b.G();
        ViewGroup.LayoutParams layoutParams = motionLayout.getLayoutParams();
        if (layoutParams != null) {
            int i10 = layoutParams.width;
            v.d dVar3 = v.d.f10530b;
            if (i10 == -2) {
                this.f10026a.x(dVar3);
                this.f10027b.x(dVar3);
            }
            if (layoutParams.height == -2) {
                this.f10026a.y(dVar3);
                this.f10027b.y(dVar3);
            }
        }
    }

    public final void e() {
        MotionLayout motionLayout = this.f10030g;
        int i6 = motionLayout.f971w;
        int i10 = motionLayout.f973x;
        int mode = View.MeasureSpec.getMode(i6);
        int mode2 = View.MeasureSpec.getMode(i10);
        motionLayout.f957o0 = mode;
        motionLayout.f958p0 = mode2;
        int optimizationLevel = motionLayout.getOptimizationLevel();
        if (motionLayout.f967u == motionLayout.getStartState()) {
            motionLayout.n(this.f10027b, optimizationLevel, i6, i10);
            if (this.f10028c != null) {
                motionLayout.n(this.f10026a, optimizationLevel, i6, i10);
            }
        } else {
            if (this.f10028c != null) {
                motionLayout.n(this.f10026a, optimizationLevel, i6, i10);
            }
            motionLayout.n(this.f10027b, optimizationLevel, i6, i10);
        }
        int i11 = 0;
        if (!(motionLayout.getParent() instanceof MotionLayout) || mode != 1073741824 || mode2 != 1073741824) {
            motionLayout.f957o0 = mode;
            motionLayout.f958p0 = mode2;
            if (motionLayout.f967u == motionLayout.getStartState()) {
                motionLayout.n(this.f10027b, optimizationLevel, i6, i10);
                if (this.f10028c != null) {
                    motionLayout.n(this.f10026a, optimizationLevel, i6, i10);
                }
            } else {
                if (this.f10028c != null) {
                    motionLayout.n(this.f10026a, optimizationLevel, i6, i10);
                }
                motionLayout.n(this.f10027b, optimizationLevel, i6, i10);
            }
            motionLayout.f953k0 = this.f10026a.m();
            motionLayout.f954l0 = this.f10026a.j();
            motionLayout.f955m0 = this.f10027b.m();
            int iJ = this.f10027b.j();
            motionLayout.f956n0 = iJ;
            motionLayout.f952j0 = (motionLayout.f953k0 == motionLayout.f955m0 && motionLayout.f954l0 == iJ) ? false : true;
        }
        int i12 = motionLayout.f953k0;
        int i13 = motionLayout.f954l0;
        int i14 = motionLayout.f957o0;
        if (i14 == Integer.MIN_VALUE || i14 == 0) {
            i12 = (int) ((motionLayout.f960q0 * (motionLayout.f955m0 - i12)) + i12);
        }
        int i15 = i12;
        int i16 = motionLayout.f958p0;
        int i17 = (i16 == Integer.MIN_VALUE || i16 == 0) ? (int) ((motionLayout.f960q0 * (motionLayout.f956n0 - i13)) + i13) : i13;
        v.f fVar = this.f10026a;
        motionLayout.m(i6, i10, i15, i17, fVar.f10575t0 || this.f10027b.f10575t0, fVar.f10576u0 || this.f10027b.f10576u0);
        int childCount = motionLayout.getChildCount();
        motionLayout.f970v0.a();
        motionLayout.H = true;
        motionLayout.getWidth();
        motionLayout.getHeight();
        b0 b0Var = motionLayout.f959q.f9911c;
        int i18 = b0Var != null ? b0Var.f9906p : -1;
        HashMap map = motionLayout.f976z;
        if (i18 != -1) {
            for (int i19 = 0; i19 < childCount; i19++) {
                o oVar = (o) map.get(motionLayout.getChildAt(i19));
                if (oVar != null) {
                    oVar.f9988y = i18;
                }
            }
        }
        for (int i20 = 0; i20 < childCount; i20++) {
            o oVar2 = (o) map.get(motionLayout.getChildAt(i20));
            if (oVar2 != null) {
                motionLayout.f959q.e(oVar2);
                oVar2.e(motionLayout.getNanoTime());
            }
        }
        b0 b0Var2 = motionLayout.f959q.f9911c;
        float f = b0Var2 != null ? b0Var2.f9899i : 0.0f;
        if (f != 0.0f) {
            boolean z7 = ((double) f) < 0.0d;
            float fAbs = Math.abs(f);
            float fMax = -3.4028235E38f;
            float fMin = Float.MAX_VALUE;
            float fMin2 = Float.MAX_VALUE;
            float fMax2 = -3.4028235E38f;
            for (int i21 = 0; i21 < childCount; i21++) {
                o oVar3 = (o) map.get(motionLayout.getChildAt(i21));
                if (!Float.isNaN(oVar3.f9973j)) {
                    for (int i22 = 0; i22 < childCount; i22++) {
                        o oVar4 = (o) map.get(motionLayout.getChildAt(i22));
                        if (!Float.isNaN(oVar4.f9973j)) {
                            fMin = Math.min(fMin, oVar4.f9973j);
                            fMax = Math.max(fMax, oVar4.f9973j);
                        }
                    }
                    while (i11 < childCount) {
                        o oVar5 = (o) map.get(motionLayout.getChildAt(i11));
                        if (!Float.isNaN(oVar5.f9973j)) {
                            oVar5.f9975l = 1.0f / (1.0f - fAbs);
                            if (z7) {
                                oVar5.f9974k = fAbs - (((fMax - oVar5.f9973j) / (fMax - fMin)) * fAbs);
                            } else {
                                oVar5.f9974k = fAbs - (((oVar5.f9973j - fMin) * fAbs) / (fMax - fMin));
                            }
                        }
                        i11++;
                    }
                    return;
                }
                y yVar = oVar3.f9969e;
                float f3 = yVar.f10045e;
                float f4 = yVar.f;
                float f5 = z7 ? f4 - f3 : f4 + f3;
                fMin2 = Math.min(fMin2, f5);
                fMax2 = Math.max(fMax2, f5);
            }
            while (i11 < childCount) {
                o oVar6 = (o) map.get(motionLayout.getChildAt(i11));
                y yVar2 = oVar6.f9969e;
                float f10 = yVar2.f10045e;
                float f11 = yVar2.f;
                float f12 = z7 ? f11 - f10 : f11 + f10;
                oVar6.f9975l = 1.0f / (1.0f - fAbs);
                oVar6.f9974k = fAbs - (((f12 - fMin2) * fAbs) / (fMax2 - fMin2));
                i11++;
            }
        }
    }

    public final void f(v.f fVar, androidx.constraintlayout.widget.d dVar) throws NumberFormatException {
        SparseArray sparseArray = new SparseArray();
        Constraints.LayoutParams layoutParams = new Constraints.LayoutParams();
        sparseArray.clear();
        sparseArray.put(0, fVar);
        MotionLayout motionLayout = this.f10030g;
        sparseArray.put(motionLayout.getId(), fVar);
        Iterator it = fVar.f10563g0.iterator();
        while (it.hasNext()) {
            v.e eVar = (v.e) it.next();
            sparseArray.put(eVar.W.getId(), eVar);
        }
        Iterator it2 = fVar.f10563g0.iterator();
        while (it2.hasNext()) {
            v.e eVar2 = (v.e) it2.next();
            View view = eVar2.W;
            int id = view.getId();
            HashMap map = dVar.f1098c;
            if (map.containsKey(Integer.valueOf(id))) {
                ((androidx.constraintlayout.widget.c) map.get(Integer.valueOf(id))).a(layoutParams);
            }
            eVar2.z(dVar.g(view.getId()).d.f11158c);
            eVar2.w(dVar.g(view.getId()).d.d);
            if (view instanceof ConstraintHelper) {
                ConstraintHelper constraintHelper = (ConstraintHelper) view;
                int id2 = constraintHelper.getId();
                HashMap map2 = dVar.f1098c;
                if (map2.containsKey(Integer.valueOf(id2))) {
                    androidx.constraintlayout.widget.c cVar = (androidx.constraintlayout.widget.c) map2.get(Integer.valueOf(id2));
                    if (eVar2 instanceof v.j) {
                        constraintHelper.h(cVar, (v.j) eVar2, layoutParams, sparseArray);
                    }
                }
                if (view instanceof Barrier) {
                    ((Barrier) view).l();
                }
            }
            layoutParams.resolveLayoutDirection(motionLayout.getLayoutDirection());
            int i6 = MotionLayout.A0;
            this.f10030g.c(false, view, eVar2, layoutParams, sparseArray);
            if (dVar.g(view.getId()).f1092b.f11195c == 1) {
                eVar2.X = view.getVisibility();
            } else {
                eVar2.X = dVar.g(view.getId()).f1092b.f11194b;
            }
        }
        Iterator it3 = fVar.f10563g0.iterator();
        while (it3.hasNext()) {
            v.e eVar3 = (v.e) it3.next();
            if (eVar3 instanceof v.h) {
                ConstraintHelper constraintHelper2 = (ConstraintHelper) eVar3.W;
                v.j jVar = (v.j) eVar3;
                constraintHelper2.getClass();
                jVar.f10614h0 = 0;
                Arrays.fill(jVar.f10613g0, (Object) null);
                for (int i10 = 0; i10 < constraintHelper2.f1014b; i10++) {
                    jVar.C((v.e) sparseArray.get(constraintHelper2.f1013a[i10]));
                }
                v.h hVar = (v.h) jVar;
                for (int i11 = 0; i11 < hVar.f10614h0; i11++) {
                    v.e eVar4 = hVar.f10613g0[i11];
                }
            }
        }
    }
}
