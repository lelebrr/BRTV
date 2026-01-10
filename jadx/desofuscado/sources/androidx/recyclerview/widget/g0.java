package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2847a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ RecyclerView f2848b;

    public /* synthetic */ g0(RecyclerView recyclerView, int i6) {
        this.f2847a = i6;
        this.f2848b = recyclerView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RecyclerView recyclerView = this.f2848b;
        switch (this.f2847a) {
            case 0:
                if (recyclerView.mFirstLayoutComplete && !recyclerView.isLayoutRequested()) {
                    if (!recyclerView.mIsAttached) {
                        recyclerView.requestLayout();
                        break;
                    } else if (!recyclerView.mLayoutSuppressed) {
                        recyclerView.consumePendingUpdateOperations();
                        break;
                    } else {
                        recyclerView.mLayoutWasDefered = true;
                        break;
                    }
                }
                break;
            default:
                s0 s0Var = recyclerView.mItemAnimator;
                if (s0Var != null) {
                    k kVar = (k) s0Var;
                    ArrayList arrayList = kVar.f2872h;
                    boolean zIsEmpty = arrayList.isEmpty();
                    ArrayList arrayList2 = kVar.f2874j;
                    boolean zIsEmpty2 = arrayList2.isEmpty();
                    ArrayList arrayList3 = kVar.f2875k;
                    boolean zIsEmpty3 = arrayList3.isEmpty();
                    ArrayList arrayList4 = kVar.f2873i;
                    boolean zIsEmpty4 = arrayList4.isEmpty();
                    if (!zIsEmpty || !zIsEmpty2 || !zIsEmpty4 || !zIsEmpty3) {
                        Iterator it = arrayList.iterator();
                        while (true) {
                            boolean zHasNext = it.hasNext();
                            long j10 = kVar.d;
                            if (zHasNext) {
                                p1 p1Var = (p1) it.next();
                                View view = p1Var.itemView;
                                ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
                                kVar.f2881q.add(p1Var);
                                viewPropertyAnimatorAnimate.setDuration(j10).alpha(0.0f).setListener(new f(kVar, p1Var, viewPropertyAnimatorAnimate, view)).start();
                                it = it;
                            } else {
                                arrayList.clear();
                                if (!zIsEmpty2) {
                                    ArrayList arrayList5 = new ArrayList();
                                    arrayList5.addAll(arrayList2);
                                    kVar.f2877m.add(arrayList5);
                                    arrayList2.clear();
                                    e eVar = new e(kVar, arrayList5, 0);
                                    if (zIsEmpty) {
                                        eVar.run();
                                    } else {
                                        View view2 = ((j) arrayList5.get(0)).f2864a.itemView;
                                        WeakHashMap weakHashMap = n0.s0.f8353a;
                                        view2.postOnAnimationDelayed(eVar, j10);
                                    }
                                }
                                if (!zIsEmpty3) {
                                    ArrayList arrayList6 = new ArrayList();
                                    arrayList6.addAll(arrayList3);
                                    kVar.f2878n.add(arrayList6);
                                    arrayList3.clear();
                                    e eVar2 = new e(kVar, arrayList6, 1);
                                    if (zIsEmpty) {
                                        eVar2.run();
                                    } else {
                                        View view3 = ((i) arrayList6.get(0)).f2854a.itemView;
                                        WeakHashMap weakHashMap2 = n0.s0.f8353a;
                                        view3.postOnAnimationDelayed(eVar2, j10);
                                    }
                                }
                                if (!zIsEmpty4) {
                                    ArrayList arrayList7 = new ArrayList();
                                    arrayList7.addAll(arrayList4);
                                    kVar.f2876l.add(arrayList7);
                                    arrayList4.clear();
                                    e eVar3 = new e(kVar, arrayList7, 2);
                                    if (zIsEmpty && zIsEmpty2 && zIsEmpty3) {
                                        eVar3.run();
                                    } else {
                                        if (zIsEmpty) {
                                            j10 = 0;
                                        }
                                        long jMax = Math.max(!zIsEmpty2 ? kVar.f2947e : 0L, zIsEmpty3 ? 0L : kVar.f) + j10;
                                        View view4 = ((p1) arrayList7.get(0)).itemView;
                                        WeakHashMap weakHashMap3 = n0.s0.f8353a;
                                        view4.postOnAnimationDelayed(eVar3, jMax);
                                    }
                                }
                            }
                        }
                    }
                }
                recyclerView.mPostedAnimatorRunner = false;
                break;
        }
    }
}
