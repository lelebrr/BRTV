package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g0 {
    public static final void a(Activity activity, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        j9.i.f(activity, "activity");
        j9.i.f(activityLifecycleCallbacks, "callback");
        activity.registerActivityLifecycleCallbacks(activityLifecycleCallbacks);
    }
}
