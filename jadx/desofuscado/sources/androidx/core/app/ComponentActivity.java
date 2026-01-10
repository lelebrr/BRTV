package androidx.core.app;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ComponentActivity extends Activity implements androidx.lifecycle.w, n0.l {

    /* renamed from: a, reason: collision with root package name */
    public final androidx.lifecycle.y f1136a = new androidx.lifecycle.y(this);

    @Override // n0.l
    public final boolean b(KeyEvent keyEvent) {
        j9.i.f(keyEvent, "event");
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        j9.i.f(keyEvent, "event");
        View decorView = getWindow().getDecorView();
        j9.i.e(decorView, "window.decorView");
        if (l5.a.p(decorView, keyEvent)) {
            return true;
        }
        return l5.a.q(this, decorView, this, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        j9.i.f(keyEvent, "event");
        View decorView = getWindow().getDecorView();
        j9.i.e(decorView, "window.decorView");
        if (l5.a.p(decorView, keyEvent)) {
            return true;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    public androidx.lifecycle.p f() {
        return this.f1136a;
    }

    public void g() {
        invalidateOptionsMenu();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i6 = androidx.lifecycle.l0.f1970b;
        androidx.lifecycle.j0.b(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        j9.i.f(bundle, "outState");
        this.f1136a.h();
        super.onSaveInstanceState(bundle);
    }
}
