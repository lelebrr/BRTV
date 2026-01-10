package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class f6 {
    public static /* synthetic */ boolean a(Unsafe unsafe, e6 e6Var, long j10, Object obj, Object obj2) {
        while (!unsafe.compareAndSwapObject(e6Var, j10, obj, obj2)) {
            if (unsafe.getObject(e6Var, j10) != obj) {
                return false;
            }
        }
        return true;
    }
}
