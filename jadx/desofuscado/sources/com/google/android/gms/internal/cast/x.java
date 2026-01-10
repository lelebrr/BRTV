package com.google.android.gms.internal.cast;

import android.os.Looper;
import com.google.android.gms.cast.framework.CastOptions;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x {

    /* renamed from: g, reason: collision with root package name */
    public static final v4.b f4455g = new v4.b("SessionTransController", null);

    /* renamed from: a, reason: collision with root package name */
    public final CastOptions f4456a;

    /* renamed from: b, reason: collision with root package name */
    public final Set f4457b = Collections.synchronizedSet(new HashSet());

    /* renamed from: c, reason: collision with root package name */
    public final x0 f4458c = new x0(Looper.getMainLooper(), 0);
    public final w d = new w(this, 0);

    /* renamed from: e, reason: collision with root package name */
    public boolean f4459e;
    public q4.f f;

    public x(CastOptions castOptions) {
        this.f4456a = castOptions;
    }

    public final void a() {
        x0 x0Var = this.f4458c;
        b5.l.e(x0Var);
        w wVar = this.d;
        b5.l.e(wVar);
        x0Var.removeCallbacks(wVar);
    }
}
