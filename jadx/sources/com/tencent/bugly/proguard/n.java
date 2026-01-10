package com.tencent.bugly.proguard;

import java.nio.ByteBuffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a, reason: collision with root package name */
    private static final byte[] f5930a;

    /* renamed from: b, reason: collision with root package name */
    private static final byte[] f5931b;

    static {
        byte[] bArr = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70};
        byte[] bArr2 = new byte[256];
        byte[] bArr3 = new byte[256];
        for (int i6 = 0; i6 < 256; i6++) {
            bArr2[i6] = bArr[i6 >>> 4];
            bArr3[i6] = bArr[i6 & 15];
        }
        f5930a = bArr2;
        f5931b = bArr3;
    }

    public static boolean a(int i6, int i10) {
        return i6 == i10;
    }

    public static boolean a(long j10, long j11) {
        return j10 == j11;
    }

    public static boolean a(boolean z7, boolean z10) {
        return z7 == z10;
    }

    public static boolean a(Object obj, Object obj2) {
        return obj.equals(obj2);
    }

    public static byte[] a(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        byte[] bArr = new byte[iPosition];
        System.arraycopy(byteBuffer.array(), 0, bArr, 0, iPosition);
        return bArr;
    }
}
