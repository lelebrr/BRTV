package y1;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.View;
import android.view.ViewGroup;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class o extends ViewGroup implements m {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f11313g = 0;

    /* renamed from: a, reason: collision with root package name */
    public ViewGroup f11314a;

    /* renamed from: b, reason: collision with root package name */
    public View f11315b;

    /* renamed from: c, reason: collision with root package name */
    public final View f11316c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public Matrix f11317e;
    public final a0.d f;

    public o(View view) {
        super(view.getContext());
        this.f = new a0.d(2, this);
        this.f11316c = view;
        setWillNotDraw(false);
        setLayerType(2, null);
    }

    @Override // y1.m
    public final void a(ViewGroup viewGroup, View view) {
        this.f11314a = viewGroup;
        this.f11315b = view;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        View view = this.f11316c;
        view.setTag(R.id.ghost_view, this);
        view.getViewTreeObserver().addOnPreDrawListener(this.f);
        g0.c(4, view);
        if (view.getParent() != null) {
            ((View) view.getParent()).invalidate();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        View view = this.f11316c;
        view.getViewTreeObserver().removeOnPreDrawListener(this.f);
        g0.c(0, view);
        view.setTag(R.id.ghost_view, null);
        if (view.getParent() != null) {
            ((View) view.getParent()).invalidate();
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        v.d(canvas, true);
        canvas.setMatrix(this.f11317e);
        View view = this.f11316c;
        g0.c(0, view);
        view.invalidate();
        g0.c(4, view);
        drawChild(canvas, view, getDrawingTime());
        v.d(canvas, false);
    }

    @Override // android.view.View, y1.m
    public final void setVisibility(int i6) {
        super.setVisibility(i6);
        View view = this.f11316c;
        if (((o) view.getTag(R.id.ghost_view)) == this) {
            g0.c(i6 == 0 ? 4 : 0, view);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
    }
}
