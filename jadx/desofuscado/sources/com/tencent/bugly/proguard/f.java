package com.tencent.bugly.proguard;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: b, reason: collision with root package name */
    private static final char[] f5891b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f5890a = new byte[0];

    public static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i6 = 0; i6 < bArr.length; i6++) {
            byte b8 = bArr[i6];
            int i10 = i6 * 2;
            char[] cArr2 = f5891b;
            cArr[i10 + 1] = cArr2[b8 & 15];
            cArr[i10] = cArr2[((byte) (b8 >>> 4)) & 15];
        }
        return new String(cArr);
    }
}
