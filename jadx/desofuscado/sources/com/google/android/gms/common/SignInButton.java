package com.google.android.gms.common;

import a.e;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import b5.d;
import b5.l;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zaaa;
import com.p2elite.brtv2.R;
import g0.a;
import m5.c;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public int f3911a;

    /* renamed from: b, reason: collision with root package name */
    public int f3912b;

    /* renamed from: c, reason: collision with root package name */
    public View f3913c;
    public View.OnClickListener d;

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void a(int i6, int i10) throws Resources.NotFoundException {
        this.f3911a = i6;
        this.f3912b = i10;
        Context context = getContext();
        View view = this.f3913c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f3913c = d.e(context, this.f3911a, this.f3912b);
        } catch (c unused) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i11 = this.f3911a;
            int i12 = this.f3912b;
            zaaa zaaaVar = new zaaa(context, null);
            Resources resources = context.getResources();
            zaaaVar.setTypeface(Typeface.DEFAULT_BOLD);
            zaaaVar.setTextSize(14.0f);
            int i13 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
            zaaaVar.setMinHeight(i13);
            zaaaVar.setMinWidth(i13);
            int iA = zaaa.a(i12, R.drawable.common_google_signin_btn_icon_dark, R.drawable.common_google_signin_btn_icon_light, R.drawable.common_google_signin_btn_icon_light);
            int iA2 = zaaa.a(i12, R.drawable.common_google_signin_btn_text_dark, R.drawable.common_google_signin_btn_text_light, R.drawable.common_google_signin_btn_text_light);
            if (i11 == 0 || i11 == 1) {
                iA = iA2;
            } else if (i11 != 2) {
                throw new IllegalStateException(e.n(i11, "Unknown button size: "));
            }
            Drawable drawableW = n5.d.W(resources.getDrawable(iA));
            a.h(drawableW, resources.getColorStateList(R.color.common_google_signin_btn_tint));
            a.i(drawableW, PorterDuff.Mode.SRC_ATOP);
            zaaaVar.setBackgroundDrawable(drawableW);
            ColorStateList colorStateList = resources.getColorStateList(zaaa.a(i12, R.color.common_google_signin_btn_text_dark, R.color.common_google_signin_btn_text_light, R.color.common_google_signin_btn_text_light));
            l.e(colorStateList);
            zaaaVar.setTextColor(colorStateList);
            if (i11 == 0) {
                zaaaVar.setText(resources.getString(R.string.common_signin_button_text));
            } else if (i11 == 1) {
                zaaaVar.setText(resources.getString(R.string.common_signin_button_text_long));
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException(e.n(i11, "Unknown button size: "));
                }
                zaaaVar.setText((CharSequence) null);
            }
            zaaaVar.setTransformationMethod(null);
            if (o9.e.v(zaaaVar.getContext())) {
                zaaaVar.setGravity(19);
            }
            this.f3913c = zaaaVar;
        }
        addView(this.f3913c);
        this.f3913c.setEnabled(isEnabled());
        this.f3913c.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.d;
        if (onClickListener == null || view != this.f3913c) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i6) throws Resources.NotFoundException {
        a(this.f3911a, i6);
    }

    @Override // android.view.View
    public void setEnabled(boolean z7) {
        super.setEnabled(z7);
        this.f3913c.setEnabled(z7);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.d = onClickListener;
        View view = this.f3913c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(Scope[] scopeArr) throws Resources.NotFoundException {
        a(this.f3911a, this.f3912b);
    }

    public void setSize(int i6) throws Resources.NotFoundException {
        a(i6, this.f3912b);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(context, attributeSet, i6);
        this.d = null;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, o4.a.f8565a, 0, 0);
        try {
            this.f3911a = typedArrayObtainStyledAttributes.getInt(0, 0);
            this.f3912b = typedArrayObtainStyledAttributes.getInt(1, 2);
            typedArrayObtainStyledAttributes.recycle();
            a(this.f3911a, this.f3912b);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }
}
