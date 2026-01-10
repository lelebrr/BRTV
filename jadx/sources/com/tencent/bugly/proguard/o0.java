package com.tencent.bugly.proguard;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o0 implements Application.ActivityLifecycleCallbacks {
    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        String name = activity.getClass().getName();
        if (s.f5958l == null || s.f5958l.getName().equals(name)) {
            al.c(">>> %s onCreated <<<", name);
            aa aaVarB = aa.b();
            if (aaVarB != null) {
                aaVarB.L.add(s.a(name, "onCreated"));
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        String name = activity.getClass().getName();
        if (s.f5958l == null || s.f5958l.getName().equals(name)) {
            al.c(">>> %s onDestroyed <<<", name);
            aa aaVarB = aa.b();
            if (aaVarB != null) {
                aaVarB.L.add(s.a(name, "onDestroyed"));
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        String name = activity.getClass().getName();
        if (s.f5958l == null || s.f5958l.getName().equals(name)) {
            al.c(">>> %s onPaused <<<", name);
            aa aaVarB = aa.b();
            if (aaVarB == null) {
                return;
            }
            aaVarB.L.add(s.a(name, "onPaused"));
            long jCurrentTimeMillis = System.currentTimeMillis();
            aaVarB.A = jCurrentTimeMillis;
            aaVarB.B = jCurrentTimeMillis - aaVarB.f5593z;
            long unused = s.f5954h = jCurrentTimeMillis;
            if (aaVarB.B < 0) {
                aaVarB.B = 0L;
            }
            aaVarB.f5592y = "background";
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        String name = activity.getClass().getName();
        if (s.f5958l == null || s.f5958l.getName().equals(name)) {
            al.c(">>> %s onResumed <<<", name);
            aa aaVarB = aa.b();
            if (aaVarB == null) {
                return;
            }
            aaVarB.L.add(s.a(name, "onResumed"));
            aaVarB.f5592y = name;
            long jCurrentTimeMillis = System.currentTimeMillis();
            aaVarB.f5593z = jCurrentTimeMillis;
            aaVarB.C = jCurrentTimeMillis - s.f5955i;
            long j10 = aaVarB.f5593z - s.f5954h;
            if (j10 > (s.f > 0 ? s.f : s.f5952e)) {
                aaVarB.c();
                s.g();
                al.a("[session] launch app one times (app in background %d seconds and over %d seconds)", Long.valueOf(j10 / 1000), Long.valueOf(s.f5952e / 1000));
                if (s.f5953g % s.f5951c == 0) {
                    s.f5950b.a(4, s.f5959m);
                    return;
                }
                s.f5950b.a(4, false);
                long jCurrentTimeMillis2 = System.currentTimeMillis();
                if (jCurrentTimeMillis2 - s.f5956j > s.d) {
                    long unused = s.f5956j = jCurrentTimeMillis2;
                    al.a("add a timer to upload hot start user info", new Object[0]);
                    if (s.f5959m) {
                        ak.a().a(new u0(s.f5950b, null, true), s.d);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        al.c(">>> %s onStart <<<", activity.getClass().getName());
        aa.b().a(activity.hashCode(), true);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        al.c(">>> %s onStop <<<", activity.getClass().getName());
        aa.b().a(activity.hashCode(), false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
