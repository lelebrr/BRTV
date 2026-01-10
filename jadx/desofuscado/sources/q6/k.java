package q6;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9278a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f9279b;

    public /* synthetic */ k(l lVar, int i6) {
        this.f9278a = i6;
        this.f9279b = lVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        switch (this.f9278a) {
            case 1:
                super.onAnimationEnd(animator);
                l lVar = this.f9279b;
                super/*android.graphics.drawable.Drawable*/.setVisible(false, false);
                ArrayList arrayList = lVar.f;
                if (arrayList != null && !lVar.f9285g) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((c) it.next()).a();
                    }
                    break;
                }
                break;
            default:
                super.onAnimationEnd(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        switch (this.f9278a) {
            case 0:
                super.onAnimationStart(animator);
                l lVar = this.f9279b;
                ArrayList arrayList = lVar.f;
                if (arrayList != null && !lVar.f9285g) {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        ((c) it.next()).getClass();
                    }
                    break;
                }
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }
}
