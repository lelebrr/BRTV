package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;

/* compiled from: MyApplication */
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
public class VisibilityAwareImageButton extends ImageButton {

    /* renamed from: a, reason: collision with root package name */
    public int f4975a;

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a(int i6, boolean z7) {
        super.setVisibility(i6);
        if (z7) {
            this.f4975a = i6;
        }
    }

    public final int getUserSetVisibility() {
        return this.f4975a;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i6) {
        a(i6, true);
    }

    public VisibilityAwareImageButton(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f4975a = getVisibility();
    }
}
