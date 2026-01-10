package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m0 extends ListPopupWindow implements o0 {
    public CharSequence C;
    public j0 D;
    public final Rect E;
    public int F;
    public final /* synthetic */ AppCompatSpinner G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(AppCompatSpinner appCompatSpinner, Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.G = appCompatSpinner;
        this.E = new Rect();
        this.f573o = appCompatSpinner;
        this.f582x = true;
        this.f583y.setFocusable(true);
        this.f574p = new k0(0, this);
    }

    @Override // androidx.appcompat.widget.o0
    public final void g(CharSequence charSequence) {
        this.C = charSequence;
    }

    @Override // androidx.appcompat.widget.o0
    public final void l(int i6) {
        this.F = i6;
    }

    @Override // androidx.appcompat.widget.o0
    public final void n(int i6, int i10) {
        ViewTreeObserver viewTreeObserver;
        PopupWindow popupWindow = this.f583y;
        boolean zIsShowing = popupWindow.isShowing();
        s();
        this.f583y.setInputMethodMode(2);
        a();
        s1 s1Var = this.f563c;
        s1Var.setChoiceMode(1);
        g0.d(s1Var, i6);
        g0.c(s1Var, i10);
        AppCompatSpinner appCompatSpinner = this.G;
        int selectedItemPosition = appCompatSpinner.getSelectedItemPosition();
        s1 s1Var2 = this.f563c;
        if (popupWindow.isShowing() && s1Var2 != null) {
            s1Var2.setListSelectionHidden(false);
            s1Var2.setSelection(selectedItemPosition);
            if (s1Var2.getChoiceMode() != 0) {
                s1Var2.setItemChecked(selectedItemPosition, true);
            }
        }
        if (zIsShowing || (viewTreeObserver = appCompatSpinner.getViewTreeObserver()) == null) {
            return;
        }
        q qVar = new q(2, this);
        viewTreeObserver.addOnGlobalLayoutListener(qVar);
        this.f583y.setOnDismissListener(new l0(this, qVar));
    }

    @Override // androidx.appcompat.widget.o0
    public final CharSequence p() {
        return this.C;
    }

    @Override // androidx.appcompat.widget.ListPopupWindow, androidx.appcompat.widget.o0
    public final void q(ListAdapter listAdapter) {
        super.q(listAdapter);
        this.D = (j0) listAdapter;
    }

    public final void s() {
        int i6;
        PopupWindow popupWindow = this.f583y;
        Drawable background = popupWindow.getBackground();
        AppCompatSpinner appCompatSpinner = this.G;
        if (background != null) {
            background.getPadding(appCompatSpinner.f528h);
            boolean zA = c4.a(appCompatSpinner);
            Rect rect = appCompatSpinner.f528h;
            i6 = zA ? rect.right : -rect.left;
        } else {
            Rect rect2 = appCompatSpinner.f528h;
            rect2.right = 0;
            rect2.left = 0;
            i6 = 0;
        }
        int paddingLeft = appCompatSpinner.getPaddingLeft();
        int paddingRight = appCompatSpinner.getPaddingRight();
        int width = appCompatSpinner.getWidth();
        int i10 = appCompatSpinner.f527g;
        if (i10 == -2) {
            int iA = appCompatSpinner.a(this.D, popupWindow.getBackground());
            int i11 = appCompatSpinner.getContext().getResources().getDisplayMetrics().widthPixels;
            Rect rect3 = appCompatSpinner.f528h;
            int i12 = (i11 - rect3.left) - rect3.right;
            if (iA > i12) {
                iA = i12;
            }
            r(Math.max(iA, (width - paddingLeft) - paddingRight));
        } else if (i10 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i10);
        }
        this.f = c4.a(appCompatSpinner) ? (((width - paddingRight) - this.f564e) - this.F) + i6 : paddingLeft + this.F + i6;
    }
}
