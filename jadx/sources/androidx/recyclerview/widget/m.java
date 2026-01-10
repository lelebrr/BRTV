package androidx.recyclerview.widget;

import android.animation.ValueAnimator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2900a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2901b;

    public /* synthetic */ m(int i6, Object obj) {
        this.f2900a = i6;
        this.f2901b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj = this.f2901b;
        switch (this.f2900a) {
            case 0:
                p pVar = (p) obj;
                int i6 = pVar.A;
                ValueAnimator valueAnimator = pVar.f2932z;
                if (i6 == 1) {
                    valueAnimator.cancel();
                } else if (i6 != 2) {
                }
                pVar.A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                break;
            default:
                ((StaggeredGridLayoutManager) obj).e();
                break;
        }
    }
}
