package com.tencent.bugly.crashreport.crash.anr;

import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.proguard.al;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements TraceFileHelper.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TraceFileHelper.a f5550a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f5551b;

    public b(TraceFileHelper.a aVar, boolean z7) {
        this.f5550a = aVar;
        this.f5551b = z7;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(String str, int i6, String str2, String str3) {
        al.c("new thread %s", str);
        TraceFileHelper.a aVar = this.f5550a;
        if (aVar.d == null) {
            aVar.d = new HashMap();
        }
        aVar.d.put(str, new String[]{str2, str3, String.valueOf(i6)});
        return true;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(long j10, long j11, String str) {
        al.c("new process %s", str);
        TraceFileHelper.a aVar = this.f5550a;
        aVar.f5544a = j10;
        aVar.f5545b = str;
        aVar.f5546c = j11;
        return this.f5551b;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(long j10) {
        al.c("process end %d", Long.valueOf(j10));
        return false;
    }
}
