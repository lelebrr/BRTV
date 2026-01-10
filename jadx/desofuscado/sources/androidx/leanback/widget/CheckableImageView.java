package androidx.leanback.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import android.widget.ImageView;

/* compiled from: MyApplication */
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
class CheckableImageView extends ImageView implements Checkable {

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f1622b = {R.attr.state_checked};

    /* renamed from: a, reason: collision with root package name */
    public boolean f1623a;

    public CheckableImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f1623a;
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i6) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i6 + 1);
        if (this.f1623a) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f1622b);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z7) {
        if (this.f1623a != z7) {
            this.f1623a = z7;
            refreshDrawableState();
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f1623a);
    }

    public CheckableImageView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
    }
}
