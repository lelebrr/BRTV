package com.google.common.util.concurrent;

import sun.misc.Unsafe;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract /* synthetic */ class d {
    public static /* synthetic */ boolean a(Unsafe unsafe, AbstractFuture abstractFuture, long j10, Object obj, Object obj2) {
        while (!unsafe.compareAndSwapObject(abstractFuture, j10, obj, obj2)) {
            if (unsafe.getObject(abstractFuture, j10) != obj) {
                return false;
            }
        }
        return true;
    }
}
