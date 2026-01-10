package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public Object f1157a;

    /* renamed from: b, reason: collision with root package name */
    public Activity f1158b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1159c;
    public boolean d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1160e = false;
    public boolean f = false;

    public d(Activity activity) {
        this.f1158b = activity;
        this.f1159c = activity.hashCode();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (this.f1158b == activity) {
            this.f1158b = null;
            this.f1160e = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        if (!this.f1160e || this.f || this.d) {
            return;
        }
        Object obj = this.f1157a;
        try {
            Object obj2 = e.f1163c.get(activity);
            if (obj2 == obj && activity.hashCode() == this.f1159c) {
                e.f1165g.postAtFrontOfQueue(new a3.c(4, e.f1162b.get(activity), obj2, false));
                this.f = true;
                this.f1157a = null;
            }
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (this.f1158b == activity) {
            this.d = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
