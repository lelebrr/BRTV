package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class ControlBar extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public int f1624a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f1625b;

    public ControlBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1624a = -1;
        this.f1625b = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i6, int i10) {
        if (i6 != 33 && i6 != 130) {
            super.addFocusables(arrayList, i6, i10);
            return;
        }
        int i11 = this.f1624a;
        if (i11 >= 0 && i11 < getChildCount()) {
            arrayList.add(getChildAt(this.f1624a));
        } else if (getChildCount() > 0) {
            arrayList.add(getChildAt(this.f1625b ? getChildCount() / 2 : 0));
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i6, Rect rect) {
        if (getChildCount() > 0) {
            int i10 = this.f1624a;
            if (getChildAt((i10 < 0 || i10 >= getChildCount()) ? this.f1625b ? getChildCount() / 2 : 0 : this.f1624a).requestFocus(i6, rect)) {
                return true;
            }
        }
        return super.onRequestFocusInDescendants(i6, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        this.f1624a = indexOfChild(view);
    }

    public ControlBar(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1624a = -1;
        this.f1625b = true;
    }
}
