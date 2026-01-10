package androidx.leanback.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.widget.TextView;

/* compiled from: MyApplication */
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
class ResizingTextView extends TextView {

    /* renamed from: a, reason: collision with root package name */
    public final int f1721a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1722b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f1723c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1724e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public int f1725g;

    /* renamed from: h, reason: collision with root package name */
    public float f1726h;

    /* renamed from: i, reason: collision with root package name */
    public int f1727i;

    /* renamed from: j, reason: collision with root package name */
    public int f1728j;

    public ResizingTextView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f = false;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h1.a.f7166i, i6, 0);
        try {
            this.f1721a = typedArrayObtainStyledAttributes.getInt(1, 1);
            this.f1722b = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, -1);
            this.f1723c = typedArrayObtainStyledAttributes.getBoolean(0, false);
            this.d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0);
            this.f1724e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0);
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public final void a(int i6, int i10) {
        if (isPaddingRelative()) {
            setPaddingRelative(getPaddingStart(), i6, getPaddingEnd(), i10);
        } else {
            setPadding(getPaddingLeft(), i6, getPaddingRight(), i10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00cd A[PHI: r2
  0x00cd: PHI (r2v6 boolean) = (r2v2 boolean), (r2v8 boolean) binds: [B:40:0x00ca, B:27:0x0097] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r8, int r9) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.ResizingTextView.onMeasure(int, int):void");
    }

    @Override // android.widget.TextView
    public final void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(n5.d.X(callback, this));
    }

    public ResizingTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }
}
