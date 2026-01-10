package q6;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public int f9253a;

    /* renamed from: b, reason: collision with root package name */
    public int f9254b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f9255c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f9256e;
    public int f;

    public e(Context context, AttributeSet attributeSet, int i6, int i10) throws Resources.NotFoundException {
        this.f9255c = new int[0];
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.mtrl_progress_track_thickness);
        int[] iArr = x5.a.d;
        a0.a(context, attributeSet, i6, i10);
        a0.b(context, attributeSet, iArr, i6, i10, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i6, i10);
        this.f9253a = com.bumptech.glide.d.l(context, typedArrayObtainStyledAttributes, 8, dimensionPixelSize);
        this.f9254b = Math.min(com.bumptech.glide.d.l(context, typedArrayObtainStyledAttributes, 7, 0), this.f9253a / 2);
        this.f9256e = typedArrayObtainStyledAttributes.getInt(4, 0);
        this.f = typedArrayObtainStyledAttributes.getInt(1, 0);
        if (!typedArrayObtainStyledAttributes.hasValue(2)) {
            this.f9255c = new int[]{o9.e.q(context, R.attr.colorPrimary, -1)};
        } else if (typedArrayObtainStyledAttributes.peekValue(2).type != 1) {
            this.f9255c = new int[]{typedArrayObtainStyledAttributes.getColor(2, -1)};
        } else {
            int[] intArray = context.getResources().getIntArray(typedArrayObtainStyledAttributes.getResourceId(2, -1));
            this.f9255c = intArray;
            if (intArray.length == 0) {
                throw new IllegalArgumentException("indicatorColors cannot be empty when indicatorColor is not used.");
            }
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            this.d = typedArrayObtainStyledAttributes.getColor(6, -1);
        } else {
            this.d = this.f9255c[0];
            TypedArray typedArrayObtainStyledAttributes2 = context.getTheme().obtainStyledAttributes(new int[]{android.R.attr.disabledAlpha});
            float f = typedArrayObtainStyledAttributes2.getFloat(0, 0.2f);
            typedArrayObtainStyledAttributes2.recycle();
            this.d = o9.e.j(this.d, (int) (f * 255.0f));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public abstract void a();
}
