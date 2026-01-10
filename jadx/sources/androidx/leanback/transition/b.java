package androidx.leanback.transition;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends r4.b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FadeAndShortSlide f1589c;

    public b(FadeAndShortSlide fadeAndShortSlide) {
        this.f1589c = fadeAndShortSlide;
    }

    @Override // r4.b
    public final float o(FadeAndShortSlide fadeAndShortSlide, ViewGroup viewGroup, View view, int[] iArr) {
        int iCenterY;
        int height = (view.getHeight() / 2) + iArr[1];
        viewGroup.getLocationOnScreen(iArr);
        Rect epicenter = this.f1589c.getEpicenter();
        if (epicenter == null) {
            iCenterY = (viewGroup.getHeight() / 2) + iArr[1];
        } else {
            iCenterY = epicenter.centerY();
        }
        if (height < iCenterY) {
            return view.getTranslationY() - fadeAndShortSlide.b(viewGroup);
        }
        return fadeAndShortSlide.b(viewGroup) + view.getTranslationY();
    }
}
