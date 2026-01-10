package androidx.leanback.widget;

import android.view.View;
import android.view.animation.Animation;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements Animation.AnimationListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1810a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseCardView f1811b;

    public /* synthetic */ b(BaseCardView baseCardView, int i6) {
        this.f1810a = i6;
        this.f1811b = baseCardView;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        switch (this.f1810a) {
            case 0:
                BaseCardView baseCardView = this.f1811b;
                if (baseCardView.f1615m == 0.0f) {
                    for (int i6 = 0; i6 < baseCardView.f.size(); i6++) {
                        ((View) baseCardView.f.get(i6)).setVisibility(8);
                    }
                    break;
                }
                break;
            case 1:
                BaseCardView baseCardView2 = this.f1811b;
                if (baseCardView2.f1616n == 0.0f) {
                    for (int i10 = 0; i10 < baseCardView2.f1608e.size(); i10++) {
                        ((View) baseCardView2.f1608e.get(i10)).setVisibility(8);
                    }
                    break;
                }
                break;
            default:
                BaseCardView baseCardView3 = this.f1811b;
                if (baseCardView3.f1617o == 0.0d) {
                    for (int i11 = 0; i11 < baseCardView3.f1608e.size(); i11++) {
                        ((View) baseCardView3.f1608e.get(i11)).setVisibility(8);
                    }
                    break;
                }
                break;
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
        int i6 = this.f1810a;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
        int i6 = this.f1810a;
    }

    private final void a(Animation animation) {
    }

    private final void b(Animation animation) {
    }

    private final void c(Animation animation) {
    }

    private final void d(Animation animation) {
    }

    private final void e(Animation animation) {
    }

    private final void f(Animation animation) {
    }
}
