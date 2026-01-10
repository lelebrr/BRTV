package androidx.transition;

import a.e;
import a0.f;
import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import e0.b;
import java.util.ArrayList;
import java.util.Iterator;
import y1.e0;
import y1.l;
import y1.v;
import y1.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class TransitionSet extends Transition {
    public boolean A;
    public int B;

    /* renamed from: x, reason: collision with root package name */
    public ArrayList f3032x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f3033y;

    /* renamed from: z, reason: collision with root package name */
    public int f3034z;

    @SuppressLint({"RestrictedApi"})
    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3032x = new ArrayList();
        this.f3033y = true;
        this.A = false;
        this.B = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v.f11327g);
        I(b.c(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // androidx.transition.Transition
    public final void A(w wVar) {
        super.A(wVar);
        this.B |= 4;
        if (this.f3032x != null) {
            for (int i6 = 0; i6 < this.f3032x.size(); i6++) {
                ((Transition) this.f3032x.get(i6)).A(wVar);
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void B(v vVar) {
        this.f3030s = vVar;
        this.B |= 2;
        int size = this.f3032x.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((Transition) this.f3032x.get(i6)).B(vVar);
        }
    }

    @Override // androidx.transition.Transition
    public final void C(long j10) {
        this.f3015b = j10;
    }

    @Override // androidx.transition.Transition
    public final String E(String str) {
        String strE = super.E(str);
        for (int i6 = 0; i6 < this.f3032x.size(); i6++) {
            StringBuilder sbW = e.w(strE, "\n");
            sbW.append(((Transition) this.f3032x.get(i6)).E(str + "  "));
            strE = sbW.toString();
        }
        return strE;
    }

    public final void F(Transition transition) {
        this.f3032x.add(transition);
        transition.f3020i = this;
        long j10 = this.f3016c;
        if (j10 >= 0) {
            transition.x(j10);
        }
        if ((this.B & 1) != 0) {
            transition.z(this.d);
        }
        if ((this.B & 2) != 0) {
            transition.B(this.f3030s);
        }
        if ((this.B & 4) != 0) {
            transition.A(this.f3031t);
        }
        if ((this.B & 8) != 0) {
            transition.y(null);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: G, reason: merged with bridge method [inline-methods] */
    public final void x(long j10) {
        ArrayList arrayList;
        this.f3016c = j10;
        if (j10 < 0 || (arrayList = this.f3032x) == null) {
            return;
        }
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((Transition) this.f3032x.get(i6)).x(j10);
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final void z(TimeInterpolator timeInterpolator) {
        this.B |= 1;
        ArrayList arrayList = this.f3032x;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i6 = 0; i6 < size; i6++) {
                ((Transition) this.f3032x.get(i6)).z(timeInterpolator);
            }
        }
        this.d = timeInterpolator;
    }

    public final void I(int i6) {
        if (i6 == 0) {
            this.f3033y = true;
        } else {
            if (i6 != 1) {
                throw new AndroidRuntimeException(e.n(i6, "Invalid parameter for TransitionSet ordering: "));
            }
            this.f3033y = false;
        }
    }

    @Override // androidx.transition.Transition
    public final void c(e0 e0Var) {
        if (r(e0Var.f11260b)) {
            Iterator it = this.f3032x.iterator();
            while (it.hasNext()) {
                Transition transition = (Transition) it.next();
                if (transition.r(e0Var.f11260b)) {
                    transition.c(e0Var);
                    e0Var.f11261c.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void e(e0 e0Var) {
        super.e(e0Var);
        int size = this.f3032x.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((Transition) this.f3032x.get(i6)).e(e0Var);
        }
    }

    @Override // androidx.transition.Transition
    public final void f(e0 e0Var) {
        if (r(e0Var.f11260b)) {
            Iterator it = this.f3032x.iterator();
            while (it.hasNext()) {
                Transition transition = (Transition) it.next();
                if (transition.r(e0Var.f11260b)) {
                    transition.f(e0Var);
                    e0Var.f11261c.add(transition);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public final Transition clone() {
        TransitionSet transitionSet = (TransitionSet) super.clone();
        transitionSet.f3032x = new ArrayList();
        int size = this.f3032x.size();
        for (int i6 = 0; i6 < size; i6++) {
            Transition transitionClone = ((Transition) this.f3032x.get(i6)).clone();
            transitionSet.f3032x.add(transitionClone);
            transitionClone.f3020i = transitionSet;
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    public final void k(ViewGroup viewGroup, f fVar, f fVar2, ArrayList arrayList, ArrayList arrayList2) {
        long j10 = this.f3015b;
        int size = this.f3032x.size();
        for (int i6 = 0; i6 < size; i6++) {
            Transition transition = (Transition) this.f3032x.get(i6);
            if (j10 > 0 && (this.f3033y || i6 == 0)) {
                long j11 = transition.f3015b;
                if (j11 > 0) {
                    transition.C(j11 + j10);
                } else {
                    transition.C(j10);
                }
            }
            transition.k(viewGroup, fVar, fVar2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    public final void t(ViewGroup viewGroup) {
        super.t(viewGroup);
        int size = this.f3032x.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((Transition) this.f3032x.get(i6)).t(viewGroup);
        }
    }

    @Override // androidx.transition.Transition
    public final void v(View view) {
        super.v(view);
        int size = this.f3032x.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((Transition) this.f3032x.get(i6)).v(view);
        }
    }

    @Override // androidx.transition.Transition
    public final void w() {
        if (this.f3032x.isEmpty()) {
            D();
            l();
            return;
        }
        l lVar = new l();
        lVar.f11298b = this;
        Iterator it = this.f3032x.iterator();
        while (it.hasNext()) {
            ((Transition) it.next()).a(lVar);
        }
        this.f3034z = this.f3032x.size();
        if (this.f3033y) {
            Iterator it2 = this.f3032x.iterator();
            while (it2.hasNext()) {
                ((Transition) it2.next()).w();
            }
            return;
        }
        for (int i6 = 1; i6 < this.f3032x.size(); i6++) {
            ((Transition) this.f3032x.get(i6 - 1)).a(new l(1, (Transition) this.f3032x.get(i6)));
        }
        Transition transition = (Transition) this.f3032x.get(0);
        if (transition != null) {
            transition.w();
        }
    }

    @Override // androidx.transition.Transition
    public final void y(v vVar) {
        this.B |= 8;
        int size = this.f3032x.size();
        for (int i6 = 0; i6 < size; i6++) {
            ((Transition) this.f3032x.get(i6)).y(vVar);
        }
    }
}
