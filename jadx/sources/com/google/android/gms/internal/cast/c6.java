package com.google.android.gms.internal.cast;

import androidx.media3.exoplayer.upstream.CmcdData;
import java.lang.reflect.Field;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c6 extends z0 {
    public static final Unsafe d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f4123e;
    public static final long f;

    /* renamed from: g, reason: collision with root package name */
    public static final long f4124g;

    /* renamed from: h, reason: collision with root package name */
    public static final long f4125h;

    /* renamed from: i, reason: collision with root package name */
    public static final long f4126i;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (SecurityException unused) {
                unsafe = (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction() { // from class: com.google.android.gms.internal.cast.h6
                    @Override // java.security.PrivilegedExceptionAction
                    public final Object run() throws IllegalAccessException, SecurityException, IllegalArgumentException {
                        Unsafe unsafe2 = c6.d;
                        for (Field field : Unsafe.class.getDeclaredFields()) {
                            field.setAccessible(true);
                            Object obj = field.get(null);
                            if (Unsafe.class.isInstance(obj)) {
                                return (Unsafe) Unsafe.class.cast(obj);
                            }
                        }
                        throw new NoSuchFieldError("the Unsafe");
                    }
                });
            }
            try {
                f = unsafe.objectFieldOffset(e6.class.getDeclaredField("f"));
                f4123e = unsafe.objectFieldOffset(e6.class.getDeclaredField("e"));
                f4124g = unsafe.objectFieldOffset(e6.class.getDeclaredField("d"));
                f4125h = unsafe.objectFieldOffset(d6.class.getDeclaredField(CmcdData.OBJECT_TYPE_AUDIO_ONLY));
                f4126i = unsafe.objectFieldOffset(d6.class.getDeclaredField("b"));
                d = unsafe;
            } catch (NoSuchFieldException e5) {
                throw new RuntimeException(e5);
            }
        } catch (PrivilegedActionException e10) {
            throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
        }
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final y5 c(z5 z5Var) {
        y5 y5Var;
        y5 y5Var2 = y5.d;
        do {
            y5Var = z5Var.f4150e;
            if (y5Var2 == y5Var) {
                break;
            }
        } while (!p(z5Var, y5Var, y5Var2));
        return y5Var;
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final d6 j(z5 z5Var) {
        d6 d6Var;
        d6 d6Var2 = d6.f4132c;
        do {
            d6Var = z5Var.f;
            if (d6Var2 == d6Var) {
                break;
            }
        } while (!r(z5Var, d6Var, d6Var2));
        return d6Var;
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final void l(d6 d6Var, d6 d6Var2) {
        d.putObject(d6Var, f4126i, d6Var2);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final void n(d6 d6Var, Thread thread) {
        d.putObject(d6Var, f4125h, thread);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final boolean p(z5 z5Var, y5 y5Var, y5 y5Var2) {
        return g6.a(d, z5Var, f4123e, y5Var, y5Var2);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final boolean q(e6 e6Var, Object obj, Object obj2) {
        return g6.a(d, e6Var, f4124g, obj, obj2);
    }

    @Override // com.google.android.gms.internal.cast.z0
    public final boolean r(e6 e6Var, d6 d6Var, d6 d6Var2) {
        return g6.a(d, e6Var, f, d6Var, d6Var2);
    }
}
