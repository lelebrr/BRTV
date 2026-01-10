package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.TextView;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppCompatTextView extends TextView implements androidx.core.widget.s {

    /* renamed from: a, reason: collision with root package name */
    public final u f530a;

    /* renamed from: b, reason: collision with root package name */
    public final x0 f531b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f532c;
    public y d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f533e;
    public a0.b f;

    /* renamed from: g, reason: collision with root package name */
    public Future f534g;

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private y getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new y(this);
        }
        return this.d;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        u uVar = this.f530a;
        if (uVar != null) {
            uVar.a();
        }
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    public final void f() {
        Future future = this.f534g;
        if (future == null) {
            return;
        }
        try {
            this.f534g = null;
            if (future.get() != null) {
                throw new ClassCastException();
            }
            if (Build.VERSION.SDK_INT >= 29) {
                throw null;
            }
            n5.d.y(this);
            throw null;
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (c4.f679b) {
            return super.getAutoSizeMaxTextSize();
        }
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            return Math.round(x0Var.f887i.f722e);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (c4.f679b) {
            return super.getAutoSizeMinTextSize();
        }
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            return Math.round(x0Var.f887i.d);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (c4.f679b) {
            return super.getAutoSizeStepGranularity();
        }
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            return Math.round(x0Var.f887i.f721c);
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (c4.f679b) {
            return super.getAutoSizeTextAvailableSizes();
        }
        x0 x0Var = this.f531b;
        return x0Var != null ? x0Var.f887i.f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (c4.f679b) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            return x0Var.f887i.f719a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return n5.d.U(super.getCustomSelectionActionModeCallback());
    }

    @Override // android.widget.TextView
    public int getFirstBaselineToTopHeight() {
        return getPaddingTop() - getPaint().getFontMetricsInt().top;
    }

    @Override // android.widget.TextView
    public int getLastBaselineToBottomHeight() {
        return getPaddingBottom() + getPaint().getFontMetricsInt().bottom;
    }

    public y0 getSuperCaller() {
        if (this.f == null) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 >= 28) {
                this.f = new z0(this);
            } else if (i6 >= 26) {
                this.f = new a0.b(6, this);
            }
        }
        return this.f;
    }

    public ColorStateList getSupportBackgroundTintList() {
        u uVar = this.f530a;
        if (uVar != null) {
            return uVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        u uVar = this.f530a;
        if (uVar != null) {
            return uVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f531b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f531b.e();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        f();
        return super.getText();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        b0 b0Var;
        if (Build.VERSION.SDK_INT >= 28 || (b0Var = this.f532c) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) b0Var.f671c;
        return textClassifier == null ? p0.a((TextView) b0Var.f670b) : textClassifier;
    }

    public l0.g getTextMetricsParamsCompat() {
        return n5.d.y(this);
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        this.f531b.getClass();
        x0.h(editorInfo, inputConnectionOnCreateInputConnection, this);
        o9.e.A(editorInfo, inputConnectionOnCreateInputConnection, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        x0 x0Var = this.f531b;
        if (x0Var == null || c4.f679b) {
            return;
        }
        x0Var.f887i.a();
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i6, int i10) {
        f();
        super.onMeasure(i6, i10);
    }

    @Override // android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
        super.onTextChanged(charSequence, i6, i10, i11);
        x0 x0Var = this.f531b;
        if (x0Var == null || c4.f679b) {
            return;
        }
        g1 g1Var = x0Var.f887i;
        if (g1Var.f()) {
            g1Var.a();
        }
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z7) {
        super.setAllCaps(z7);
        getEmojiTextViewHelper().c(z7);
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithConfiguration(int i6, int i10, int i11, int i12) {
        if (c4.f679b) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i6, i10, i11, i12);
            return;
        }
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.i(i6, i10, i11, i12);
        }
    }

    @Override // android.widget.TextView
    public final void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i6) {
        if (c4.f679b) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i6);
            return;
        }
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.j(iArr, i6);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i6) {
        if (c4.f679b) {
            super.setAutoSizeTextTypeWithDefaults(i6);
            return;
        }
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.k(i6);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        u uVar = this.f530a;
        if (uVar != null) {
            uVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        u uVar = this.f530a;
        if (uVar != null) {
            uVar.g(i6);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(n5.d.X(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z7) {
        getEmojiTextViewHelper().d(z7);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    @Override // android.widget.TextView
    public void setFirstBaselineToTopHeight(int i6) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().k(i6);
        } else {
            n5.d.O(this, i6);
        }
    }

    @Override // android.widget.TextView
    public void setLastBaselineToBottomHeight(int i6) {
        if (Build.VERSION.SDK_INT >= 28) {
            getSuperCaller().a(i6);
        } else {
            n5.d.P(this, i6);
        }
    }

    @Override // android.widget.TextView
    public void setLineHeight(int i6) {
        a2.a.o(i6);
        if (i6 != getPaint().getFontMetricsInt(null)) {
            setLineSpacing(i6 - r0, 1.0f);
        }
    }

    public void setPrecomputedText(l0.h hVar) {
        if (Build.VERSION.SDK_INT >= 29) {
            throw null;
        }
        n5.d.y(this);
        throw null;
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        u uVar = this.f530a;
        if (uVar != null) {
            uVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        u uVar = this.f530a;
        if (uVar != null) {
            uVar.j(mode);
        }
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        x0 x0Var = this.f531b;
        x0Var.l(colorStateList);
        x0Var.b();
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        x0 x0Var = this.f531b;
        x0Var.m(mode);
        x0Var.b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i6) {
        super.setTextAppearance(context, i6);
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.g(context, i6);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        b0 b0Var;
        if (Build.VERSION.SDK_INT >= 28 || (b0Var = this.f532c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            b0Var.f671c = textClassifier;
        }
    }

    public void setTextFuture(Future<l0.h> future) {
        this.f534g = future;
        if (future != null) {
            requestLayout();
        }
    }

    public void setTextMetricsParamsCompat(l0.g gVar) {
        TextDirectionHeuristic textDirectionHeuristic;
        TextDirectionHeuristic textDirectionHeuristic2 = gVar.f7937b;
        TextDirectionHeuristic textDirectionHeuristic3 = TextDirectionHeuristics.FIRSTSTRONG_RTL;
        int i6 = 1;
        if (textDirectionHeuristic2 != textDirectionHeuristic3 && textDirectionHeuristic2 != (textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR)) {
            if (textDirectionHeuristic2 == TextDirectionHeuristics.ANYRTL_LTR) {
                i6 = 2;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LTR) {
                i6 = 3;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.RTL) {
                i6 = 4;
            } else if (textDirectionHeuristic2 == TextDirectionHeuristics.LOCALE) {
                i6 = 5;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic) {
                i6 = 6;
            } else if (textDirectionHeuristic2 == textDirectionHeuristic3) {
                i6 = 7;
            }
        }
        setTextDirection(i6);
        int i10 = Build.VERSION.SDK_INT;
        TextPaint textPaint = gVar.f7936a;
        if (i10 >= 23) {
            getPaint().set(textPaint);
            androidx.core.widget.n.e(this, gVar.f7938c);
            androidx.core.widget.n.h(this, gVar.d);
        } else {
            float textScaleX = textPaint.getTextScaleX();
            getPaint().set(textPaint);
            if (textScaleX == getTextScaleX()) {
                setTextScaleX((textScaleX / 2.0f) + 1.0f);
            }
            setTextScaleX(textScaleX);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i6, float f) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z7 = c4.f679b;
        if (z7) {
            super.setTextSize(i6, f);
            return;
        }
        x0 x0Var = this.f531b;
        if (x0Var == null || z7) {
            return;
        }
        g1 g1Var = x0Var.f887i;
        if (g1Var.f()) {
            return;
        }
        g1Var.g(i6, f);
    }

    @Override // android.widget.TextView
    public final void setTypeface(Typeface typeface, int i6) {
        Typeface typefaceCreate;
        if (this.f533e) {
            return;
        }
        if (typeface == null || i6 <= 0) {
            typefaceCreate = null;
        } else {
            Context context = getContext();
            l5.a aVar = f0.g.f6760a;
            if (context == null) {
                throw new IllegalArgumentException("Context cannot be null");
            }
            typefaceCreate = Typeface.create(typeface, i6);
        }
        this.f533e = true;
        if (typefaceCreate != null) {
            typeface = typefaceCreate;
        }
        try {
            super.setTypeface(typeface, i6);
        } finally {
            this.f533e = false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatTextView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        k3.a(context);
        this.f533e = false;
        this.f = null;
        j3.a(this, getContext());
        u uVar = new u(this);
        this.f530a = uVar;
        uVar.e(attributeSet, i6);
        x0 x0Var = new x0(this);
        this.f531b = x0Var;
        x0Var.f(attributeSet, i6);
        x0Var.b();
        b0 b0Var = new b0();
        b0Var.f670b = this;
        this.f532c = b0Var;
        getEmojiTextViewHelper().b(attributeSet, i6);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i6, int i10, int i11, int i12) {
        Context context = getContext();
        setCompoundDrawablesRelativeWithIntrinsicBounds(i6 != 0 ? com.bumptech.glide.c.h(context, i6) : null, i10 != 0 ? com.bumptech.glide.c.h(context, i10) : null, i11 != 0 ? com.bumptech.glide.c.h(context, i11) : null, i12 != 0 ? com.bumptech.glide.c.h(context, i12) : null);
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i6, int i10, int i11, int i12) {
        Context context = getContext();
        setCompoundDrawablesWithIntrinsicBounds(i6 != 0 ? com.bumptech.glide.c.h(context, i6) : null, i10 != 0 ? com.bumptech.glide.c.h(context, i10) : null, i11 != 0 ? com.bumptech.glide.c.h(context, i11) : null, i12 != 0 ? com.bumptech.glide.c.h(context, i12) : null);
        x0 x0Var = this.f531b;
        if (x0Var != null) {
            x0Var.b();
        }
    }
}
