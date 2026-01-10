package y1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Matrix;
import android.view.View;
import androidx.transition.ChangeTransform;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f11270a;

    /* renamed from: b, reason: collision with root package name */
    public final Matrix f11271b = new Matrix();

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f11272c;
    public final /* synthetic */ Matrix d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ View f11273e;
    public final /* synthetic */ j f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ i f11274g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ChangeTransform f11275h;

    public g(ChangeTransform changeTransform, boolean z7, Matrix matrix, View view, j jVar, i iVar) {
        this.f11275h = changeTransform;
        this.f11272c = z7;
        this.d = matrix;
        this.f11273e = view;
        this.f = jVar;
        this.f11274g = iVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f11270a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        boolean z7 = this.f11270a;
        j jVar = this.f;
        View view = this.f11273e;
        if (!z7) {
            if (this.f11272c && this.f11275h.f3004x) {
                Matrix matrix = this.d;
                Matrix matrix2 = this.f11271b;
                matrix2.set(matrix);
                view.setTag(R.id.transition_transform, matrix2);
                jVar.getClass();
                String[] strArr = ChangeTransform.A;
                view.setTranslationX(jVar.f11291a);
                view.setTranslationY(jVar.f11292b);
                WeakHashMap weakHashMap = s0.f8353a;
                n0.g0.w(view, jVar.f11293c);
                view.setScaleX(jVar.d);
                view.setScaleY(jVar.f11294e);
                view.setRotationX(jVar.f);
                view.setRotationY(jVar.f11295g);
                view.setRotation(jVar.f11296h);
            } else {
                view.setTag(R.id.transition_transform, null);
                view.setTag(R.id.parent_matrix, null);
            }
        }
        g0.f11276a.l(view, null);
        jVar.getClass();
        String[] strArr2 = ChangeTransform.A;
        view.setTranslationX(jVar.f11291a);
        view.setTranslationY(jVar.f11292b);
        WeakHashMap weakHashMap2 = s0.f8353a;
        n0.g0.w(view, jVar.f11293c);
        view.setScaleX(jVar.d);
        view.setScaleY(jVar.f11294e);
        view.setRotationX(jVar.f);
        view.setRotationY(jVar.f11295g);
        view.setRotation(jVar.f11296h);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationPause(Animator animator) {
        Matrix matrix = this.f11274g.f11286a;
        Matrix matrix2 = this.f11271b;
        matrix2.set(matrix);
        View view = this.f11273e;
        view.setTag(R.id.transition_transform, matrix2);
        j jVar = this.f;
        jVar.getClass();
        String[] strArr = ChangeTransform.A;
        view.setTranslationX(jVar.f11291a);
        view.setTranslationY(jVar.f11292b);
        WeakHashMap weakHashMap = s0.f8353a;
        n0.g0.w(view, jVar.f11293c);
        view.setScaleX(jVar.d);
        view.setScaleY(jVar.f11294e);
        view.setRotationX(jVar.f);
        view.setRotationY(jVar.f11295g);
        view.setRotation(jVar.f11296h);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
    public final void onAnimationResume(Animator animator) {
        String[] strArr = ChangeTransform.A;
        View view = this.f11273e;
        view.setTranslationX(0.0f);
        view.setTranslationY(0.0f);
        WeakHashMap weakHashMap = s0.f8353a;
        n0.g0.w(view, 0.0f);
        view.setScaleX(1.0f);
        view.setScaleY(1.0f);
        view.setRotationX(0.0f);
        view.setRotationY(0.0f);
        view.setRotation(0.0f);
    }
}
