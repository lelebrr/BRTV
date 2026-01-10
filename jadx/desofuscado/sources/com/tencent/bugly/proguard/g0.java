package com.tencent.bugly.proguard;

import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 implements ah {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f5903a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f5904b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f5905c;

    public g0(long j10, List list, boolean z7) {
        this.f5903a = j10;
        this.f5904b = list;
        this.f5905c = z7;
    }

    @Override // com.tencent.bugly.proguard.ah
    public final void a(boolean z7, String str) {
        as.a(this.f5904b, z7, System.currentTimeMillis() - this.f5903a, this.f5905c ? "realtime" : "cache", str);
        as.a(z7, (List<CrashDetailBean>) this.f5904b);
    }
}
