package com.google.android.gms.internal.cast;

import java.security.AccessController;
import sun.misc.Unsafe;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d8 {

    /* renamed from: a, reason: collision with root package name */
    public static final Unsafe f4138a;

    /* renamed from: b, reason: collision with root package name */
    public static final Class f4139b;

    /* renamed from: c, reason: collision with root package name */
    public static final c8 f4140c;
    public static final boolean d;

    /* renamed from: e, reason: collision with root package name */
    public static final boolean f4141e;
    public static final long f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f4142g;

    /* JADX WARN: Removed duplicated region for block: B:11:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0180 A[PHI: r0
  0x0180: PHI (r0v42 java.lang.reflect.Field) = (r0v35 java.lang.reflect.Field), (r0v37 java.lang.reflect.Field) binds: [B:43:0x016d, B:49:0x017e] A[DONT_GENERATE, DONT_INLINE]] */
    static {
        /*
            Method dump skipped, instructions count: 410
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.d8.<clinit>():void");
    }

    public static void a(Class cls) {
        if (f4141e) {
            f4140c.f4127a.arrayIndexScale(cls);
        }
    }

    public static void b(Object obj, long j10, byte b8) {
        Unsafe unsafe = f4140c.f4127a;
        long j11 = (-4) & j10;
        int i6 = unsafe.getInt(obj, j11);
        int i10 = ((~((int) j10)) & 3) << 3;
        unsafe.putInt(obj, j11, ((255 & b8) << i10) | (i6 & (~(255 << i10))));
    }

    public static void c(Object obj, long j10, byte b8) {
        Unsafe unsafe = f4140c.f4127a;
        long j11 = (-4) & j10;
        int i6 = (((int) j10) & 3) << 3;
        unsafe.putInt(obj, j11, ((255 & b8) << i6) | (unsafe.getInt(obj, j11) & (~(255 << i6))));
    }

    public static double d(long j10, Object obj) {
        return f4140c.a(j10, obj);
    }

    public static float e(long j10, Object obj) {
        return f4140c.b(j10, obj);
    }

    public static int f(long j10, Object obj) {
        return f4140c.f4127a.getInt(obj, j10);
    }

    public static long g(long j10, Object obj) {
        return f4140c.f4127a.getLong(obj, j10);
    }

    public static Object h(Class cls) {
        try {
            return f4138a.allocateInstance(cls);
        } catch (InstantiationException e5) {
            throw new IllegalStateException(e5);
        }
    }

    public static Object i(long j10, Object obj) {
        return f4140c.f4127a.getObject(obj, j10);
    }

    public static Unsafe j() {
        try {
            return (Unsafe) AccessController.doPrivileged(new z7());
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void k(int i6, long j10, Object obj) {
        f4140c.f4127a.putInt(obj, j10, i6);
    }

    public static void l(Object obj, long j10, long j11) {
        f4140c.f4127a.putLong(obj, j10, j11);
    }

    public static void m(long j10, Object obj, Object obj2) {
        f4140c.f4127a.putObject(obj, j10, obj2);
    }

    public static /* bridge */ /* synthetic */ boolean n(long j10, Object obj) {
        return ((byte) ((f4140c.f4127a.getInt(obj, (-4) & j10) >>> ((int) (((~j10) & 3) << 3))) & 255)) != 0;
    }

    public static /* bridge */ /* synthetic */ boolean o(long j10, Object obj) {
        return ((byte) ((f4140c.f4127a.getInt(obj, (-4) & j10) >>> ((int) ((j10 & 3) << 3))) & 255)) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean p(Class cls) {
        int i6 = t6.f4420a;
        try {
            Class cls2 = f4139b;
            Class cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean q(long j10, Object obj) {
        return f4140c.g(j10, obj);
    }

    public static int r(Class cls) {
        if (f4141e) {
            return f4140c.f4127a.arrayBaseOffset(cls);
        }
        return -1;
    }
}
