package com.google.android.gms.internal.cast;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a6 extends z0 {
    public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(d6.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY);

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4105e = AtomicReferenceFieldUpdater.newUpdater(d6.class, d6.class, "b");
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(e6.class, d6.class, "f");

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4106g = AtomicReferenceFieldUpdater.newUpdater(e6.class, y5.class, "e");

    /* renamed from: h, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f4107h = AtomicReferenceFieldUpdater.newUpdater(e6.class, Object.class, "d");

    @Override // com.google.android.gms.internal.cast.z0
    public final y5 c(z5 z5Var) {
        return (y5) f4106g.getAndSet(z5Var, y5.d);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final d6 j(z5 z5Var) {
        return (d6) f.getAndSet(z5Var, d6.f4132c);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final void l(d6 d6Var, d6 d6Var2) {
        f4105e.lazySet(d6Var, d6Var2);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final void n(d6 d6Var, Thread thread) {
        d.lazySet(d6Var, thread);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final boolean p(z5 z5Var, y5 y5Var, y5 y5Var2) {
        return z0.i(f4106g, z5Var, y5Var, y5Var2);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final boolean q(e6 e6Var, Object obj, Object obj2) {
        return z0.i(f4107h, e6Var, obj, obj2);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final boolean r(e6 e6Var, d6 d6Var, d6 d6Var2) {
        return z0.i(f, e6Var, d6Var, d6Var2);
    }
}
