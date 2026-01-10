package com.tencent.bugly.proguard;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q0 extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final int f5941a = 4;

    /* renamed from: b, reason: collision with root package name */
    public int f5942b;

    /* renamed from: c, reason: collision with root package name */
    public String f5943c;
    public byte[] d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ w f5944e;

    public q0(w wVar) {
        this.f5944e = wVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (this.f5941a != 4) {
            return;
        }
        this.f5944e.a(this.f5942b, this.f5943c, this.d, (v) null);
    }
}
