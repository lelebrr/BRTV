package com.youth.banner.util;

import androidx.lifecycle.f0;
import androidx.lifecycle.n;
import androidx.lifecycle.v;
import androidx.lifecycle.w;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BannerLifecycleObserverAdapter implements v {
    private final w mLifecycleOwner;
    private final BannerLifecycleObserver mObserver;

    public BannerLifecycleObserverAdapter(w wVar, BannerLifecycleObserver bannerLifecycleObserver) {
        this.mLifecycleOwner = wVar;
        this.mObserver = bannerLifecycleObserver;
    }

    @f0(n.ON_DESTROY)
    public void onDestroy() {
        LogUtils.i("onDestroy");
        this.mObserver.onDestroy(this.mLifecycleOwner);
    }

    @f0(n.ON_START)
    public void onStart() {
        LogUtils.i("onStart");
        this.mObserver.onStart(this.mLifecycleOwner);
    }

    @f0(n.ON_STOP)
    public void onStop() {
        LogUtils.i("onStop");
        this.mObserver.onStop(this.mLifecycleOwner);
    }
}
