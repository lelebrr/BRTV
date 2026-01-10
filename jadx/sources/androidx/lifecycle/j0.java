package androidx.lifecycle;

import android.app.Activity;
import android.app.FragmentManager;
import android.os.Build;
import androidx.lifecycle.l0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j0 {
    /* JADX WARN: Multi-variable type inference failed */
    public static void a(Activity activity, n nVar) {
        j9.i.f(activity, "activity");
        j9.i.f(nVar, "event");
        if (activity instanceof w) {
            p pVarF = ((w) activity).f();
            if (pVarF instanceof y) {
                ((y) pVarF).f(nVar);
            }
        }
    }

    public static void b(Activity activity) {
        j9.i.f(activity, "activity");
        if (Build.VERSION.SDK_INT >= 29) {
            l0.a.Companion.getClass();
            activity.registerActivityLifecycleCallbacks(new l0.a());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new l0(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }
}
