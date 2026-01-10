package a;

import android.view.View;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import androidx.activity.ComponentActivity;
import androidx.lifecycle.u;
import androidx.lifecycle.w;
import androidx.lifecycle.z0;
import java.lang.reflect.Field;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements u {

    /* renamed from: c, reason: collision with root package name */
    public static int f14c;
    public static Field d;

    /* renamed from: e, reason: collision with root package name */
    public static Field f15e;
    public static Field f;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16a;

    /* renamed from: b, reason: collision with root package name */
    public ComponentActivity f17b;

    public /* synthetic */ h() {
        this.f16a = 3;
    }

    @Override // androidx.lifecycle.u
    public final void onStateChanged(w wVar, androidx.lifecycle.n nVar) throws IllegalAccessException, NoSuchFieldException, SecurityException, IllegalArgumentException {
        switch (this.f16a) {
            case 0:
                if (nVar == androidx.lifecycle.n.ON_STOP) {
                    Window window = this.f17b.getWindow();
                    View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                    if (viewPeekDecorView != null) {
                        viewPeekDecorView.cancelPendingInputEvents();
                        return;
                    }
                    return;
                }
                return;
            case 1:
                if (nVar == androidx.lifecycle.n.ON_DESTROY) {
                    this.f17b.f195b.f3092a = null;
                    if (this.f17b.isChangingConfigurations()) {
                        return;
                    }
                    this.f17b.e().a();
                    return;
                }
                return;
            case 2:
                ComponentActivity componentActivity = this.f17b;
                if (componentActivity.f == null) {
                    j jVar = (j) componentActivity.getLastNonConfigurationInstance();
                    if (jVar != null) {
                        componentActivity.f = jVar.f18a;
                    }
                    if (componentActivity.f == null) {
                        componentActivity.f = new z0();
                    }
                }
                componentActivity.d.c(this);
                return;
            default:
                if (nVar != androidx.lifecycle.n.ON_DESTROY) {
                    return;
                }
                if (f14c == 0) {
                    try {
                        f14c = 2;
                        Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                        f15e = declaredField;
                        declaredField.setAccessible(true);
                        Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                        f = declaredField2;
                        declaredField2.setAccessible(true);
                        Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                        d = declaredField3;
                        declaredField3.setAccessible(true);
                        f14c = 1;
                    } catch (NoSuchFieldException unused) {
                    }
                }
                if (f14c == 1) {
                    InputMethodManager inputMethodManager = (InputMethodManager) this.f17b.getSystemService("input_method");
                    try {
                        Object obj = d.get(inputMethodManager);
                        if (obj == null) {
                            return;
                        }
                        synchronized (obj) {
                            try {
                                View view = (View) f15e.get(inputMethodManager);
                                if (view != null) {
                                    if (!view.isAttachedToWindow()) {
                                        f.set(inputMethodManager, null);
                                        inputMethodManager.isActive();
                                    }
                                }
                            } catch (IllegalAccessException unused2) {
                            } catch (ClassCastException unused3) {
                            } catch (IllegalAccessException unused4) {
                            } finally {
                            }
                        }
                        return;
                    } catch (IllegalAccessException unused5) {
                        return;
                    }
                }
                return;
        }
    }

    public /* synthetic */ h(ComponentActivity componentActivity, int i6) {
        this.f16a = i6;
        this.f17b = componentActivity;
    }
}
