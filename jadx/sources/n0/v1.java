package n0;

import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v1 extends o9.e {
    public final WindowInsetsController f;

    /* renamed from: g, reason: collision with root package name */
    public final Window f8361g;

    public v1(Window window) {
        this.f = window.getInsetsController();
        this.f8361g = window;
    }

    @Override // o9.e
    public final void F(boolean z7) {
        Window window = this.f8361g;
        if (z7) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 16);
            }
            this.f.setSystemBarsAppearance(16, 16);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-17));
        }
        this.f.setSystemBarsAppearance(0, 16);
    }

    @Override // o9.e
    public final void G(boolean z7) {
        Window window = this.f8361g;
        if (z7) {
            if (window != null) {
                View decorView = window.getDecorView();
                decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 8192);
            }
            this.f.setSystemBarsAppearance(8, 8);
            return;
        }
        if (window != null) {
            View decorView2 = window.getDecorView();
            decorView2.setSystemUiVisibility(decorView2.getSystemUiVisibility() & (-8193));
        }
        this.f.setSystemBarsAppearance(0, 8);
    }
}
