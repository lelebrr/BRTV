package com.tencent.bugly.crashreport.crash.anr;

import com.tencent.bugly.crashreport.crash.anr.TraceFileHelper;
import com.tencent.bugly.proguard.al;
import java.util.HashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements TraceFileHelper.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TraceFileHelper.a f5547a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f5548b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f5549c;

    public a(TraceFileHelper.a aVar, String str, boolean z7) {
        this.f5547a = aVar;
        this.f5548b = str;
        this.f5549c = z7;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(String str, int i6, String str2, String str3) {
        al.c("new thread %s", str);
        TraceFileHelper.a aVar = this.f5547a;
        if (aVar.f5544a > 0 && aVar.f5546c > 0 && aVar.f5545b != null) {
            if (aVar.d == null) {
                aVar.d = new HashMap();
            }
            aVar.d.put(str, new String[]{str2, str3, String.valueOf(i6)});
        }
        return true;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(long j10, long j11, String str) {
        al.c("new process %s", str);
        if (!str.equals(this.f5548b)) {
            return true;
        }
        TraceFileHelper.a aVar = this.f5547a;
        aVar.f5544a = j10;
        aVar.f5545b = str;
        aVar.f5546c = j11;
        return this.f5549c;
    }

    @Override // com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.b
    public final boolean a(long j10) {
        al.c("process end %d", Long.valueOf(j10));
        TraceFileHelper.a aVar = this.f5547a;
        return aVar.f5544a <= 0 || aVar.f5546c <= 0 || aVar.f5545b == null;
    }
}
