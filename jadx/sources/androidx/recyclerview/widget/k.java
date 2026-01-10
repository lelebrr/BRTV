package androidx.recyclerview.widget;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.View;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends s0 {

    /* renamed from: s, reason: collision with root package name */
    public static TimeInterpolator f2870s;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2871g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f2872h;

    /* renamed from: i, reason: collision with root package name */
    public ArrayList f2873i;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f2874j;

    /* renamed from: k, reason: collision with root package name */
    public ArrayList f2875k;

    /* renamed from: l, reason: collision with root package name */
    public ArrayList f2876l;

    /* renamed from: m, reason: collision with root package name */
    public ArrayList f2877m;

    /* renamed from: n, reason: collision with root package name */
    public ArrayList f2878n;

    /* renamed from: o, reason: collision with root package name */
    public ArrayList f2879o;

    /* renamed from: p, reason: collision with root package name */
    public ArrayList f2880p;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f2881q;

    /* renamed from: r, reason: collision with root package name */
    public ArrayList f2882r;

    public static void h(ArrayList arrayList) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            ((p1) arrayList.get(size)).itemView.animate().cancel();
        }
    }

    @Override // androidx.recyclerview.widget.s0
    public final boolean a(p1 p1Var, p1 p1Var2, r0 r0Var, r0 r0Var2) {
        int i6;
        int i10;
        int i11 = r0Var.f2937a;
        int i12 = r0Var.f2938b;
        if (p1Var2.shouldIgnore()) {
            int i13 = r0Var.f2937a;
            i10 = r0Var.f2938b;
            i6 = i13;
        } else {
            i6 = r0Var2.f2937a;
            i10 = r0Var2.f2938b;
        }
        if (p1Var == p1Var2) {
            return g(p1Var, i11, i12, i6, i10);
        }
        float translationX = p1Var.itemView.getTranslationX();
        float translationY = p1Var.itemView.getTranslationY();
        float alpha = p1Var.itemView.getAlpha();
        l(p1Var);
        p1Var.itemView.setTranslationX(translationX);
        p1Var.itemView.setTranslationY(translationY);
        p1Var.itemView.setAlpha(alpha);
        l(p1Var2);
        p1Var2.itemView.setTranslationX(-((int) ((i6 - i11) - translationX)));
        p1Var2.itemView.setTranslationY(-((int) ((i10 - i12) - translationY)));
        p1Var2.itemView.setAlpha(0.0f);
        ArrayList arrayList = this.f2875k;
        i iVar = new i();
        iVar.f2854a = p1Var;
        iVar.f2855b = p1Var2;
        iVar.f2856c = i11;
        iVar.d = i12;
        iVar.f2857e = i6;
        iVar.f = i10;
        arrayList.add(iVar);
        return true;
    }

    @Override // androidx.recyclerview.widget.s0
    public final void d(p1 p1Var) {
        View view = p1Var.itemView;
        view.animate().cancel();
        ArrayList arrayList = this.f2874j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            if (((j) arrayList.get(size)).f2864a == p1Var) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                c(p1Var);
                arrayList.remove(size);
            }
        }
        j(this.f2875k, p1Var);
        if (this.f2872h.remove(p1Var)) {
            view.setAlpha(1.0f);
            c(p1Var);
        }
        if (this.f2873i.remove(p1Var)) {
            view.setAlpha(1.0f);
            c(p1Var);
        }
        ArrayList arrayList2 = this.f2878n;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            ArrayList arrayList3 = (ArrayList) arrayList2.get(size2);
            j(arrayList3, p1Var);
            if (arrayList3.isEmpty()) {
                arrayList2.remove(size2);
            }
        }
        ArrayList arrayList4 = this.f2877m;
        for (int size3 = arrayList4.size() - 1; size3 >= 0; size3--) {
            ArrayList arrayList5 = (ArrayList) arrayList4.get(size3);
            int size4 = arrayList5.size() - 1;
            while (true) {
                if (size4 < 0) {
                    break;
                }
                if (((j) arrayList5.get(size4)).f2864a == p1Var) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    c(p1Var);
                    arrayList5.remove(size4);
                    if (arrayList5.isEmpty()) {
                        arrayList4.remove(size3);
                    }
                } else {
                    size4--;
                }
            }
        }
        ArrayList arrayList6 = this.f2876l;
        for (int size5 = arrayList6.size() - 1; size5 >= 0; size5--) {
            ArrayList arrayList7 = (ArrayList) arrayList6.get(size5);
            if (arrayList7.remove(p1Var)) {
                view.setAlpha(1.0f);
                c(p1Var);
                if (arrayList7.isEmpty()) {
                    arrayList6.remove(size5);
                }
            }
        }
        this.f2881q.remove(p1Var);
        this.f2879o.remove(p1Var);
        this.f2882r.remove(p1Var);
        this.f2880p.remove(p1Var);
        i();
    }

    @Override // androidx.recyclerview.widget.s0
    public final void e() {
        ArrayList arrayList = this.f2874j;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            j jVar = (j) arrayList.get(size);
            View view = jVar.f2864a.itemView;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(jVar.f2864a);
            arrayList.remove(size);
        }
        ArrayList arrayList2 = this.f2872h;
        for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
            c((p1) arrayList2.get(size2));
            arrayList2.remove(size2);
        }
        ArrayList arrayList3 = this.f2873i;
        int size3 = arrayList3.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            p1 p1Var = (p1) arrayList3.get(size3);
            p1Var.itemView.setAlpha(1.0f);
            c(p1Var);
            arrayList3.remove(size3);
        }
        ArrayList arrayList4 = this.f2875k;
        for (int size4 = arrayList4.size() - 1; size4 >= 0; size4--) {
            i iVar = (i) arrayList4.get(size4);
            p1 p1Var2 = iVar.f2854a;
            if (p1Var2 != null) {
                k(iVar, p1Var2);
            }
            p1 p1Var3 = iVar.f2855b;
            if (p1Var3 != null) {
                k(iVar, p1Var3);
            }
        }
        arrayList4.clear();
        if (f()) {
            ArrayList arrayList5 = this.f2877m;
            for (int size5 = arrayList5.size() - 1; size5 >= 0; size5--) {
                ArrayList arrayList6 = (ArrayList) arrayList5.get(size5);
                for (int size6 = arrayList6.size() - 1; size6 >= 0; size6--) {
                    j jVar2 = (j) arrayList6.get(size6);
                    View view2 = jVar2.f2864a.itemView;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(jVar2.f2864a);
                    arrayList6.remove(size6);
                    if (arrayList6.isEmpty()) {
                        arrayList5.remove(arrayList6);
                    }
                }
            }
            ArrayList arrayList7 = this.f2876l;
            for (int size7 = arrayList7.size() - 1; size7 >= 0; size7--) {
                ArrayList arrayList8 = (ArrayList) arrayList7.get(size7);
                for (int size8 = arrayList8.size() - 1; size8 >= 0; size8--) {
                    p1 p1Var4 = (p1) arrayList8.get(size8);
                    p1Var4.itemView.setAlpha(1.0f);
                    c(p1Var4);
                    arrayList8.remove(size8);
                    if (arrayList8.isEmpty()) {
                        arrayList7.remove(arrayList8);
                    }
                }
            }
            ArrayList arrayList9 = this.f2878n;
            for (int size9 = arrayList9.size() - 1; size9 >= 0; size9--) {
                ArrayList arrayList10 = (ArrayList) arrayList9.get(size9);
                for (int size10 = arrayList10.size() - 1; size10 >= 0; size10--) {
                    i iVar2 = (i) arrayList10.get(size10);
                    p1 p1Var5 = iVar2.f2854a;
                    if (p1Var5 != null) {
                        k(iVar2, p1Var5);
                    }
                    p1 p1Var6 = iVar2.f2855b;
                    if (p1Var6 != null) {
                        k(iVar2, p1Var6);
                    }
                    if (arrayList10.isEmpty()) {
                        arrayList9.remove(arrayList10);
                    }
                }
            }
            h(this.f2881q);
            h(this.f2880p);
            h(this.f2879o);
            h(this.f2882r);
            ArrayList arrayList11 = this.f2945b;
            if (arrayList11.size() > 0) {
                throw a.e.k(0, arrayList11);
            }
            arrayList11.clear();
        }
    }

    @Override // androidx.recyclerview.widget.s0
    public final boolean f() {
        return (this.f2873i.isEmpty() && this.f2875k.isEmpty() && this.f2874j.isEmpty() && this.f2872h.isEmpty() && this.f2880p.isEmpty() && this.f2881q.isEmpty() && this.f2879o.isEmpty() && this.f2882r.isEmpty() && this.f2877m.isEmpty() && this.f2876l.isEmpty() && this.f2878n.isEmpty()) ? false : true;
    }

    public final boolean g(p1 p1Var, int i6, int i10, int i11, int i12) {
        View view = p1Var.itemView;
        int translationX = i6 + ((int) view.getTranslationX());
        int translationY = i10 + ((int) p1Var.itemView.getTranslationY());
        l(p1Var);
        int i13 = i11 - translationX;
        int i14 = i12 - translationY;
        if (i13 == 0 && i14 == 0) {
            c(p1Var);
            return false;
        }
        if (i13 != 0) {
            view.setTranslationX(-i13);
        }
        if (i14 != 0) {
            view.setTranslationY(-i14);
        }
        ArrayList arrayList = this.f2874j;
        j jVar = new j();
        jVar.f2864a = p1Var;
        jVar.f2865b = translationX;
        jVar.f2866c = translationY;
        jVar.d = i11;
        jVar.f2867e = i12;
        arrayList.add(jVar);
        return true;
    }

    public final void i() {
        if (f()) {
            return;
        }
        ArrayList arrayList = this.f2945b;
        if (arrayList.size() > 0) {
            throw a.e.k(0, arrayList);
        }
        arrayList.clear();
    }

    public final void j(ArrayList arrayList, p1 p1Var) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            i iVar = (i) arrayList.get(size);
            if (k(iVar, p1Var) && iVar.f2854a == null && iVar.f2855b == null) {
                arrayList.remove(iVar);
            }
        }
    }

    public final boolean k(i iVar, p1 p1Var) {
        if (iVar.f2855b == p1Var) {
            iVar.f2855b = null;
        } else {
            if (iVar.f2854a != p1Var) {
                return false;
            }
            iVar.f2854a = null;
        }
        p1Var.itemView.setAlpha(1.0f);
        p1Var.itemView.setTranslationX(0.0f);
        p1Var.itemView.setTranslationY(0.0f);
        c(p1Var);
        return true;
    }

    public final void l(p1 p1Var) {
        if (f2870s == null) {
            f2870s = new ValueAnimator().getInterpolator();
        }
        p1Var.itemView.animate().setInterpolator(f2870s);
        d(p1Var);
    }
}
