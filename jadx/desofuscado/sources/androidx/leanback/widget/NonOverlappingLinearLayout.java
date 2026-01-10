package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NonOverlappingLinearLayout extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public boolean f1688a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f1689b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1690c;

    public NonOverlappingLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void focusableViewAvailable(View view) {
        int iIndexOfChild;
        if (!this.f1689b) {
            super.focusableViewAvailable(view);
            return;
        }
        for (View view2 = view; view2 != this && view2 != null; view2 = (View) view2.getParent()) {
            if (view2.getParent() == this) {
                iIndexOfChild = indexOfChild(view2);
                break;
            }
        }
        iIndexOfChild = -1;
        if (iIndexOfChild != -1) {
            ((ArrayList) this.f1690c.get(iIndexOfChild)).add(view);
        }
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        ArrayList arrayList = this.f1690c;
        int i13 = 0;
        try {
            boolean z10 = this.f1688a && getOrientation() == 0 && getLayoutDirection() == 1;
            this.f1689b = z10;
            if (z10) {
                while (arrayList.size() > getChildCount()) {
                    arrayList.remove(arrayList.size() - 1);
                }
                while (arrayList.size() < getChildCount()) {
                    arrayList.add(new ArrayList());
                }
            }
            super.onLayout(z7, i6, i10, i11, i12);
            if (this.f1689b) {
                for (int i14 = 0; i14 < arrayList.size(); i14++) {
                    for (int i15 = 0; i15 < ((ArrayList) arrayList.get(i14)).size(); i15++) {
                        super.focusableViewAvailable((View) ((ArrayList) arrayList.get(i14)).get(i15));
                    }
                }
            }
            if (this.f1689b) {
                this.f1689b = false;
                while (i13 < arrayList.size()) {
                    ((ArrayList) arrayList.get(i13)).clear();
                    i13++;
                }
            }
        } catch (Throwable th) {
            if (this.f1689b) {
                this.f1689b = false;
                while (i13 < arrayList.size()) {
                    ((ArrayList) arrayList.get(i13)).clear();
                    i13++;
                }
            }
            throw th;
        }
    }

    public void setFocusableViewAvailableFixEnabled(boolean z7) {
        this.f1688a = z7;
    }

    public NonOverlappingLinearLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1688a = false;
        this.f1690c = new ArrayList();
    }
}
