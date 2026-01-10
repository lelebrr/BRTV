package y1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.Rect;
import android.view.View;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public boolean f11238a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f11239b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Rect f11240c;
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f11241e;
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f11242g;

    public b(View view, Rect rect, int i6, int i10, int i11, int i12) {
        this.f11239b = view;
        this.f11240c = rect;
        this.d = i6;
        this.f11241e = i10;
        this.f = i11;
        this.f11242g = i12;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f11238a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f11238a) {
            return;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        Rect rect = this.f11240c;
        View view = this.f11239b;
        view.setClipBounds(rect);
        g0.a(view, this.d, this.f11241e, this.f, this.f11242g);
    }
}
