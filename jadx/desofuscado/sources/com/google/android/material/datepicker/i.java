package com.google.android.material.datepicker;

import android.content.res.Resources;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4843a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4844b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4845c;

    public /* synthetic */ i(Object obj, long j10, int i6) {
        this.f4843a = i6;
        this.f4845c = obj;
        this.f4844b = j10;
    }

    @Override // java.lang.Runnable
    public final void run() throws Resources.NotFoundException {
        long j10 = this.f4844b;
        Object obj = this.f4845c;
        switch (this.f4843a) {
            case 0:
                j jVar = (j) obj;
                jVar.f4847a.setError(String.format(jVar.d, r4.b.m(j10)));
                jVar.a();
                break;
            default:
                com.tencent.bugly.proguard.r rVar = (com.tencent.bugly.proguard.r) obj;
                rVar.b();
                rVar.a(j10);
                break;
        }
    }
}
