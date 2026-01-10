package a7;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import androidx.recyclerview.widget.p;
import java.util.WeakHashMap;
import n0.s0;
import y1.g0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f171a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f172b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f173c;

    public g(View view, boolean z7) {
        this.f171a = 0;
        this.f173c = z7;
        this.f172b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        switch (this.f171a) {
            case 2:
                this.f173c = true;
                break;
            default:
                super.onAnimationCancel(animator);
                break;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        switch (this.f171a) {
            case 0:
                if (!this.f173c) {
                    ((View) this.f172b).setVisibility(4);
                    break;
                }
                break;
            case 1:
                View view = (View) this.f172b;
                g0.b(view, 1.0f);
                if (this.f173c) {
                    view.setLayerType(0, null);
                    break;
                }
                break;
            default:
                if (!this.f173c) {
                    p pVar = (p) this.f172b;
                    if (((Float) pVar.f2932z.getAnimatedValue()).floatValue() != 0.0f) {
                        pVar.A = 2;
                        pVar.f2925s.invalidate();
                        break;
                    } else {
                        pVar.A = 0;
                        pVar.d(0);
                        break;
                    }
                } else {
                    this.f173c = false;
                    break;
                }
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        Object obj = this.f172b;
        switch (this.f171a) {
            case 0:
                if (this.f173c) {
                    ((View) obj).setVisibility(0);
                    break;
                }
                break;
            case 1:
                WeakHashMap weakHashMap = s0.f8353a;
                View view = (View) obj;
                if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
                    this.f173c = true;
                    view.setLayerType(2, null);
                    break;
                }
                break;
            default:
                super.onAnimationStart(animator);
                break;
        }
    }

    public g(View view) {
        this.f171a = 1;
        this.f173c = false;
        this.f172b = view;
    }

    public g(p pVar) {
        this.f171a = 2;
        this.f172b = pVar;
        this.f173c = false;
    }
}
