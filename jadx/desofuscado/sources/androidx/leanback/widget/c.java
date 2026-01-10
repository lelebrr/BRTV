package androidx.leanback.widget;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends Animation {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1814a;

    /* renamed from: b, reason: collision with root package name */
    public final float f1815b;

    /* renamed from: c, reason: collision with root package name */
    public final float f1816c;
    public final /* synthetic */ BaseCardView d;

    public c(BaseCardView baseCardView, float f, float f3, int i6) {
        this.f1814a = i6;
        switch (i6) {
            case 1:
                this.d = baseCardView;
                this.f1815b = f;
                this.f1816c = f3 - f;
                break;
            case 2:
                this.d = baseCardView;
                this.f1815b = f;
                this.f1816c = f3 - f;
                break;
            default:
                this.d = baseCardView;
                this.f1815b = f;
                this.f1816c = f3 - f;
                break;
        }
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        switch (this.f1814a) {
            case 0:
                float f3 = (f * this.f1816c) + this.f1815b;
                BaseCardView baseCardView = this.d;
                baseCardView.f1617o = f3;
                for (int i6 = 0; i6 < baseCardView.f1608e.size(); i6++) {
                    ((View) baseCardView.f1608e.get(i6)).setAlpha(baseCardView.f1617o);
                }
                break;
            case 1:
                float f4 = (f * this.f1816c) + this.f1815b;
                BaseCardView baseCardView2 = this.d;
                baseCardView2.f1616n = f4;
                baseCardView2.requestLayout();
                break;
            default:
                float f5 = (f * this.f1816c) + this.f1815b;
                BaseCardView baseCardView3 = this.d;
                baseCardView3.f1615m = f5;
                baseCardView3.requestLayout();
                break;
        }
    }
}
