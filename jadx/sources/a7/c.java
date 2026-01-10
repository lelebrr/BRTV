package a7;

import android.animation.ValueAnimator;
import android.view.View;
import android.widget.TextView;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textfield.m;
import org.bitspark.android.view.CircularProgressBar;
import u6.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f161a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f162b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f161a = i6;
        this.f162b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f161a) {
            case 0:
                ((View) this.f162b).invalidate();
                break;
            case 1:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                h hVar = ((BottomSheetBehavior) this.f162b).f4687h;
                if (hVar != null) {
                    hVar.o(fFloatValue);
                    break;
                }
                break;
            case 2:
                ((CollapsingToolbarLayout) this.f162b).setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
                break;
            case 3:
                float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                TextView textView = (TextView) this.f162b;
                textView.setScaleX(fFloatValue2);
                textView.setScaleY(fFloatValue2);
                break;
            case 4:
                ((m) this.f162b).f5345c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 5:
                ((TextInputLayout) this.f162b).D0.q(((Float) valueAnimator.getAnimatedValue()).floatValue());
                break;
            case 6:
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                CircularProgressBar circularProgressBar = (CircularProgressBar) this.f162b;
                circularProgressBar.f8801b = iIntValue;
                int i6 = circularProgressBar.f8801b;
                circularProgressBar.f8805h = (i6 * 360.0f) / circularProgressBar.f8802c;
                circularProgressBar.setProgress(i6);
                break;
            default:
                ((TabLayout) this.f162b).scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
                break;
        }
    }
}
