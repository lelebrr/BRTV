package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class VerticalGridView extends j {
    public VerticalGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void setColumnWidth(TypedArray typedArray) {
        if (typedArray.peekValue(0) != null) {
            setColumnWidth(typedArray.getLayoutDimension(0, 0));
        }
    }

    public void setNumColumns(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        if (i6 < 0) {
            gridLayoutManager.getClass();
            throw new IllegalArgumentException();
        }
        gridLayoutManager.F = i6;
        requestLayout();
    }

    public VerticalGridView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1841a.setOrientation(1);
        b(context, attributeSet);
        int[] iArr = m0.f1862c;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        n0.s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        setColumnWidth(typedArrayObtainStyledAttributes);
        setNumColumns(typedArrayObtainStyledAttributes.getInt(1, 1));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setColumnWidth(int i6) {
        this.f1841a.I(i6);
        requestLayout();
    }
}
