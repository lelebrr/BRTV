package me.jessyan.autosize;

import android.os.Bundle;
import androidx.fragment.app.g0;
import androidx.fragment.app.j0;
import androidx.fragment.app.s;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class FragmentLifecycleCallbacksImplToAndroidx extends g0 {
    private AutoAdaptStrategy mAutoAdaptStrategy;

    public FragmentLifecycleCallbacksImplToAndroidx(AutoAdaptStrategy autoAdaptStrategy) {
        this.mAutoAdaptStrategy = autoAdaptStrategy;
    }

    @Override // androidx.fragment.app.g0
    public void onFragmentCreated(j0 j0Var, s sVar, Bundle bundle) {
        AutoAdaptStrategy autoAdaptStrategy = this.mAutoAdaptStrategy;
        if (autoAdaptStrategy != null) {
            autoAdaptStrategy.applyAdapt(sVar, sVar.h());
        }
    }

    public void setAutoAdaptStrategy(AutoAdaptStrategy autoAdaptStrategy) {
        this.mAutoAdaptStrategy = autoAdaptStrategy;
    }
}
