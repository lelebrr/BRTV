package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b8 extends c8 {
    public b8(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.cast.c8
    public final double a(long j10, Object obj) {
        return Double.longBitsToDouble(this.f4127a.getLong(obj, j10));
    }

    @Override // com.google.android.gms.internal.cast.c8
    public final float b(long j10, Object obj) {
        return Float.intBitsToFloat(this.f4127a.getInt(obj, j10));
    }

    @Override // com.google.android.gms.internal.cast.c8
    public final void c(Object obj, long j10, boolean z7) {
        if (d8.f4142g) {
            d8.b(obj, j10, z7 ? (byte) 1 : (byte) 0);
        } else {
            d8.c(obj, j10, z7 ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.cast.c8
    public final void d(Object obj, long j10, byte b8) {
        if (d8.f4142g) {
            d8.b(obj, j10, b8);
        } else {
            d8.c(obj, j10, b8);
        }
    }

    @Override // com.google.android.gms.internal.cast.c8
    public final void e(Object obj, long j10, double d) {
        this.f4127a.putLong(obj, j10, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.cast.c8
    public final void f(Object obj, long j10, float f) {
        this.f4127a.putInt(obj, j10, Float.floatToIntBits(f));
    }

    @Override // com.google.android.gms.internal.cast.c8
    public final boolean g(long j10, Object obj) {
        return d8.f4142g ? d8.n(j10, obj) : d8.o(j10, obj);
    }
}
