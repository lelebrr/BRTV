package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class GuidedActionsRelativeLayout extends RelativeLayout {

    /* renamed from: a, reason: collision with root package name */
    public final float f1657a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1658b;

    public GuidedActionsRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        this.f1658b = false;
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        View viewFindViewById;
        int size = View.MeasureSpec.getSize(i10);
        if (size > 0 && (viewFindViewById = findViewById(R.id.guidedactions_sub_list)) != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams();
            if (marginLayoutParams.topMargin < 0 && !this.f1658b) {
                this.f1658b = true;
            }
            if (this.f1658b) {
                marginLayoutParams.topMargin = (int) ((this.f1657a * size) / 100.0f);
            }
        }
        super.onMeasure(i6, i10);
    }

    public GuidedActionsRelativeLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1658b = false;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(h1.a.f7160a);
        float f = typedArrayObtainStyledAttributes.getFloat(46, 40.0f);
        typedArrayObtainStyledAttributes.recycle();
        this.f1657a = f;
    }
}
