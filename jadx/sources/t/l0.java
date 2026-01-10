package t;

import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.MotionLayout;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l0 extends m0 {

    /* renamed from: g, reason: collision with root package name */
    public boolean f9945g;

    @Override // t.m0
    public final boolean b(float f, long j10, View view, u uVar) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Method method;
        if (view instanceof MotionLayout) {
            ((MotionLayout) view).setProgress(a(f, j10, view, uVar));
        } else {
            if (this.f9945g) {
                return false;
            }
            try {
                method = view.getClass().getMethod("setProgress", Float.TYPE);
            } catch (NoSuchMethodException unused) {
                this.f9945g = true;
                method = null;
            }
            if (method != null) {
                try {
                    method.invoke(view, Float.valueOf(a(f, j10, view, uVar)));
                } catch (IllegalAccessException e5) {
                    Log.e("SplineSet", "unable to setProgress", e5);
                } catch (InvocationTargetException e10) {
                    Log.e("SplineSet", "unable to setProgress", e10);
                }
            }
        }
        return this.d;
    }
}
