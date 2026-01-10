package com.google.common.util.concurrent;

import java.util.concurrent.locks.LockSupport;

/* compiled from: MyApplication */
@ElementTypesAreNonnullByDefault
/* loaded from: classes.dex */
final class OverflowAvoidingLockSupport {
    static final long MAX_NANOSECONDS_THRESHOLD = 2147483647999999999L;

    private OverflowAvoidingLockSupport() {
    }

    public static void parkNanos(Object obj, long j10) {
        LockSupport.parkNanos(obj, Math.min(j10, MAX_NANOSECONDS_THRESHOLD));
    }
}
