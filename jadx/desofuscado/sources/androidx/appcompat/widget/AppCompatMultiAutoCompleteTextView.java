package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.MultiAutoCompleteTextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppCompatMultiAutoCompleteTextView extends MultiAutoCompleteTextView implements androidx.core.widget.s {
    public static final int[] d = {R.attr.popupBackground};

    /* renamed from: a, reason: collision with root package name */
    public final u f514a;

    /* renamed from: b, reason: collision with root package name */
    public final x0 f515b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f516c;

    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.autoCompleteTextViewStyle);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        u uVar = this.f514a;
        if (uVar != null) {
            uVar.a();
        }
        x0 x0Var = this.f515b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        u uVar = this.f514a;
        if (uVar != null) {
            return uVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        u uVar = this.f514a;
        if (uVar != null) {
            return uVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f515b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f515b.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        o9.e.A(editorInfo, inputConnectionOnCreateInputConnection, this);
        return this.f516c.c(inputConnectionOnCreateInputConnection, editorInfo);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        u uVar = this.f514a;
        if (uVar != null) {
            uVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        u uVar = this.f514a;
        if (uVar != null) {
            uVar.g(i6);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f515b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f515b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundResource(int i6) {
        setDropDownBackgroundDrawable(com.bumptech.glide.c.h(getContext(), i6));
    }

    public void setEmojiCompatEnabled(boolean z7) {
        this.f516c.d(z7);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f516c.a(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        u uVar = this.f514a;
        if (uVar != null) {
            uVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        u uVar = this.f514a;
        if (uVar != null) {
            uVar.j(mode);
        }
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        x0 x0Var = this.f515b;
        x0Var.l(colorStateList);
        x0Var.b();
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        x0 x0Var = this.f515b;
        x0Var.m(mode);
        x0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) throws Resources.NotFoundException {
        super.setTextAppearance(context, i6);
        x0 x0Var = this.f515b;
        if (x0Var != null) {
            x0Var.g(context, i6);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatMultiAutoCompleteTextView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        k3.a(context);
        j3.a(this, getContext());
        a1.b bVarC = a1.b.C(getContext(), attributeSet, d, i6);
        if (((TypedArray) bVarC.f48c).hasValue(0)) {
            setDropDownBackgroundDrawable(bVarC.t(0));
        }
        bVarC.F();
        u uVar = new u(this);
        this.f514a = uVar;
        uVar.e(attributeSet, i6);
        x0 x0Var = new x0(this);
        this.f515b = x0Var;
        x0Var.f(attributeSet, i6);
        x0Var.b();
        b0 b0Var = new b0(this);
        this.f516c = b0Var;
        b0Var.b(attributeSet, i6);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = super.isFocusable();
        boolean zIsClickable = super.isClickable();
        boolean zIsLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener keyListenerA = b0Var.a(keyListener);
        if (keyListenerA == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerA);
        super.setRawInputType(inputType);
        super.setFocusable(zIsFocusable);
        super.setClickable(zIsClickable);
        super.setLongClickable(zIsLongClickable);
    }
}
