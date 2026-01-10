package com.google.android.material.datepicker;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4855a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f4856b;

    public l(r rVar, int i6) {
        this.f4856b = rVar;
        this.f4855a = i6;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4856b.f4870c0.smoothScrollToPosition(this.f4855a);
    }
}
