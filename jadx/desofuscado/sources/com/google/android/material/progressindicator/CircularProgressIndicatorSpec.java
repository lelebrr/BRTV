package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.bumptech.glide.d;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import q6.e;
import x5.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class CircularProgressIndicatorSpec extends e {

    /* renamed from: g, reason: collision with root package name */
    public int f5164g;

    /* renamed from: h, reason: collision with root package name */
    public int f5165h;

    /* renamed from: i, reason: collision with root package name */
    public int f5166i;

    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.circularProgressIndicatorStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CircularProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(context, attributeSet, i6, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        int i10 = CircularProgressIndicator.f5163l;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_size_medium);
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_circular_inset_medium);
        int[] iArr = a.f11030k;
        a0.a(context, attributeSet, i6, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        a0.b(context, attributeSet, iArr, i6, R.style.Widget_MaterialComponents_CircularProgressIndicator, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i6, R.style.Widget_MaterialComponents_CircularProgressIndicator);
        this.f5164g = Math.max(d.l(context, typedArrayObtainStyledAttributes, 2, dimensionPixelSize), this.f9253a * 2);
        this.f5165h = d.l(context, typedArrayObtainStyledAttributes, 1, dimensionPixelSize2);
        this.f5166i = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // q6.e
    public final void a() {
    }
}
