package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import v.e;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Layer extends ConstraintHelper {

    /* renamed from: h, reason: collision with root package name */
    public float f923h;

    /* renamed from: i, reason: collision with root package name */
    public float f924i;

    /* renamed from: j, reason: collision with root package name */
    public float f925j;

    /* renamed from: k, reason: collision with root package name */
    public ConstraintLayout f926k;

    /* renamed from: l, reason: collision with root package name */
    public float f927l;

    /* renamed from: m, reason: collision with root package name */
    public float f928m;

    /* renamed from: n, reason: collision with root package name */
    public float f929n;

    /* renamed from: o, reason: collision with root package name */
    public float f930o;

    /* renamed from: p, reason: collision with root package name */
    public float f931p;

    /* renamed from: q, reason: collision with root package name */
    public float f932q;

    /* renamed from: r, reason: collision with root package name */
    public float f933r;

    /* renamed from: s, reason: collision with root package name */
    public float f934s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f935t;

    /* renamed from: u, reason: collision with root package name */
    public View[] f936u;

    /* renamed from: v, reason: collision with root package name */
    public float f937v;

    /* renamed from: w, reason: collision with root package name */
    public float f938w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f939x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f940y;

    public Layer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f923h = Float.NaN;
        this.f924i = Float.NaN;
        this.f925j = Float.NaN;
        this.f927l = 1.0f;
        this.f928m = 1.0f;
        this.f929n = Float.NaN;
        this.f930o = Float.NaN;
        this.f931p = Float.NaN;
        this.f932q = Float.NaN;
        this.f933r = Float.NaN;
        this.f934s = Float.NaN;
        this.f935t = true;
        this.f936u = null;
        this.f937v = 0.0f;
        this.f938w = 0.0f;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void g(AttributeSet attributeSet) {
        super.g(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f11210b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 6) {
                    this.f939x = true;
                } else if (index == 13) {
                    this.f940y = true;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void j() {
        n();
        this.f929n = Float.NaN;
        this.f930o = Float.NaN;
        e eVar = ((ConstraintLayout.LayoutParams) getLayoutParams()).f1052l0;
        eVar.z(0);
        eVar.w(0);
        m();
        layout(((int) this.f933r) - getPaddingLeft(), ((int) this.f934s) - getPaddingTop(), getPaddingRight() + ((int) this.f931p), getPaddingBottom() + ((int) this.f932q));
        if (Float.isNaN(this.f925j)) {
            return;
        }
        o();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void k(ConstraintLayout constraintLayout) {
        this.f926k = constraintLayout;
        float rotation = getRotation();
        if (rotation != 0.0f) {
            this.f925j = rotation;
        } else {
            if (Float.isNaN(this.f925j)) {
                return;
            }
            this.f925j = rotation;
        }
    }

    public final void m() {
        if (this.f926k == null) {
            return;
        }
        if (this.f935t || Float.isNaN(this.f929n) || Float.isNaN(this.f930o)) {
            if (!Float.isNaN(this.f923h) && !Float.isNaN(this.f924i)) {
                this.f930o = this.f924i;
                this.f929n = this.f923h;
                return;
            }
            View[] viewArrF = f(this.f926k);
            int left = viewArrF[0].getLeft();
            int top = viewArrF[0].getTop();
            int right = viewArrF[0].getRight();
            int bottom = viewArrF[0].getBottom();
            for (int i6 = 0; i6 < this.f1014b; i6++) {
                View view = viewArrF[i6];
                left = Math.min(left, view.getLeft());
                top = Math.min(top, view.getTop());
                right = Math.max(right, view.getRight());
                bottom = Math.max(bottom, view.getBottom());
            }
            this.f931p = right;
            this.f932q = bottom;
            this.f933r = left;
            this.f934s = top;
            if (Float.isNaN(this.f923h)) {
                this.f929n = (left + right) / 2;
            } else {
                this.f929n = this.f923h;
            }
            if (Float.isNaN(this.f924i)) {
                this.f930o = (top + bottom) / 2;
            } else {
                this.f930o = this.f924i;
            }
        }
    }

    public final void n() {
        int i6;
        if (this.f926k == null || (i6 = this.f1014b) == 0) {
            return;
        }
        View[] viewArr = this.f936u;
        if (viewArr == null || viewArr.length != i6) {
            this.f936u = new View[i6];
        }
        for (int i10 = 0; i10 < this.f1014b; i10++) {
            this.f936u[i10] = this.f926k.d(this.f1013a[i10]);
        }
    }

    public final void o() {
        if (this.f926k == null) {
            return;
        }
        if (this.f936u == null) {
            n();
        }
        m();
        double radians = Math.toRadians(this.f925j);
        float fSin = (float) Math.sin(radians);
        float fCos = (float) Math.cos(radians);
        float f = this.f927l;
        float f3 = f * fCos;
        float f4 = this.f928m;
        float f5 = (-f4) * fSin;
        float f10 = f * fSin;
        float f11 = f4 * fCos;
        for (int i6 = 0; i6 < this.f1014b; i6++) {
            View view = this.f936u[i6];
            int right = (view.getRight() + view.getLeft()) / 2;
            int bottom = (view.getBottom() + view.getTop()) / 2;
            float f12 = right - this.f929n;
            float f13 = bottom - this.f930o;
            float f14 = (((f5 * f13) + (f3 * f12)) - f12) + this.f937v;
            float f15 = (((f11 * f13) + (f12 * f10)) - f13) + this.f938w;
            view.setTranslationX(f14);
            view.setTranslationY(f15);
            view.setScaleY(this.f928m);
            view.setScaleX(this.f927l);
            view.setRotation(this.f925j);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f926k = (ConstraintLayout) getParent();
        if (this.f939x || this.f940y) {
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i6 = 0; i6 < this.f1014b; i6++) {
                View viewD = this.f926k.d(this.f1013a[i6]);
                if (viewD != null) {
                    if (this.f939x) {
                        viewD.setVisibility(visibility);
                    }
                    if (this.f940y && elevation > 0.0f) {
                        viewD.setTranslationZ(viewD.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        c();
    }

    @Override // android.view.View
    public void setPivotX(float f) {
        this.f923h = f;
        o();
    }

    @Override // android.view.View
    public void setPivotY(float f) {
        this.f924i = f;
        o();
    }

    @Override // android.view.View
    public void setRotation(float f) {
        this.f925j = f;
        o();
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        this.f927l = f;
        o();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        this.f928m = f;
        o();
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        this.f937v = f;
        o();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        this.f938w = f;
        o();
    }

    @Override // android.view.View
    public void setVisibility(int i6) {
        super.setVisibility(i6);
        c();
    }

    public Layer(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f923h = Float.NaN;
        this.f924i = Float.NaN;
        this.f925j = Float.NaN;
        this.f927l = 1.0f;
        this.f928m = 1.0f;
        this.f929n = Float.NaN;
        this.f930o = Float.NaN;
        this.f931p = Float.NaN;
        this.f932q = Float.NaN;
        this.f933r = Float.NaN;
        this.f934s = Float.NaN;
        this.f935t = true;
        this.f936u = null;
        this.f937v = 0.0f;
        this.f938w = 0.0f;
    }
}
