package com.google.android.gms.internal.cast;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends l {

    /* renamed from: g, reason: collision with root package name */
    public static final v4.b f4168g = new v4.b("AppVisibilityProxy", null);

    /* renamed from: h, reason: collision with root package name */
    public static final int f4169h = 1;

    /* renamed from: e, reason: collision with root package name */
    public final Set f4170e;
    public int f;

    public h() {
        super("com.google.android.gms.cast.framework.IAppVisibilityListener", 1);
        this.f4170e = Collections.synchronizedSet(new HashSet());
        this.f = f4169h;
    }
}
