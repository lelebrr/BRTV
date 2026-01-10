package ea;

import android.animation.ValueAnimator;
import android.view.ViewGroup;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6643a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6644b;

    public /* synthetic */ e0(Spark spark, int i6) {
        this.f6643a = i6;
        this.f6644b = spark;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f6643a) {
            case 0:
                int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                Spark spark = this.f6644b;
                ViewGroup.LayoutParams layoutParams = spark.f8730y.getLayoutParams();
                layoutParams.width = iIntValue;
                spark.f8730y.setLayoutParams(layoutParams);
                break;
            default:
                int iIntValue2 = ((Integer) valueAnimator.getAnimatedValue()).intValue();
                Spark spark2 = this.f6644b;
                ViewGroup.LayoutParams layoutParams2 = spark2.f8730y.getLayoutParams();
                layoutParams2.width = iIntValue2;
                spark2.f8730y.setLayoutParams(layoutParams2);
                break;
        }
    }
}
