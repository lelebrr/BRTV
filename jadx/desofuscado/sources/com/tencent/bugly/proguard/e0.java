package com.tencent.bugly.proguard;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5887a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f5888b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5889c;
    public final /* synthetic */ String d;

    public /* synthetic */ e0(int i6, String str, String str2, String str3) {
        this.f5887a = i6;
        this.f5888b = str;
        this.f5889c = str2;
        this.d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5887a) {
            case 0:
                ao.d(this.f5888b, this.f5889c, this.d);
                break;
            default:
                ao.e(this.f5888b, this.f5889c, this.d);
                break;
        }
    }
}
