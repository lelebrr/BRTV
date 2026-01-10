package com.tencent.bugly.proguard;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5924a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ay f5925b;

    public /* synthetic */ l0(ay ayVar, int i6) {
        this.f5924a = i6;
        this.f5925b = ayVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5924a) {
            case 0:
                ay.a(this.f5925b);
                break;
            default:
                ay.a(this.f5925b);
                break;
        }
    }
}
