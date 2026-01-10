package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.a0;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s extends LinearLayout {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f5373a;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f5374b;

    /* renamed from: c, reason: collision with root package name */
    public CharSequence f5375c;
    public final CheckableImageButton d;

    /* renamed from: e, reason: collision with root package name */
    public ColorStateList f5376e;
    public PorterDuff.Mode f;

    /* renamed from: g, reason: collision with root package name */
    public View.OnLongClickListener f5377g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5378h;

    public s(TextInputLayout textInputLayout, a1.b bVar) {
        CharSequence text;
        super(textInputLayout.getContext());
        this.f5373a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.d = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.f5374b = appCompatTextView;
        if (com.bumptech.glide.d.u(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.f5377g;
        checkableImageButton.setOnClickListener(null);
        u7.d.y(checkableImageButton, onLongClickListener);
        this.f5377g = null;
        checkableImageButton.setOnLongClickListener(null);
        u7.d.y(checkableImageButton, null);
        TypedArray typedArray = (TypedArray) bVar.f48c;
        if (typedArray.hasValue(62)) {
            this.f5376e = com.bumptech.glide.d.j(getContext(), bVar, 62);
        }
        if (typedArray.hasValue(63)) {
            this.f = a0.l(typedArray.getInt(63, -1), null);
        }
        if (typedArray.hasValue(61)) {
            a(bVar.t(61));
            if (typedArray.hasValue(60) && checkableImageButton.getContentDescription() != (text = typedArray.getText(60))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(59, true));
        }
        appCompatTextView.setVisibility(8);
        appCompatTextView.setId(R.id.textinput_prefix_text);
        appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        WeakHashMap weakHashMap = s0.f8353a;
        appCompatTextView.setAccessibilityLiveRegion(1);
        n5.d.R(appCompatTextView, typedArray.getResourceId(55, 0));
        if (typedArray.hasValue(56)) {
            appCompatTextView.setTextColor(bVar.s(56));
        }
        CharSequence text2 = typedArray.getText(54);
        this.f5375c = TextUtils.isEmpty(text2) ? null : text2;
        appCompatTextView.setText(text2);
        d();
        addView(checkableImageButton);
        addView(appCompatTextView);
    }

    public final void a(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.d;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.f5376e;
            PorterDuff.Mode mode = this.f;
            TextInputLayout textInputLayout = this.f5373a;
            u7.d.a(textInputLayout, checkableImageButton, colorStateList, mode);
            b(true);
            u7.d.x(textInputLayout, checkableImageButton, this.f5376e);
            return;
        }
        b(false);
        View.OnLongClickListener onLongClickListener = this.f5377g;
        checkableImageButton.setOnClickListener(null);
        u7.d.y(checkableImageButton, onLongClickListener);
        this.f5377g = null;
        checkableImageButton.setOnLongClickListener(null);
        u7.d.y(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    public final void b(boolean z7) {
        CheckableImageButton checkableImageButton = this.d;
        if ((checkableImageButton.getVisibility() == 0) != z7) {
            checkableImageButton.setVisibility(z7 ? 0 : 8);
            c();
            d();
        }
    }

    public final void c() throws Resources.NotFoundException {
        int paddingStart;
        EditText editText = this.f5373a.f5261e;
        if (editText == null) {
            return;
        }
        if (this.d.getVisibility() == 0) {
            paddingStart = 0;
        } else {
            WeakHashMap weakHashMap = s0.f8353a;
            paddingStart = editText.getPaddingStart();
        }
        int compoundPaddingTop = editText.getCompoundPaddingTop();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding);
        int compoundPaddingBottom = editText.getCompoundPaddingBottom();
        WeakHashMap weakHashMap2 = s0.f8353a;
        this.f5374b.setPaddingRelative(paddingStart, compoundPaddingTop, dimensionPixelSize, compoundPaddingBottom);
    }

    public final void d() {
        int i6 = (this.f5375c == null || this.f5378h) ? 8 : 0;
        setVisibility((this.d.getVisibility() == 0 || i6 == 0) ? 0 : 8);
        this.f5374b.setVisibility(i6);
        this.f5373a.o();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i6, int i10) throws Resources.NotFoundException {
        super.onMeasure(i6, i10);
        c();
    }
}
