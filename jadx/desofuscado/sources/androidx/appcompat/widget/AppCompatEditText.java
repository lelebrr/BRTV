package androidx.appcompat.widget;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ActionMode;
import android.view.DragEvent;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import android.widget.TextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AppCompatEditText extends EditText implements n0.u, androidx.core.widget.s {

    /* renamed from: a, reason: collision with root package name */
    public final u f504a;

    /* renamed from: b, reason: collision with root package name */
    public final x0 f505b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f506c;
    public final androidx.core.widget.r d;

    /* renamed from: e, reason: collision with root package name */
    public final b0 f507e;
    public x f;

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    private x getSuperCaller() {
        if (this.f == null) {
            this.f = new x(this);
        }
        return this.f;
    }

    @Override // n0.u
    public final n0.g a(n0.g gVar) {
        return this.d.a(this, gVar);
    }

    @Override // android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        u uVar = this.f504a;
        if (uVar != null) {
            uVar.a();
        }
        x0 x0Var = this.f505b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return n5.d.U(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        u uVar = this.f504a;
        if (uVar != null) {
            return uVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        u uVar = this.f504a;
        if (uVar != null) {
            return uVar.d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f505b.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f505b.e();
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        b0 b0Var;
        if (Build.VERSION.SDK_INT >= 28 || (b0Var = this.f506c) == null) {
            return super.getTextClassifier();
        }
        TextClassifier textClassifier = (TextClassifier) b0Var.f671c;
        return textClassifier == null ? p0.a((TextView) b0Var.f670b) : textClassifier;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0058 A[PHI: r1
  0x0058: PHI (r1v10 java.lang.String[]) = (r1v5 java.lang.String[]), (r1v11 java.lang.String[]) binds: [B:30:0x006b, B:22:0x0056] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0072  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.view.inputmethod.InputConnection onCreateInputConnection(android.view.inputmethod.EditorInfo r8) {
        /*
            r7 = this;
            android.view.inputmethod.InputConnection r0 = super.onCreateInputConnection(r8)
            androidx.appcompat.widget.x0 r1 = r7.f505b
            r1.getClass()
            androidx.appcompat.widget.x0.h(r8, r0, r7)
            o9.e.A(r8, r0, r7)
            if (r0 == 0) goto L78
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 30
            if (r1 > r2) goto L78
            java.lang.String[] r2 = n0.s0.g(r7)
            if (r2 == 0) goto L78
            java.lang.String r3 = "android.support.v13.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            java.lang.String r4 = "androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_MIME_TYPES"
            r5 = 25
            if (r1 < r5) goto L29
            s0.a.a(r8, r2)
            goto L3e
        L29:
            android.os.Bundle r6 = r8.extras
            if (r6 != 0) goto L34
            android.os.Bundle r6 = new android.os.Bundle
            r6.<init>()
            r8.extras = r6
        L34:
            android.os.Bundle r6 = r8.extras
            r6.putStringArray(r4, r2)
            android.os.Bundle r6 = r8.extras
            r6.putStringArray(r3, r2)
        L3e:
            androidx.media3.common.x r2 = new androidx.media3.common.x
            r6 = 20
            r2.<init>(r6, r7)
            if (r1 < r5) goto L4e
            s0.d r1 = new s0.d
            r1.<init>(r0, r2)
        L4c:
            r0 = r1
            goto L78
        L4e:
            java.lang.String[] r6 = s0.c.f9701a
            if (r1 < r5) goto L5a
            java.lang.String[] r1 = s0.a.b(r8)
            if (r1 == 0) goto L6e
        L58:
            r6 = r1
            goto L6e
        L5a:
            android.os.Bundle r1 = r8.extras
            if (r1 != 0) goto L5f
            goto L6e
        L5f:
            java.lang.String[] r1 = r1.getStringArray(r4)
            if (r1 != 0) goto L6b
            android.os.Bundle r1 = r8.extras
            java.lang.String[] r1 = r1.getStringArray(r3)
        L6b:
            if (r1 == 0) goto L6e
            goto L58
        L6e:
            int r1 = r6.length
            if (r1 != 0) goto L72
            goto L78
        L72:
            s0.e r1 = new s0.e
            r1.<init>(r0, r2)
            goto L4c
        L78:
            androidx.appcompat.widget.b0 r1 = r7.f507e
            d1.b r8 = r1.c(r0, r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatEditText.onCreateInputConnection(android.view.inputmethod.EditorInfo):android.view.inputmethod.InputConnection");
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onDragEvent(DragEvent dragEvent) {
        Activity activity;
        int i6 = Build.VERSION.SDK_INT;
        boolean zA = false;
        if (i6 < 31 && i6 >= 24 && dragEvent.getLocalState() == null && n0.s0.g(this) != null) {
            Context context = getContext();
            while (true) {
                if (!(context instanceof ContextWrapper)) {
                    activity = null;
                    break;
                }
                if (context instanceof Activity) {
                    activity = (Activity) context;
                    break;
                }
                context = ((ContextWrapper) context).getBaseContext();
            }
            if (activity == null) {
                Log.i("ReceiveContent", "Can't handle drop: no activity: view=" + this);
            } else if (dragEvent.getAction() != 1 && dragEvent.getAction() == 3) {
                zA = c0.a(dragEvent, this, activity);
            }
        }
        if (zA) {
            return true;
        }
        return super.onDragEvent(dragEvent);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public final boolean onTextContextMenuItem(int i6) {
        n0.d cVar;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 31 || n0.s0.g(this) == null || !(i6 == 16908322 || i6 == 16908337)) {
            return super.onTextContextMenuItem(i6);
        }
        ClipboardManager clipboardManager = (ClipboardManager) getContext().getSystemService("clipboard");
        ClipData primaryClip = clipboardManager == null ? null : clipboardManager.getPrimaryClip();
        if (primaryClip != null && primaryClip.getItemCount() > 0) {
            if (i10 >= 31) {
                cVar = new j7.c(primaryClip, 1);
            } else {
                n0.e eVar = new n0.e();
                eVar.f8307b = primaryClip;
                eVar.f8308c = 1;
                cVar = eVar;
            }
            cVar.setFlags(i6 == 16908322 ? 0 : 1);
            n0.s0.l(this, cVar.f());
        }
        return true;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        u uVar = this.f504a;
        if (uVar != null) {
            uVar.f();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i6) {
        super.setBackgroundResource(i6);
        u uVar = this.f504a;
        if (uVar != null) {
            uVar.g(i6);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f505b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        x0 x0Var = this.f505b;
        if (x0Var != null) {
            x0Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(n5.d.X(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z7) {
        this.f507e.d(z7);
    }

    @Override // android.widget.TextView
    public void setKeyListener(KeyListener keyListener) {
        super.setKeyListener(this.f507e.a(keyListener));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        u uVar = this.f504a;
        if (uVar != null) {
            uVar.i(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        u uVar = this.f504a;
        if (uVar != null) {
            uVar.j(mode);
        }
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        x0 x0Var = this.f505b;
        x0Var.l(colorStateList);
        x0Var.b();
    }

    @Override // androidx.core.widget.s
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        x0 x0Var = this.f505b;
        x0Var.m(mode);
        x0Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i6) throws Resources.NotFoundException {
        super.setTextAppearance(context, i6);
        x0 x0Var = this.f505b;
        if (x0Var != null) {
            x0Var.g(context, i6);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        b0 b0Var;
        if (Build.VERSION.SDK_INT >= 28 || (b0Var = this.f506c) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            b0Var.f671c = textClassifier;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatEditText(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        k3.a(context);
        j3.a(this, getContext());
        u uVar = new u(this);
        this.f504a = uVar;
        uVar.e(attributeSet, i6);
        x0 x0Var = new x0(this);
        this.f505b = x0Var;
        x0Var.f(attributeSet, i6);
        x0Var.b();
        b0 b0Var = new b0();
        b0Var.f670b = this;
        this.f506c = b0Var;
        this.d = new androidx.core.widget.r();
        b0 b0Var2 = new b0(this);
        this.f507e = b0Var2;
        b0Var2.b(attributeSet, i6);
        KeyListener keyListener = getKeyListener();
        if (keyListener instanceof NumberKeyListener) {
            return;
        }
        boolean zIsFocusable = super.isFocusable();
        boolean zIsClickable = super.isClickable();
        boolean zIsLongClickable = super.isLongClickable();
        int inputType = super.getInputType();
        KeyListener keyListenerA = b0Var2.a(keyListener);
        if (keyListenerA == keyListener) {
            return;
        }
        super.setKeyListener(keyListenerA);
        super.setRawInputType(inputType);
        super.setFocusable(zIsFocusable);
        super.setClickable(zIsClickable);
        super.setLongClickable(zIsLongClickable);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }
}
