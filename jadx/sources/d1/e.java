package d1;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements KeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final KeyListener f6005a;

    /* renamed from: b, reason: collision with root package name */
    public final u6.e f6006b;

    public e(KeyListener keyListener) {
        u6.e eVar = new u6.e(8);
        this.f6005a = keyListener;
        this.f6006b = eVar;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i6) {
        this.f6005a.clearMetaKeyState(view, editable, i6);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.f6005a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i6, KeyEvent keyEvent) {
        boolean z7;
        this.f6006b.getClass();
        if (i6 != 67 ? i6 != 112 ? false : a7.f.f(editable, keyEvent, true) : a7.f.f(editable, keyEvent, false)) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            z7 = true;
        } else {
            z7 = false;
        }
        return z7 || this.f6005a.onKeyDown(view, editable, i6, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f6005a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i6, KeyEvent keyEvent) {
        return this.f6005a.onKeyUp(view, editable, i6, keyEvent);
    }
}
