package com.google.android.gms.internal.cast;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final long f4155a;

    /* renamed from: b, reason: collision with root package name */
    public long f4156b;

    /* renamed from: c, reason: collision with root package name */
    public long f4157c;
    public final AtomicInteger d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4158e;

    public g(androidx.leanback.widget.o oVar) {
        this.f4158e = oVar.f1866a;
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.f4155a = jCurrentTimeMillis;
        this.f4156b = jCurrentTimeMillis;
        this.d = new AtomicInteger(1);
    }
}
