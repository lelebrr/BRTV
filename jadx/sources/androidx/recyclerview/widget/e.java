package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2826a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f2827b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ k f2828c;

    public /* synthetic */ e(k kVar, ArrayList arrayList, int i6) {
        this.f2826a = i6;
        this.f2828c = kVar;
        this.f2827b = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2826a) {
            case 0:
                ArrayList arrayList = this.f2827b;
                Iterator it = arrayList.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    k kVar = this.f2828c;
                    if (!zHasNext) {
                        arrayList.clear();
                        kVar.f2877m.remove(arrayList);
                        break;
                    } else {
                        j jVar = (j) it.next();
                        p1 p1Var = jVar.f2864a;
                        kVar.getClass();
                        View view = p1Var.itemView;
                        int i6 = jVar.d - jVar.f2865b;
                        int i10 = jVar.f2867e - jVar.f2866c;
                        if (i6 != 0) {
                            view.animate().translationX(0.0f);
                        }
                        if (i10 != 0) {
                            view.animate().translationY(0.0f);
                        }
                        ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                        kVar.f2880p.add(p1Var);
                        viewPropertyAnimatorAnimate.setDuration(kVar.f2947e).setListener(new g(kVar, p1Var, i6, view, i10, viewPropertyAnimatorAnimate)).start();
                    }
                }
            case 1:
                ArrayList arrayList2 = this.f2827b;
                Iterator it2 = arrayList2.iterator();
                while (true) {
                    boolean zHasNext2 = it2.hasNext();
                    k kVar2 = this.f2828c;
                    if (!zHasNext2) {
                        arrayList2.clear();
                        kVar2.f2878n.remove(arrayList2);
                        break;
                    } else {
                        i iVar = (i) it2.next();
                        kVar2.getClass();
                        p1 p1Var2 = iVar.f2854a;
                        View view2 = p1Var2 == null ? null : p1Var2.itemView;
                        p1 p1Var3 = iVar.f2855b;
                        View view3 = p1Var3 != null ? p1Var3.itemView : null;
                        ArrayList arrayList3 = kVar2.f2882r;
                        if (view2 != null) {
                            ViewPropertyAnimator duration = view2.animate().setDuration(kVar2.f);
                            arrayList3.add(iVar.f2854a);
                            duration.translationX(iVar.f2857e - iVar.f2856c);
                            duration.translationY(iVar.f - iVar.d);
                            duration.alpha(0.0f).setListener(new h(kVar2, iVar, duration, view2, 0)).start();
                        }
                        if (view3 != null) {
                            ViewPropertyAnimator viewPropertyAnimatorAnimate2 = view3.animate();
                            arrayList3.add(iVar.f2855b);
                            viewPropertyAnimatorAnimate2.translationX(0.0f).translationY(0.0f).setDuration(kVar2.f).alpha(1.0f).setListener(new h(kVar2, iVar, viewPropertyAnimatorAnimate2, view3, 1)).start();
                        }
                    }
                }
            default:
                ArrayList arrayList4 = this.f2827b;
                Iterator it3 = arrayList4.iterator();
                while (true) {
                    boolean zHasNext3 = it3.hasNext();
                    k kVar3 = this.f2828c;
                    if (!zHasNext3) {
                        arrayList4.clear();
                        kVar3.f2876l.remove(arrayList4);
                        break;
                    } else {
                        p1 p1Var4 = (p1) it3.next();
                        kVar3.getClass();
                        View view4 = p1Var4.itemView;
                        ViewPropertyAnimator viewPropertyAnimatorAnimate3 = view4.animate();
                        kVar3.f2879o.add(p1Var4);
                        viewPropertyAnimatorAnimate3.alpha(1.0f).setDuration(kVar3.f2946c).setListener(new f(kVar3, p1Var4, view4, viewPropertyAnimatorAnimate3)).start();
                    }
                }
        }
    }
}
