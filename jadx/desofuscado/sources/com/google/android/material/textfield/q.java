package com.google.android.material.textfield;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.Property;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5352a;

    /* renamed from: b, reason: collision with root package name */
    public final TextInputLayout f5353b;

    /* renamed from: c, reason: collision with root package name */
    public LinearLayout f5354c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public FrameLayout f5355e;
    public AnimatorSet f;

    /* renamed from: g, reason: collision with root package name */
    public final float f5356g;

    /* renamed from: h, reason: collision with root package name */
    public int f5357h;

    /* renamed from: i, reason: collision with root package name */
    public int f5358i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f5359j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f5360k;

    /* renamed from: l, reason: collision with root package name */
    public AppCompatTextView f5361l;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f5362m;

    /* renamed from: n, reason: collision with root package name */
    public int f5363n;

    /* renamed from: o, reason: collision with root package name */
    public ColorStateList f5364o;

    /* renamed from: p, reason: collision with root package name */
    public CharSequence f5365p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5366q;

    /* renamed from: r, reason: collision with root package name */
    public AppCompatTextView f5367r;

    /* renamed from: s, reason: collision with root package name */
    public int f5368s;

    /* renamed from: t, reason: collision with root package name */
    public ColorStateList f5369t;

    /* renamed from: u, reason: collision with root package name */
    public Typeface f5370u;

    public q(TextInputLayout textInputLayout) {
        this.f5352a = textInputLayout.getContext();
        this.f5353b = textInputLayout;
        this.f5356g = r0.getResources().getDimensionPixelSize(R.dimen.design_textinput_caption_translate_y);
    }

    public final void a(AppCompatTextView appCompatTextView, int i6) {
        if (this.f5354c == null && this.f5355e == null) {
            Context context = this.f5352a;
            LinearLayout linearLayout = new LinearLayout(context);
            this.f5354c = linearLayout;
            linearLayout.setOrientation(0);
            LinearLayout linearLayout2 = this.f5354c;
            TextInputLayout textInputLayout = this.f5353b;
            textInputLayout.addView(linearLayout2, -1, -2);
            this.f5355e = new FrameLayout(context);
            this.f5354c.addView(this.f5355e, new LinearLayout.LayoutParams(0, -2, 1.0f));
            if (textInputLayout.getEditText() != null) {
                b();
            }
        }
        if (i6 == 0 || i6 == 1) {
            this.f5355e.setVisibility(0);
            this.f5355e.addView(appCompatTextView);
        } else {
            this.f5354c.addView(appCompatTextView, new LinearLayout.LayoutParams(-2, -2));
        }
        this.f5354c.setVisibility(0);
        this.d++;
    }

    public final void b() {
        if (this.f5354c != null) {
            TextInputLayout textInputLayout = this.f5353b;
            if (textInputLayout.getEditText() != null) {
                EditText editText = textInputLayout.getEditText();
                Context context = this.f5352a;
                boolean zU = com.bumptech.glide.d.u(context);
                LinearLayout linearLayout = this.f5354c;
                WeakHashMap weakHashMap = s0.f8353a;
                int paddingStart = editText.getPaddingStart();
                if (zU) {
                    paddingStart = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_default_padding_top);
                if (zU) {
                    dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_top);
                }
                int paddingEnd = editText.getPaddingEnd();
                if (zU) {
                    paddingEnd = context.getResources().getDimensionPixelSize(R.dimen.material_helper_text_font_1_3_padding_horizontal);
                }
                linearLayout.setPaddingRelative(paddingStart, dimensionPixelSize, paddingEnd, 0);
            }
        }
    }

    public final void c() {
        AnimatorSet animatorSet = this.f;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
    }

    public final void d(ArrayList arrayList, boolean z7, AppCompatTextView appCompatTextView, int i6, int i10, int i11) {
        if (appCompatTextView == null || !z7) {
            return;
        }
        if (i6 == i11 || i6 == i10) {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.ALPHA, i11 == i6 ? 1.0f : 0.0f);
            objectAnimatorOfFloat.setDuration(167L);
            objectAnimatorOfFloat.setInterpolator(y5.a.f11406a);
            arrayList.add(objectAnimatorOfFloat);
            if (i11 == i6) {
                ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(appCompatTextView, (Property<AppCompatTextView, Float>) View.TRANSLATION_Y, -this.f5356g, 0.0f);
                objectAnimatorOfFloat2.setDuration(217L);
                objectAnimatorOfFloat2.setInterpolator(y5.a.d);
                arrayList.add(objectAnimatorOfFloat2);
            }
        }
    }

    public final boolean e() {
        return (this.f5358i != 1 || this.f5361l == null || TextUtils.isEmpty(this.f5359j)) ? false : true;
    }

    public final TextView f(int i6) {
        if (i6 == 1) {
            return this.f5361l;
        }
        if (i6 != 2) {
            return null;
        }
        return this.f5367r;
    }

    public final void g() {
        this.f5359j = null;
        c();
        if (this.f5357h == 1) {
            if (!this.f5366q || TextUtils.isEmpty(this.f5365p)) {
                this.f5358i = 0;
            } else {
                this.f5358i = 2;
            }
        }
        j(this.f5357h, this.f5358i, i(this.f5361l, ""));
    }

    public final void h(AppCompatTextView appCompatTextView, int i6) {
        FrameLayout frameLayout;
        LinearLayout linearLayout = this.f5354c;
        if (linearLayout == null) {
            return;
        }
        if ((i6 == 0 || i6 == 1) && (frameLayout = this.f5355e) != null) {
            frameLayout.removeView(appCompatTextView);
        } else {
            linearLayout.removeView(appCompatTextView);
        }
        int i10 = this.d - 1;
        this.d = i10;
        LinearLayout linearLayout2 = this.f5354c;
        if (i10 == 0) {
            linearLayout2.setVisibility(8);
        }
    }

    public final boolean i(AppCompatTextView appCompatTextView, CharSequence charSequence) {
        WeakHashMap weakHashMap = s0.f8353a;
        TextInputLayout textInputLayout = this.f5353b;
        return textInputLayout.isLaidOut() && textInputLayout.isEnabled() && !(this.f5358i == this.f5357h && appCompatTextView != null && TextUtils.equals(appCompatTextView.getText(), charSequence));
    }

    public final void j(int i6, int i10, boolean z7) {
        TextView textViewF;
        TextView textViewF2;
        if (i6 == i10) {
            return;
        }
        if (z7) {
            AnimatorSet animatorSet = new AnimatorSet();
            this.f = animatorSet;
            ArrayList arrayList = new ArrayList();
            d(arrayList, this.f5366q, this.f5367r, 2, i6, i10);
            d(arrayList, this.f5360k, this.f5361l, 1, i6, i10);
            o9.d.x(animatorSet, arrayList);
            animatorSet.addListener(new o(this, i10, f(i6), i6, f(i10)));
            animatorSet.start();
        } else if (i6 != i10) {
            if (i10 != 0 && (textViewF2 = f(i10)) != null) {
                textViewF2.setVisibility(0);
                textViewF2.setAlpha(1.0f);
            }
            if (i6 != 0 && (textViewF = f(i6)) != null) {
                textViewF.setVisibility(4);
                if (i6 == 1) {
                    textViewF.setText((CharSequence) null);
                }
            }
            this.f5357h = i10;
        }
        TextInputLayout textInputLayout = this.f5353b;
        textInputLayout.p();
        textInputLayout.t(z7, false);
        textInputLayout.y();
    }
}
