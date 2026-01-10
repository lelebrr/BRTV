package com.google.android.gms.internal.cast;

import android.content.Context;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m1 {

    /* renamed from: j, reason: collision with root package name */
    public static final v4.b f4313j = new v4.b("ClientCastAnalytics", null);

    /* renamed from: k, reason: collision with root package name */
    public static boolean f4314k = true;

    /* renamed from: a, reason: collision with root package name */
    public final q4.f f4315a;

    /* renamed from: b, reason: collision with root package name */
    public final x f4316b;

    /* renamed from: c, reason: collision with root package name */
    public final h f4317c;

    /* renamed from: e, reason: collision with root package name */
    public Long f4318e;

    /* renamed from: g, reason: collision with root package name */
    public a1.b f4319g;

    /* renamed from: h, reason: collision with root package name */
    public a0 f4320h;

    /* renamed from: i, reason: collision with root package name */
    public int f4321i = 1;
    public final String d = UUID.randomUUID().toString();
    public final ExecutorService f = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());

    public m1(Context context, v4.r rVar, q4.f fVar, x xVar, h hVar) {
        this.f4315a = fVar;
        this.f4316b = xVar;
        this.f4317c = hVar;
    }

    public final void a(c3 c3Var, int i6) {
        this.f.execute(new androidx.appcompat.widget.r0(this, c3Var, i6, 4));
    }
}
