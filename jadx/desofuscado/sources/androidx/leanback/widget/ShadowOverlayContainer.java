package androidx.leanback.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ShadowOverlayContainer extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final int f1786a;

    static {
        new Rect();
    }

    public ShadowOverlayContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public int getShadowType() {
        return this.f1786a;
    }

    public View getWrappedView() {
        return null;
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
    }

    public ShadowOverlayContainer(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(context, attributeSet, i6);
        this.f1786a = 2;
        getResources().getDimension(R.dimen.lb_material_shadow_normal_z);
        getResources().getDimension(R.dimen.lb_material_shadow_focused_z);
        this.f1786a = 3;
    }

    public void setOverlayColor(int i6) {
    }

    public void setShadowFocusLevel(float f) {
    }
}
