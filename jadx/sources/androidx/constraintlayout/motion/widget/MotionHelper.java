package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import t.w;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MotionHelper extends ConstraintHelper implements w {

    /* renamed from: h, reason: collision with root package name */
    public boolean f941h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f942i;

    /* renamed from: j, reason: collision with root package name */
    public float f943j;

    /* renamed from: k, reason: collision with root package name */
    public View[] f944k;

    public MotionHelper(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f941h = false;
        this.f942i = false;
        g(attributeSet);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void g(AttributeSet attributeSet) {
        super.g(attributeSet);
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f11216j);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 1) {
                    this.f941h = typedArrayObtainStyledAttributes.getBoolean(index, this.f941h);
                } else if (index == 0) {
                    this.f942i = typedArrayObtainStyledAttributes.getBoolean(index, this.f942i);
                }
            }
        }
    }

    public float getProgress() {
        return this.f943j;
    }

    public void setProgress(float f) {
        this.f943j = f;
        int i6 = 0;
        if (this.f1014b > 0) {
            this.f944k = f((ConstraintLayout) getParent());
            while (i6 < this.f1014b) {
                View view = this.f944k[i6];
                i6++;
            }
            return;
        }
        ViewGroup viewGroup = (ViewGroup) getParent();
        int childCount = viewGroup.getChildCount();
        while (i6 < childCount) {
            boolean z7 = viewGroup.getChildAt(i6) instanceof MotionHelper;
            i6++;
        }
    }

    public MotionHelper(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f941h = false;
        this.f942i = false;
        g(attributeSet);
    }
}
