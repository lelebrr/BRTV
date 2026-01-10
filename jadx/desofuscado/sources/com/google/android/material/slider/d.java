package com.google.android.material.slider;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public int f5213a = -1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BaseSlider f5214b;

    public d(BaseSlider baseSlider) {
        this.f5214b = baseSlider;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f5214b.f5180g.x(this.f5213a, 4);
    }
}
