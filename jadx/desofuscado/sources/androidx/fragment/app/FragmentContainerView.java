package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import n0.r1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f1384a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f1385b;

    /* renamed from: c, reason: collision with root package name */
    public View.OnApplyWindowInsetsListener f1386c;
    public boolean d;

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a(View view) {
        ArrayList arrayList = this.f1385b;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.f1384a == null) {
            this.f1384a = new ArrayList();
        }
        this.f1384a.add(view);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof s ? (s) tag : null) != null) {
            super.addView(view, i6, layoutParams);
            return;
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i6, ViewGroup.LayoutParams layoutParams, boolean z7) {
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if ((tag instanceof s ? (s) tag : null) != null) {
            return super.addViewInLayout(view, i6, layoutParams, z7);
        }
        throw new IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        r1 r1VarH = r1.h(windowInsets, null);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.f1386c;
        r1 r1VarH2 = onApplyWindowInsetsListener != null ? r1.h(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets), null) : n0.s0.k(this, r1VarH);
        if (!r1VarH2.f8352a.n()) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                n0.s0.b(getChildAt(i6), r1VarH2);
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.d && this.f1384a != null) {
            for (int i6 = 0; i6 < this.f1384a.size(); i6++) {
                super.drawChild(canvas, (View) this.f1384a.get(i6), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j10) {
        ArrayList arrayList;
        if (!this.d || (arrayList = this.f1384a) == null || arrayList.size() <= 0 || !this.f1384a.contains(view)) {
            return super.drawChild(canvas, view, j10);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        ArrayList arrayList = this.f1385b;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList arrayList2 = this.f1384a;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.d = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z7) {
        if (z7) {
            a(view);
        }
        super.removeDetachedView(view, z7);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i6) {
        a(getChildAt(i6));
        super.removeViewAt(i6);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i6, int i10) {
        for (int i11 = i6; i11 < i6 + i10; i11++) {
            a(getChildAt(i11));
        }
        super.removeViews(i6, i10);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i6, int i10) {
        for (int i11 = i6; i11 < i6 + i10; i11++) {
            a(getChildAt(i11));
        }
        super.removeViewsInLayout(i6, i10);
    }

    public void setDrawDisappearingViewsLast(boolean z7) {
        this.d = z7;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.f1386c = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.f1385b == null) {
                this.f1385b = new ArrayList();
            }
            this.f1385b.add(view);
        }
        super.startViewTransition(view);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, int i6) {
        String str;
        super(context, attributeSet, i6);
        this.d = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1.a.f6776b);
            if (classAttribute == null) {
                classAttribute = typedArrayObtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = "class";
            }
            typedArrayObtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + "\"");
        }
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }
}
