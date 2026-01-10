package androidx.leanback.transition;

import android.content.Context;
import android.transition.Slide;
import android.util.AttributeSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SlideNoPropagation extends Slide {
    public SlideNoPropagation(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.transition.Slide
    public final void setSlideEdge(int i6) {
        super.setSlideEdge(i6);
        setPropagation(null);
    }
}
