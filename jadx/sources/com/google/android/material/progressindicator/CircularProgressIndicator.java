package com.google.android.material.progressindicator;

import android.content.Context;
import android.util.AttributeSet;
import com.p2elite.brtv2.R;
import q6.d;
import q6.e;
import q6.f;
import q6.h;
import q6.j;
import q6.o;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class CircularProgressIndicator extends d {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f5163l = 0;

    public CircularProgressIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    @Override // q6.d
    public final e a(Context context, AttributeSet attributeSet) {
        return new CircularProgressIndicatorSpec(context, attributeSet);
    }

    public int getIndicatorDirection() {
        return ((CircularProgressIndicatorSpec) this.f9244a).f5166i;
    }

    public int getIndicatorInset() {
        return ((CircularProgressIndicatorSpec) this.f9244a).f5165h;
    }

    public int getIndicatorSize() {
        return ((CircularProgressIndicatorSpec) this.f9244a).f5164g;
    }

    public void setIndicatorDirection(int i6) {
        ((CircularProgressIndicatorSpec) this.f9244a).f5166i = i6;
        invalidate();
    }

    public void setIndicatorInset(int i6) {
        e eVar = this.f9244a;
        if (((CircularProgressIndicatorSpec) eVar).f5165h != i6) {
            ((CircularProgressIndicatorSpec) eVar).f5165h = i6;
            invalidate();
        }
    }

    public void setIndicatorSize(int i6) {
        int iMax = Math.max(i6, getTrackThickness() * 2);
        e eVar = this.f9244a;
        if (((CircularProgressIndicatorSpec) eVar).f5164g != iMax) {
            ((CircularProgressIndicatorSpec) eVar).f5164g = iMax;
            ((CircularProgressIndicatorSpec) eVar).getClass();
            invalidate();
        }
    }

    @Override // q6.d
    public void setTrackThickness(int i6) {
        super.setTrackThickness(i6);
        ((CircularProgressIndicatorSpec) this.f9244a).getClass();
    }

    public CircularProgressIndicator(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        Context context2 = getContext();
        CircularProgressIndicatorSpec circularProgressIndicatorSpec = (CircularProgressIndicatorSpec) this.f9244a;
        setIndeterminateDrawable(new o(context2, circularProgressIndicatorSpec, new f(circularProgressIndicatorSpec), new h(circularProgressIndicatorSpec)));
        setProgressDrawable(new j(getContext(), circularProgressIndicatorSpec, new f(circularProgressIndicatorSpec)));
    }
}
