package androidx.appcompat.app;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.window.OnBackInvokedDispatcher;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class i0 extends Dialog implements m, androidx.lifecycle.w, a.r {

    /* renamed from: a, reason: collision with root package name */
    public androidx.lifecycle.y f316a;

    /* renamed from: b, reason: collision with root package name */
    public final a.q f317b;

    /* renamed from: c, reason: collision with root package name */
    public g0 f318c;
    public final h0 d;

    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.appcompat.app.h0] */
    public i0(ContextThemeWrapper contextThemeWrapper, int i6) {
        int i10;
        if (i6 == 0) {
            TypedValue typedValue = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue, true);
            i10 = typedValue.resourceId;
        } else {
            i10 = i6;
        }
        super(contextThemeWrapper, i10);
        this.f317b = new a.q(new a.b(1, this));
        this.d = new n0.l() { // from class: androidx.appcompat.app.h0
            @Override // n0.l
            public final boolean b(KeyEvent keyEvent) {
                return this.f313a.h(keyEvent);
            }
        };
        q qVarC = c();
        if (i6 == 0) {
            TypedValue typedValue2 = new TypedValue();
            contextThemeWrapper.getTheme().resolveAttribute(R.attr.dialogTheme, typedValue2, true);
            i6 = typedValue2.resourceId;
        }
        ((g0) qVarC).U = i6;
        qVarC.d();
    }

    public static void b(i0 i0Var) {
        super.onBackPressed();
    }

    @Override // android.app.Dialog
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        g0 g0Var = (g0) c();
        g0Var.w();
        ((ViewGroup) g0Var.B.findViewById(android.R.id.content)).addView(view, layoutParams);
        g0Var.f276m.a(g0Var.f275l.getCallback());
    }

    public final q c() {
        if (this.f318c == null) {
            n0 n0Var = q.f341a;
            this.f318c = new g0(getContext(), getWindow(), this, this);
        }
        return this.f318c;
    }

    public final androidx.lifecycle.y d() {
        androidx.lifecycle.y yVar = this.f316a;
        if (yVar != null) {
            return yVar;
        }
        androidx.lifecycle.y yVar2 = new androidx.lifecycle.y(this);
        this.f316a = yVar2;
        return yVar2;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        c().e();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return l5.a.q(this.d, getWindow().getDecorView(), this, keyEvent);
    }

    public final void e(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = getOnBackInvokedDispatcher();
            a.q qVar = this.f317b;
            qVar.f = onBackInvokedDispatcher;
            qVar.d();
        }
        d().f(androidx.lifecycle.n.ON_CREATE);
    }

    @Override // androidx.lifecycle.w
    public final androidx.lifecycle.p f() {
        return d();
    }

    @Override // android.app.Dialog
    public final View findViewById(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        g0 g0Var = (g0) c();
        g0Var.w();
        return g0Var.f275l.findViewById(i6);
    }

    public final void g() {
        d().f(androidx.lifecycle.n.ON_DESTROY);
        this.f316a = null;
        super.onStop();
    }

    public final boolean h(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    public final void invalidateOptionsMenu() {
        c().b();
    }

    @Override // android.app.Dialog
    public final void onBackPressed() {
        this.f317b.c();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        c().a();
        e(bundle);
        c().d();
    }

    @Override // android.app.Dialog
    public final void onStart() {
        super.onStart();
        d().f(androidx.lifecycle.n.ON_RESUME);
    }

    @Override // android.app.Dialog
    public final void onStop() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        g();
        g0 g0Var = (g0) c();
        g0Var.B();
        l5.a aVar = g0Var.f278o;
        if (aVar != null) {
            aVar.N(false);
        }
    }

    @Override // android.app.Dialog
    public final void setContentView(int i6) {
        c().h(i6);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        c().l(charSequence);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view) {
        c().i(view);
    }

    @Override // android.app.Dialog
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        c().k(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i6) {
        super.setTitle(i6);
        c().l(getContext().getString(i6));
    }
}
