package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;
import q6.d;
import q6.e;
import q6.j;
import q6.o;
import q6.p;
import q6.q;
import q6.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class LinearProgressIndicator extends d {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f5167l = 0;

    public LinearProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    @Override // q6.d
    public final e a(Context context, AttributeSet attributeSet) {
        return new LinearProgressIndicatorSpec(context, attributeSet);
    }

    @Override // q6.d
    public final void b(int i6) {
        e eVar = this.f9244a;
        if (eVar != null && ((LinearProgressIndicatorSpec) eVar).f5168g == 0 && isIndeterminate()) {
            return;
        }
        super.b(i6);
    }

    public int getIndeterminateAnimationType() {
        return ((LinearProgressIndicatorSpec) this.f9244a).f5168g;
    }

    public int getIndicatorDirection() {
        return ((LinearProgressIndicatorSpec) this.f9244a).f5169h;
    }

    @Override // android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        e eVar = this.f9244a;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) eVar;
        boolean z10 = true;
        if (((LinearProgressIndicatorSpec) eVar).f5169h != 1) {
            WeakHashMap weakHashMap = s0.f8353a;
            if ((getLayoutDirection() != 1 || ((LinearProgressIndicatorSpec) eVar).f5169h != 2) && (getLayoutDirection() != 0 || ((LinearProgressIndicatorSpec) eVar).f5169h != 3)) {
                z10 = false;
            }
        }
        linearProgressIndicatorSpec.f5170i = z10;
    }

    @Override // android.widget.ProgressBar, android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        int paddingRight = i6 - (getPaddingRight() + getPaddingLeft());
        int paddingBottom = i10 - (getPaddingBottom() + getPaddingTop());
        o indeterminateDrawable = getIndeterminateDrawable();
        if (indeterminateDrawable != null) {
            indeterminateDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
        j progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            progressDrawable.setBounds(0, 0, paddingRight, paddingBottom);
        }
    }

    public void setIndeterminateAnimationType(int i6) {
        e eVar = this.f9244a;
        if (((LinearProgressIndicatorSpec) eVar).f5168g == i6) {
            return;
        }
        if (c() && isIndeterminate()) {
            throw new IllegalStateException("Cannot change indeterminate animation type while the progress indicator is show in indeterminate mode.");
        }
        ((LinearProgressIndicatorSpec) eVar).f5168g = i6;
        ((LinearProgressIndicatorSpec) eVar).a();
        if (i6 == 0) {
            o indeterminateDrawable = getIndeterminateDrawable();
            q qVar = new q((LinearProgressIndicatorSpec) eVar);
            indeterminateDrawable.f9295m = qVar;
            qVar.f9291a = indeterminateDrawable;
        } else {
            o indeterminateDrawable2 = getIndeterminateDrawable();
            s sVar = new s(getContext(), (LinearProgressIndicatorSpec) eVar);
            indeterminateDrawable2.f9295m = sVar;
            sVar.f9291a = indeterminateDrawable2;
        }
        invalidate();
    }

    @Override // q6.d
    public void setIndicatorColor(int... iArr) {
        super.setIndicatorColor(iArr);
        ((LinearProgressIndicatorSpec) this.f9244a).a();
    }

    public void setIndicatorDirection(int i6) {
        e eVar = this.f9244a;
        ((LinearProgressIndicatorSpec) eVar).f5169h = i6;
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) eVar;
        boolean z7 = true;
        if (i6 != 1) {
            WeakHashMap weakHashMap = s0.f8353a;
            if ((getLayoutDirection() != 1 || ((LinearProgressIndicatorSpec) eVar).f5169h != 2) && (getLayoutDirection() != 0 || i6 != 3)) {
                z7 = false;
            }
        }
        linearProgressIndicatorSpec.f5170i = z7;
        invalidate();
    }

    @Override // q6.d
    public void setTrackCornerRadius(int i6) {
        super.setTrackCornerRadius(i6);
        ((LinearProgressIndicatorSpec) this.f9244a).a();
        invalidate();
    }

    public LinearProgressIndicator(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        Context context2 = getContext();
        LinearProgressIndicatorSpec linearProgressIndicatorSpec = (LinearProgressIndicatorSpec) this.f9244a;
        setIndeterminateDrawable(new o(context2, linearProgressIndicatorSpec, new p(linearProgressIndicatorSpec), linearProgressIndicatorSpec.f5168g == 0 ? new q(linearProgressIndicatorSpec) : new s(context2, linearProgressIndicatorSpec)));
        setProgressDrawable(new j(getContext(), linearProgressIndicatorSpec, new p(linearProgressIndicatorSpec)));
    }
}
