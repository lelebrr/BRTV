package com.tencent.bugly.proguard;

import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Thread f5912a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5913b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5914c;
    public final /* synthetic */ String d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f5915e;
    public final /* synthetic */ Map f;

    public j0(Thread thread, int i6, String str, String str2, String str3, Map map) {
        this.f5912a = thread;
        this.f5913b = i6;
        this.f5914c = str;
        this.d = str2;
        this.f5915e = str3;
        this.f = map;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            if (au.f5721a == null) {
                al.e("[ExtraCrashManager] Extra crash manager has not been initialized.", new Object[0]);
            } else {
                au.a(au.f5721a, this.f5912a, this.f5913b, this.f5914c, this.d, this.f5915e, this.f);
            }
        } catch (Throwable th) {
            if (!al.b(th)) {
                th.printStackTrace();
            }
            al.e("[ExtraCrashManager] Crash error %s %s %s", this.f5914c, this.d, this.f5915e);
        }
    }
}
