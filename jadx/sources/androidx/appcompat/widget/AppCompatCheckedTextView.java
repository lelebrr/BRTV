package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView implements androidx.core.widget.s {

    /* renamed from: a, reason: collision with root package name */
    public final v f501a;

    /* renamed from: b, reason: collision with root package name */
    public final u f502b;

    /* renamed from: c, reason: collision with root package name */
    public final x0 f503c;
    public y d;

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    private y getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new y(this);
        }
        return this.d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        x0 x0Var = this.f503c;
        if (x0Var != null) {
            x0Var.b();
        }
        u uVar = this.f502b;
        if (uVar != null) {
            uVar.a();
        }
        v vVar = this.f501a;
        if (vVar != null) {
            vVar.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return n5.d.U(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        u uVar = this.f502b;
        if (uVar != null) {
            return uVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        u uVar = this.f502b;
        if (uVar != null) {
            return uVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        v vVar = this.f501a;
        if (vVar != null) {
            return (ColorStateList) vVar.f850a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        v vVar = this.f501a;
        if (vVar != null) {
            return (PorterDuff.Mode) vVar.f851b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f503c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f503c.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        o9.e.A(editorInfo, inputConnectionOnCreateInputConnection, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z7) {
        super.setAllCaps(z7);
        getEmojiTextViewHelper().c(z7);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        u uVar = this.f502b;
        if (uVar != null) {
            uVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        u uVar = this.f502b;
        if (uVar != null) {
            uVar.g(i6);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        v vVar = this.f501a;
        if (vVar != null) {
            if (vVar.f853e) {
                vVar.f853e = false;
            } else {
                vVar.f853e = true;
                vVar.b();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f503c;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f503c;
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

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        u uVar = this.f502b;
        if (uVar != null) {
            uVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        u uVar = this.f502b;
        if (uVar != null) {
            uVar.j(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        v vVar = this.f501a;
        if (vVar != null) {
            vVar.f850a = colorStateList;
            vVar.f852c = true;
            vVar.b();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        v vVar = this.f501a;
        if (vVar != null) {
            vVar.f851b = mode;
            vVar.d = true;
            vVar.b();
        }
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        x0 x0Var = this.f503c;
        x0Var.l(colorStateList);
        x0Var.b();
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        x0 x0Var = this.f503c;
        x0Var.m(mode);
        x0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) throws Resources.NotFoundException {
        super.setTextAppearance(context, i6);
        x0 x0Var = this.f503c;
        if (x0Var != null) {
            x0Var.g(context, i6);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i6) {
        int resourceId;
        int resourceId2;
        super(context, attributeSet, i6);
        k3.a(context);
        j3.a(this, getContext());
        x0 x0Var = new x0(this);
        this.f503c = x0Var;
        x0Var.f(attributeSet, i6);
        x0Var.b();
        u uVar = new u(this);
        this.f502b = uVar;
        uVar.e(attributeSet, i6);
        this.f501a = new v(this);
        Context context2 = getContext();
        int[] iArr = e.a.f6357m;
        a1.b bVarC = a1.b.C(context2, attributeSet, iArr, i6);
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        n0.s0.p(this, getContext(), iArr, attributeSet, (TypedArray) bVarC.f48c, i6, 0);
        try {
            if (typedArray.hasValue(1) && (resourceId2 = typedArray.getResourceId(1, 0)) != 0) {
                try {
                    setCheckMarkDrawable(com.bumptech.glide.c.h(getContext(), resourceId2));
                } catch (Resources.NotFoundException unused) {
                }
            } else if (typedArray.hasValue(0) && (resourceId = typedArray.getResourceId(0, 0)) != 0) {
                setCheckMarkDrawable(com.bumptech.glide.c.h(getContext(), resourceId));
            }
            if (typedArray.hasValue(2)) {
                setCheckMarkTintList(bVarC.s(2));
            }
            if (typedArray.hasValue(3)) {
                setCheckMarkTintMode(m1.c(typedArray.getInt(3, -1), null));
            }
            bVarC.F();
            getEmojiTextViewHelper().b(attributeSet, i6);
        } catch (Throwable th) {
            bVarC.F();
            throw th;
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i6) {
        setCheckMarkDrawable(com.bumptech.glide.c.h(getContext(), i6));
    }
}
