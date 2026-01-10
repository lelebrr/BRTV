package androidx.media3.ui;

import android.animation.ValueAnimator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2503a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f2504b;

    public /* synthetic */ g(int i6, Object obj) {
        this.f2503a = i6;
        this.f2504b = obj;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f2503a) {
            case 0:
                ((PlayerControlViewLayoutManager) this.f2504b).lambda$new$0(valueAnimator);
                break;
            case 1:
                ((PlayerControlViewLayoutManager) this.f2504b).lambda$new$1(valueAnimator);
                break;
            case 2:
                ((PlayerControlViewLayoutManager) this.f2504b).lambda$new$2(valueAnimator);
                break;
            case 3:
                ((PlayerControlViewLayoutManager) this.f2504b).lambda$new$3(valueAnimator);
                break;
            default:
                ((DefaultTimeBar) this.f2504b).lambda$new$1(valueAnimator);
                break;
        }
    }
}
