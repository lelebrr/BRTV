package com.tencent.bugly.proguard;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5932a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f5933b;

    public /* synthetic */ n0(r rVar, int i6) {
        this.f5932a = i6;
        this.f5933b = rVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5932a) {
            case 0:
                try {
                    this.f5933b.a(false);
                    break;
                } catch (Throwable th) {
                    al.a(th);
                    return;
                }
            default:
                long jCurrentTimeMillis = System.currentTimeMillis();
                r rVar = this.f5933b;
                if (jCurrentTimeMillis >= rVar.f5947b) {
                    rVar.a(3, false);
                    rVar.a();
                    break;
                } else {
                    ak.a().a(new n0(rVar, 1), (rVar.f5947b - jCurrentTimeMillis) + 5000);
                    break;
                }
        }
    }
}
