package me.jessyan.autosize;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.z;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ActivityLifecycleCallbacksImpl implements Application.ActivityLifecycleCallbacks {
    private AutoAdaptStrategy mAutoAdaptStrategy;
    private FragmentLifecycleCallbacksImpl mFragmentLifecycleCallbacks;
    private FragmentLifecycleCallbacksImplToAndroidx mFragmentLifecycleCallbacksToAndroidx;

    public ActivityLifecycleCallbacksImpl(AutoAdaptStrategy autoAdaptStrategy) {
        if (AutoSizeConfig.DEPENDENCY_ANDROIDX) {
            this.mFragmentLifecycleCallbacksToAndroidx = new FragmentLifecycleCallbacksImplToAndroidx(autoAdaptStrategy);
        } else if (AutoSizeConfig.DEPENDENCY_SUPPORT) {
            this.mFragmentLifecycleCallbacks = new FragmentLifecycleCallbacksImpl(autoAdaptStrategy);
        }
        this.mAutoAdaptStrategy = autoAdaptStrategy;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (AutoSizeConfig.getInstance().isCustomFragment()) {
            if (this.mFragmentLifecycleCallbacksToAndroidx != null && (activity instanceof FragmentActivity)) {
                ((CopyOnWriteArrayList) ((FragmentActivity) activity).k().f1465k.f169b).add(new z(this.mFragmentLifecycleCallbacksToAndroidx, true));
            } else if (this.mFragmentLifecycleCallbacks != null && (activity instanceof FragmentActivity)) {
                ((CopyOnWriteArrayList) ((FragmentActivity) activity).k().f1465k.f169b).add(new z(this.mFragmentLifecycleCallbacks, true));
            }
        }
        AutoAdaptStrategy autoAdaptStrategy = this.mAutoAdaptStrategy;
        if (autoAdaptStrategy != null) {
            autoAdaptStrategy.applyAdapt(activity, activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        AutoAdaptStrategy autoAdaptStrategy = this.mAutoAdaptStrategy;
        if (autoAdaptStrategy != null) {
            autoAdaptStrategy.applyAdapt(activity, activity);
        }
    }

    public void setAutoAdaptStrategy(AutoAdaptStrategy autoAdaptStrategy) {
        this.mAutoAdaptStrategy = autoAdaptStrategy;
        FragmentLifecycleCallbacksImplToAndroidx fragmentLifecycleCallbacksImplToAndroidx = this.mFragmentLifecycleCallbacksToAndroidx;
        if (fragmentLifecycleCallbacksImplToAndroidx != null) {
            fragmentLifecycleCallbacksImplToAndroidx.setAutoAdaptStrategy(autoAdaptStrategy);
            return;
        }
        FragmentLifecycleCallbacksImpl fragmentLifecycleCallbacksImpl = this.mFragmentLifecycleCallbacks;
        if (fragmentLifecycleCallbacksImpl != null) {
            fragmentLifecycleCallbacksImpl.setAutoAdaptStrategy(autoAdaptStrategy);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }
}
