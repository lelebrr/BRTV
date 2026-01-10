package com.google.android.material.progressindicator;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import q6.e;
import x5.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class LinearProgressIndicatorSpec extends e {

    /* renamed from: g, reason: collision with root package name */
    public int f5168g;

    /* renamed from: h, reason: collision with root package name */
    public int f5169h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f5170i;

    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.linearProgressIndicatorStyle);
    }

    @Override // q6.e
    public final void a() {
        if (this.f5168g == 0) {
            if (this.f9254b > 0) {
                throw new IllegalArgumentException("Rounded corners are not supported in contiguous indeterminate animation.");
            }
            if (this.f9255c.length < 3) {
                throw new IllegalArgumentException("Contiguous indeterminate animation must be used with 3 or more indicator colors.");
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LinearProgressIndicatorSpec(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        int i10 = LinearProgressIndicator.f5167l;
        int[] iArr = a.f11042w;
        a0.a(context, attributeSet, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        a0.b(context, attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.linearProgressIndicatorStyle, R.style.Widget_MaterialComponents_LinearProgressIndicator);
        this.f5168g = typedArrayObtainStyledAttributes.getInt(0, 1);
        this.f5169h = typedArrayObtainStyledAttributes.getInt(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        a();
        this.f5170i = this.f5169h == 1;
    }
}
