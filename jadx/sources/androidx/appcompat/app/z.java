package androidx.appcompat.app;

import android.os.Build;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z implements Window.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final Window.Callback f385a;

    /* renamed from: b, reason: collision with root package name */
    public q0 f386b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f387c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f388e;
    public final /* synthetic */ g0 f;

    public z(g0 g0Var, Window.Callback callback) {
        this.f = g0Var;
        if (callback == null) {
            throw new IllegalArgumentException("Window callback may not be null");
        }
        this.f385a = callback;
    }

    public final void a(Window.Callback callback) {
        try {
            this.f387c = true;
            callback.onContentChanged();
        } finally {
            this.f387c = false;
        }
    }

    public final boolean b(int i6, Menu menu) {
        return this.f385a.onMenuOpened(i6, menu);
    }

    public final void c(int i6, Menu menu) {
        this.f385a.onPanelClosed(i6, menu);
    }

    public final void d(List list, Menu menu, int i6) {
        j.l.a(this.f385a, list, menu, i6);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        return this.f385a.dispatchGenericMotionEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z7 = this.d;
        Window.Callback callback = this.f385a;
        return z7 ? callback.dispatchKeyEvent(keyEvent) : this.f.u(keyEvent) || callback.dispatchKeyEvent(keyEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.f385a.dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        g0 g0Var = this.f;
        g0Var.B();
        l5.a aVar = g0Var.f278o;
        if (aVar != null && aVar.F(keyCode, keyEvent)) {
            return true;
        }
        f0 f0Var = g0Var.N;
        if (f0Var != null && g0Var.G(f0Var, keyEvent.getKeyCode(), keyEvent)) {
            f0 f0Var2 = g0Var.N;
            if (f0Var2 == null) {
                return true;
            }
            f0Var2.f257l = true;
            return true;
        }
        if (g0Var.N == null) {
            f0 f0VarA = g0Var.A(0);
            g0Var.H(f0VarA, keyEvent);
            boolean zG = g0Var.G(f0VarA, keyEvent.getKeyCode(), keyEvent);
            f0VarA.f256k = false;
            if (zG) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return this.f385a.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        return this.f385a.dispatchTouchEvent(motionEvent);
    }

    @Override // android.view.Window.Callback
    public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
        return this.f385a.dispatchTrackballEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0187  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final j.f e(android.view.ActionMode.Callback r10) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.z.e(android.view.ActionMode$Callback):j.f");
    }

    @Override // android.view.Window.Callback
    public final void onActionModeFinished(ActionMode actionMode) {
        this.f385a.onActionModeFinished(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onActionModeStarted(ActionMode actionMode) {
        this.f385a.onActionModeStarted(actionMode);
    }

    @Override // android.view.Window.Callback
    public final void onAttachedToWindow() {
        this.f385a.onAttachedToWindow();
    }

    @Override // android.view.Window.Callback
    public final void onContentChanged() {
        if (this.f387c) {
            this.f385a.onContentChanged();
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i6, Menu menu) {
        if (i6 != 0 || (menu instanceof k.l)) {
            return this.f385a.onCreatePanelMenu(i6, menu);
        }
        return false;
    }

    @Override // android.view.Window.Callback
    public final View onCreatePanelView(int i6) {
        q0 q0Var = this.f386b;
        if (q0Var != null) {
            View view = i6 == 0 ? new View(q0Var.f348a.f356r.f862a.getContext()) : null;
            if (view != null) {
                return view;
            }
        }
        return this.f385a.onCreatePanelView(i6);
    }

    @Override // android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.f385a.onDetachedFromWindow();
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuItemSelected(int i6, MenuItem menuItem) {
        return this.f385a.onMenuItemSelected(i6, menuItem);
    }

    @Override // android.view.Window.Callback
    public final boolean onMenuOpened(int i6, Menu menu) {
        b(i6, menu);
        g0 g0Var = this.f;
        if (i6 == 108) {
            g0Var.B();
            l5.a aVar = g0Var.f278o;
            if (aVar != null) {
                aVar.r(true);
            }
        } else {
            g0Var.getClass();
        }
        return true;
    }

    @Override // android.view.Window.Callback
    public final void onPanelClosed(int i6, Menu menu) {
        if (this.f388e) {
            this.f385a.onPanelClosed(i6, menu);
            return;
        }
        c(i6, menu);
        g0 g0Var = this.f;
        if (i6 == 108) {
            g0Var.B();
            l5.a aVar = g0Var.f278o;
            if (aVar != null) {
                aVar.r(false);
                return;
            }
            return;
        }
        if (i6 != 0) {
            g0Var.getClass();
            return;
        }
        f0 f0VarA = g0Var.A(i6);
        if (f0VarA.f258m) {
            g0Var.s(f0VarA, false);
        }
    }

    @Override // android.view.Window.Callback
    public final void onPointerCaptureChanged(boolean z7) {
        j.m.a(this.f385a, z7);
    }

    @Override // android.view.Window.Callback
    public final boolean onPreparePanel(int i6, View view, Menu menu) {
        k.l lVar = menu instanceof k.l ? (k.l) menu : null;
        if (i6 == 0 && lVar == null) {
            return false;
        }
        if (lVar != null) {
            lVar.f7630x = true;
        }
        q0 q0Var = this.f386b;
        if (q0Var != null && i6 == 0) {
            s0 s0Var = q0Var.f348a;
            if (!s0Var.f359u) {
                s0Var.f356r.f871l = true;
                s0Var.f359u = true;
            }
        }
        boolean zOnPreparePanel = this.f385a.onPreparePanel(i6, view, menu);
        if (lVar != null) {
            lVar.f7630x = false;
        }
        return zOnPreparePanel;
    }

    @Override // android.view.Window.Callback
    public final void onProvideKeyboardShortcuts(List list, Menu menu, int i6) {
        k.l lVar = this.f.A(0).f253h;
        if (lVar != null) {
            d(list, lVar, i6);
        } else {
            d(list, menu, i6);
        }
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested(SearchEvent searchEvent) {
        return j.k.a(this.f385a, searchEvent);
    }

    @Override // android.view.Window.Callback
    public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
        this.f385a.onWindowAttributesChanged(layoutParams);
    }

    @Override // android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z7) {
        this.f385a.onWindowFocusChanged(z7);
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i6) {
        return (this.f.f289z && i6 == 0) ? e(callback) : j.k.b(this.f385a, callback, i6);
    }

    @Override // android.view.Window.Callback
    public final boolean onSearchRequested() {
        return this.f385a.onSearchRequested();
    }

    @Override // android.view.Window.Callback
    public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
        if (Build.VERSION.SDK_INT >= 23) {
            return null;
        }
        if (this.f.f289z) {
            return e(callback);
        }
        return this.f385a.onWindowStartingActionMode(callback);
    }
}
