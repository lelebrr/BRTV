package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public TextView f5218a;

    /* renamed from: b, reason: collision with root package name */
    public Button f5219b;

    /* renamed from: c, reason: collision with root package name */
    public int f5220c;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public final boolean a(int i6, int i10, int i11) {
        boolean z7;
        if (i6 != getOrientation()) {
            setOrientation(i6);
            z7 = true;
        } else {
            z7 = false;
        }
        if (this.f5218a.getPaddingTop() == i10 && this.f5218a.getPaddingBottom() == i11) {
            return z7;
        }
        TextView textView = this.f5218a;
        WeakHashMap weakHashMap = s0.f8353a;
        if (textView.isPaddingRelative()) {
            textView.setPaddingRelative(textView.getPaddingStart(), i10, textView.getPaddingEnd(), i11);
            return true;
        }
        textView.setPadding(textView.getPaddingLeft(), i10, textView.getPaddingRight(), i11);
        return true;
    }

    public Button getActionView() {
        return this.f5219b;
    }

    public TextView getMessageView() {
        return this.f5218a;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f5218a = (TextView) findViewById(R.id.snackbar_text);
        this.f5219b = (Button) findViewById(R.id.snackbar_action);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) throws Resources.NotFoundException {
        super.onMeasure(i6, i10);
        if (getOrientation() == 1) {
            return;
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.design_snackbar_padding_vertical);
        boolean z7 = this.f5218a.getLayout().getLineCount() > 1;
        if (!z7 || this.f5220c <= 0 || this.f5219b.getMeasuredWidth() <= this.f5220c) {
            if (!z7) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (!a(0, dimensionPixelSize, dimensionPixelSize)) {
                return;
            }
        } else if (!a(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
            return;
        }
        super.onMeasure(i6, i10);
    }

    public void setMaxInlineActionWidth(int i6) {
        this.f5220c = i6;
    }
}
