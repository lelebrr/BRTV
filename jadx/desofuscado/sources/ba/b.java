package ba;

import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements WindowManager {

    /* renamed from: a, reason: collision with root package name */
    public final WindowManager f3325a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f3326b;

    public b(c cVar, WindowManager windowManager) {
        this.f3326b = cVar;
        this.f3325a = windowManager;
    }

    @Override // android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        try {
            Log.d("WindowManagerWrapper", "WindowManager's addView(view, params) has been hooked.");
            this.f3325a.addView(view, layoutParams);
        } catch (WindowManager.BadTokenException e5) {
            Log.i("WindowManagerWrapper", e5.getMessage());
            int i6 = c.f3327a;
            this.f3326b.getClass();
        } catch (Throwable th) {
            Log.e("WindowManagerWrapper", "[addView]", th);
        }
    }

    @Override // android.view.WindowManager
    public final Display getDefaultDisplay() {
        return this.f3325a.getDefaultDisplay();
    }

    @Override // android.view.ViewManager
    public final void removeView(View view) {
        this.f3325a.removeView(view);
    }

    @Override // android.view.WindowManager
    public final void removeViewImmediate(View view) {
        this.f3325a.removeViewImmediate(view);
    }

    @Override // android.view.ViewManager
    public final void updateViewLayout(View view, ViewGroup.LayoutParams layoutParams) {
        this.f3325a.updateViewLayout(view, layoutParams);
    }
}
