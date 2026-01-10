package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatTextView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import x5.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MaterialTextView extends AppCompatTextView {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    @Override // androidx.appcompat.widget.AppCompatTextView, android.widget.TextView
    public final void setTextAppearance(Context context, int i6) throws Resources.NotFoundException {
        super.setTextAppearance(context, i6);
        TypedValue typedValueL = c.l(context, com.p2elite.brtv2.R.attr.textAppearanceLineHeightEnabled);
        if (typedValueL != null && typedValueL.type == 18 && typedValueL.data == 0) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(i6, a.H);
        Context context2 = getContext();
        int[] iArr = {1, 2};
        int iL = -1;
        for (int i10 = 0; i10 < 2 && iL < 0; i10++) {
            iL = d.l(context2, typedArrayObtainStyledAttributes, iArr[i10], -1);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (iL >= 0) {
            setLineHeight(iL);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaterialTextView(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(y6.a.a(context, attributeSet, i6, 0), attributeSet, i6);
        Context context2 = getContext();
        TypedValue typedValueL = c.l(context2, com.p2elite.brtv2.R.attr.textAppearanceLineHeightEnabled);
        if (typedValueL != null && typedValueL.type == 18 && typedValueL.data == 0) {
            return;
        }
        Resources.Theme theme = context2.getTheme();
        int[] iArr = a.I;
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        int[] iArr2 = {1, 2};
        int iL = -1;
        for (int i10 = 0; i10 < 2 && iL < 0; i10++) {
            iL = d.l(context2, typedArrayObtainStyledAttributes, iArr2[i10], -1);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (iL != -1) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        int resourceId = typedArrayObtainStyledAttributes2.getResourceId(0, -1);
        typedArrayObtainStyledAttributes2.recycle();
        if (resourceId != -1) {
            TypedArray typedArrayObtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, a.H);
            Context context3 = getContext();
            int[] iArr3 = {1, 2};
            int iL2 = -1;
            for (int i11 = 0; i11 < 2 && iL2 < 0; i11++) {
                iL2 = d.l(context3, typedArrayObtainStyledAttributes3, iArr3[i11], -1);
            }
            typedArrayObtainStyledAttributes3.recycle();
            if (iL2 >= 0) {
                setLineHeight(iL2);
            }
        }
    }
}
