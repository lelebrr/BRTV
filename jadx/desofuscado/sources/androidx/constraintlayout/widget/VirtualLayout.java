package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import v.h;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class VirtualLayout extends ConstraintHelper {

    /* renamed from: h, reason: collision with root package name */
    public boolean f1083h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1084i;

    public VirtualLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public void g(AttributeSet attributeSet) {
        super.g(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f11210b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 6) {
                    this.f1083h = true;
                } else if (index == 13) {
                    this.f1084i = true;
                }
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onAttachedToWindow() {
        ViewParent parent;
        super.onAttachedToWindow();
        if ((this.f1083h || this.f1084i) && (parent = getParent()) != null && (parent instanceof ConstraintLayout)) {
            ConstraintLayout constraintLayout = (ConstraintLayout) parent;
            int visibility = getVisibility();
            float elevation = getElevation();
            for (int i6 = 0; i6 < this.f1014b; i6++) {
                View viewD = constraintLayout.d(this.f1013a[i6]);
                if (viewD != null) {
                    if (this.f1083h) {
                        viewD.setVisibility(visibility);
                    }
                    if (this.f1084i && elevation > 0.0f) {
                        viewD.setTranslationZ(viewD.getTranslationZ() + elevation);
                    }
                }
            }
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        c();
    }

    @Override // android.view.View
    public void setVisibility(int i6) {
        super.setVisibility(i6);
        c();
    }

    public VirtualLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
    }

    public void m(h hVar, int i6, int i10) {
    }
}
