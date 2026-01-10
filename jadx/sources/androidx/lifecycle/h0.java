package androidx.lifecycle;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 extends h {
    final /* synthetic */ i0 this$0;

    /* compiled from: MyApplication */
    public static final class a extends h {
        final /* synthetic */ i0 this$0;

        public a(i0 i0Var) {
            this.this$0 = i0Var;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            j9.i.f(activity, "activity");
            this.this$0.b();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            j9.i.f(activity, "activity");
            i0 i0Var = this.this$0;
            int i6 = i0Var.f1964a + 1;
            i0Var.f1964a = i6;
            if (i6 == 1 && i0Var.d) {
                i0Var.f.f(n.ON_START);
                i0Var.d = false;
            }
        }
    }

    public h0(i0 i0Var) {
        this.this$0 = i0Var;
    }

    @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        j9.i.f(activity, "activity");
        if (Build.VERSION.SDK_INT < 29) {
            int i6 = l0.f1970b;
            Fragment fragmentFindFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            j9.i.d(fragmentFindFragmentByTag, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment");
            ((l0) fragmentFindFragmentByTag).f1971a = this.this$0.f1969h;
        }
    }

    @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        j9.i.f(activity, "activity");
        i0 i0Var = this.this$0;
        int i6 = i0Var.f1965b - 1;
        i0Var.f1965b = i6;
        if (i6 == 0) {
            Handler handler = i0Var.f1967e;
            j9.i.c(handler);
            handler.postDelayed(i0Var.f1968g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        j9.i.f(activity, "activity");
        g0.a(activity, new a(this.this$0));
    }

    @Override // androidx.lifecycle.h, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        j9.i.f(activity, "activity");
        i0 i0Var = this.this$0;
        int i6 = i0Var.f1964a - 1;
        i0Var.f1964a = i6;
        if (i6 == 0 && i0Var.f1966c) {
            i0Var.f.f(n.ON_STOP);
            i0Var.d = true;
        }
    }
}
