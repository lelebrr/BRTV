package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class GuidedActionItemContainer extends NonOverlappingLinearLayoutWithForeground {
    public final boolean d;

    public GuidedActionItemContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final View focusSearch(View view, int i6) {
        if (this.d || !com.bumptech.glide.d.s(this, view)) {
            return super.focusSearch(view, i6);
        }
        View viewFocusSearch = super.focusSearch(view, i6);
        if (com.bumptech.glide.d.s(this, viewFocusSearch)) {
            return viewFocusSearch;
        }
        return null;
    }

    public GuidedActionItemContainer(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.d = true;
    }
}
