package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.CheckBox;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppCompatCheckBox extends CheckBox implements androidx.core.widget.s {

    /* renamed from: a, reason: collision with root package name */
    public final v f498a;

    /* renamed from: b, reason: collision with root package name */
    public final u f499b;

    /* renamed from: c, reason: collision with root package name */
    public final x0 f500c;
    public y d;

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    private y getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new y(this);
        }
        return this.d;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        u uVar = this.f499b;
        if (uVar != null) {
            uVar.a();
        }
        x0 x0Var = this.f500c;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        v vVar = this.f498a;
        if (vVar != null) {
            vVar.getClass();
        }
        return compoundPaddingLeft;
    }

    public ColorStateList getSupportBackgroundTintList() {
        u uVar = this.f499b;
        if (uVar != null) {
            return uVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        u uVar = this.f499b;
        if (uVar != null) {
            return uVar.d();
        }
        return null;
    }

    public ColorStateList getSupportButtonTintList() {
        v vVar = this.f498a;
        if (vVar != null) {
            return (ColorStateList) vVar.f850a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        v vVar = this.f498a;
        if (vVar != null) {
            return (PorterDuff.Mode) vVar.f851b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f500c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f500c.e();
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z7) {
        super.setAllCaps(z7);
        getEmojiTextViewHelper().c(z7);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        u uVar = this.f499b;
        if (uVar != null) {
            uVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        u uVar = this.f499b;
        if (uVar != null) {
            uVar.g(i6);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) throws NoSuchFieldException, SecurityException {
        super.setButtonDrawable(drawable);
        v vVar = this.f498a;
        if (vVar != null) {
            if (vVar.f853e) {
                vVar.f853e = false;
            } else {
                vVar.f853e = true;
                vVar.a();
            }
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f500c;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f500c;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    public void setEmojiCompatEnabled(boolean z7) {
        getEmojiTextViewHelper().d(z7);
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        u uVar = this.f499b;
        if (uVar != null) {
            uVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        u uVar = this.f499b;
        if (uVar != null) {
            uVar.j(mode);
        }
    }

    public void setSupportButtonTintList(ColorStateList colorStateList) throws NoSuchFieldException, SecurityException {
        v vVar = this.f498a;
        if (vVar != null) {
            vVar.f850a = colorStateList;
            vVar.f852c = true;
            vVar.a();
        }
    }

    public void setSupportButtonTintMode(PorterDuff.Mode mode) throws NoSuchFieldException, SecurityException {
        v vVar = this.f498a;
        if (vVar != null) {
            vVar.f851b = mode;
            vVar.d = true;
            vVar.a();
        }
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        x0 x0Var = this.f500c;
        x0Var.l(colorStateList);
        x0Var.b();
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        x0 x0Var = this.f500c;
        x0Var.m(mode);
        x0Var.b();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        k3.a(context);
        j3.a(this, getContext());
        v vVar = new v(this);
        this.f498a = vVar;
        vVar.e(attributeSet, i6);
        u uVar = new u(this);
        this.f499b = uVar;
        uVar.e(attributeSet, i6);
        x0 x0Var = new x0(this);
        this.f500c = x0Var;
        x0Var.f(attributeSet, i6);
        getEmojiTextViewHelper().b(attributeSet, i6);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i6) throws NoSuchFieldException, SecurityException {
        setButtonDrawable(com.bumptech.glide.c.h(getContext(), i6));
    }
}
