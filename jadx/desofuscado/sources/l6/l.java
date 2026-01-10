package l6;

import android.animation.ValueAnimator;
import android.graphics.Matrix;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ float f8026a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ float f8027b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f8028c;
    public final /* synthetic */ float d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ float f8029e;
    public final /* synthetic */ float f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ float f8030g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Matrix f8031h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ q f8032i;

    public l(q qVar, float f, float f3, float f4, float f5, float f10, float f11, float f12, Matrix matrix) {
        this.f8032i = qVar;
        this.f8026a = f;
        this.f8027b = f3;
        this.f8028c = f4;
        this.d = f5;
        this.f8029e = f10;
        this.f = f11;
        this.f8030g = f12;
        this.f8031h = matrix;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        q qVar = this.f8032i;
        qVar.f8058v.setAlpha(y5.a.b(this.f8026a, this.f8027b, 0.0f, 0.2f, fFloatValue));
        FloatingActionButton floatingActionButton = qVar.f8058v;
        float f = this.f8028c;
        float f3 = this.d;
        floatingActionButton.setScaleX(y5.a.a(f, f3, fFloatValue));
        qVar.f8058v.setScaleY(y5.a.a(this.f8029e, f3, fFloatValue));
        float f4 = this.f;
        float f5 = this.f8030g;
        qVar.f8052p = y5.a.a(f4, f5, fFloatValue);
        float fA = y5.a.a(f4, f5, fFloatValue);
        Matrix matrix = this.f8031h;
        qVar.a(fA, matrix);
        qVar.f8058v.setImageMatrix(matrix);
    }
}
