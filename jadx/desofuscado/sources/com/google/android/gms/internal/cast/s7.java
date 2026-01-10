package com.google.android.gms.internal.cast;

import java.nio.charset.Charset;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s7 {

    /* renamed from: c, reason: collision with root package name */
    public static final s7 f4412c = new s7();

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f4414b = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final l7 f4413a = new l7();

    public final v7 a(Class cls) {
        Charset charset = h7.f4214a;
        if (cls == null) {
            throw new NullPointerException("messageType");
        }
        ConcurrentHashMap concurrentHashMap = this.f4414b;
        v7 v7VarK = (v7) concurrentHashMap.get(cls);
        if (v7VarK == null) {
            l7 l7Var = this.f4413a;
            l7Var.getClass();
            k2 k2Var = w7.f4454a;
            c7.class.isAssignableFrom(cls);
            u7 u7VarB = ((l7) l7Var.f4310b).b(cls);
            if ((u7VarB.d & 2) == 2) {
                k2 k2Var2 = w7.f4454a;
                k2 k2Var3 = z6.f4510a;
                v7VarK = new q7(k2Var2, u7VarB.f4437a);
            } else {
                int i6 = r7.f4407a;
                int i10 = j7.f4266a;
                k2 k2Var4 = w7.f4454a;
                k2 k2Var5 = u7VarB.b() + (-1) != 1 ? z6.f4510a : null;
                int i11 = m7.f4354a;
                v7VarK = p7.k(u7VarB, k2Var4, k2Var5);
            }
            v7 v7Var = (v7) concurrentHashMap.putIfAbsent(cls, v7VarK);
            if (v7Var != null) {
                return v7Var;
            }
        }
        return v7VarK;
    }
}
