package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppCompatButton extends Button implements androidx.core.widget.s {

    /* renamed from: a, reason: collision with root package name */
    public final u f495a;

    /* renamed from: b, reason: collision with root package name */
    public final x0 f496b;

    /* renamed from: c, reason: collision with root package name */
    public y f497c;

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    private y getEmojiTextViewHelper() {
        if (this.f497c == null) {
            this.f497c = new y(this);
        }
        return this.f497c;
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        u uVar = this.f495a;
        if (uVar != null) {
            uVar.a();
        }
        x0 x0Var = this.f496b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (c4.f679b) {
            return super.getAutoSizeMaxTextSize();
        }
        x0 x0Var = this.f496b;
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
        x0 x0Var = this.f496b;
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
        x0 x0Var = this.f496b;
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
        x0 x0Var = this.f496b;
        return x0Var != null ? x0Var.f887i.f : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (c4.f679b) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        x0 x0Var = this.f496b;
        if (x0Var != null) {
            return x0Var.f887i.f719a;
        }
        return 0;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return n5.d.U(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        u uVar = this.f495a;
        if (uVar != null) {
            return uVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        u uVar = this.f495a;
        if (uVar != null) {
            return uVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f496b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f496b.e();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        super.onLayout(z7, i6, i10, i11, i12);
        x0 x0Var = this.f496b;
        if (x0Var == null || c4.f679b) {
            return;
        }
        x0Var.f887i.a();
    }

    @Override // android.widget.TextView
    public void onTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
        super.onTextChanged(charSequence, i6, i10, i11);
        x0 x0Var = this.f496b;
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
        x0 x0Var = this.f496b;
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
        x0 x0Var = this.f496b;
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
        x0 x0Var = this.f496b;
        if (x0Var != null) {
            x0Var.k(i6);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        u uVar = this.f495a;
        if (uVar != null) {
            uVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        u uVar = this.f495a;
        if (uVar != null) {
            uVar.g(i6);
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

    public void setSupportAllCaps(boolean z7) {
        x0 x0Var = this.f496b;
        if (x0Var != null) {
            x0Var.f881a.setAllCaps(z7);
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        u uVar = this.f495a;
        if (uVar != null) {
            uVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        u uVar = this.f495a;
        if (uVar != null) {
            uVar.j(mode);
        }
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        x0 x0Var = this.f496b;
        x0Var.l(colorStateList);
        x0Var.b();
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        x0 x0Var = this.f496b;
        x0Var.m(mode);
        x0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) throws Resources.NotFoundException {
        super.setTextAppearance(context, i6);
        x0 x0Var = this.f496b;
        if (x0Var != null) {
            x0Var.g(context, i6);
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i6, float f) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean z7 = c4.f679b;
        if (z7) {
            super.setTextSize(i6, f);
            return;
        }
        x0 x0Var = this.f496b;
        if (x0Var == null || z7) {
            return;
        }
        g1 g1Var = x0Var.f887i;
        if (g1Var.f()) {
            return;
        }
        g1Var.g(i6, f);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatButton(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        k3.a(context);
        j3.a(this, getContext());
        u uVar = new u(this);
        this.f495a = uVar;
        uVar.e(attributeSet, i6);
        x0 x0Var = new x0(this);
        this.f496b = x0Var;
        x0Var.f(attributeSet, i6);
        x0Var.b();
        getEmojiTextViewHelper().b(attributeSet, i6);
    }
}
