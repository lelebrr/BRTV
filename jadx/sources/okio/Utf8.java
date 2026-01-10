package okio;

import a.e;
import androidx.media3.extractor.ts.PsExtractor;
import i9.l;
import j9.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Utf8 {
    public static final int HIGH_SURROGATE_HEADER = 55232;
    public static final int LOG_SURROGATE_HEADER = 56320;
    public static final int MASK_2BYTES = 3968;
    public static final int MASK_3BYTES = -123008;
    public static final int MASK_4BYTES = 3678080;
    public static final byte REPLACEMENT_BYTE = 63;
    public static final char REPLACEMENT_CHARACTER = 65533;
    public static final int REPLACEMENT_CODE_POINT = 65533;

    public static final boolean isIsoControl(int i6) {
        return (i6 >= 0 && i6 < 32) || (127 <= i6 && i6 < 160);
    }

    public static final boolean isUtf8Continuation(byte b8) {
        return (b8 & 192) == 128;
    }

    public static final int process2Utf8Bytes(byte[] bArr, int i6, int i10, l lVar) {
        i.f(bArr, "<this>");
        i.f(lVar, "yield");
        int i11 = i6 + 1;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i10 <= i11) {
            lVar.invoke(numValueOf);
            return 1;
        }
        byte b8 = bArr[i6];
        byte b10 = bArr[i11];
        if ((b10 & 192) != 128) {
            lVar.invoke(numValueOf);
            return 1;
        }
        int i12 = (b10 ^ 3968) ^ (b8 << 6);
        if (i12 < 128) {
            lVar.invoke(numValueOf);
            return 2;
        }
        lVar.invoke(Integer.valueOf(i12));
        return 2;
    }

    public static final int process3Utf8Bytes(byte[] bArr, int i6, int i10, l lVar) {
        i.f(bArr, "<this>");
        i.f(lVar, "yield");
        int i11 = i6 + 2;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i10 <= i11) {
            lVar.invoke(numValueOf);
            int i12 = i6 + 1;
            return (i10 <= i12 || (bArr[i12] & 192) != 128) ? 1 : 2;
        }
        byte b8 = bArr[i6];
        byte b10 = bArr[i6 + 1];
        if ((b10 & 192) != 128) {
            lVar.invoke(numValueOf);
            return 1;
        }
        byte b11 = bArr[i11];
        if ((b11 & 192) != 128) {
            lVar.invoke(numValueOf);
            return 2;
        }
        int i13 = ((b11 ^ (-123008)) ^ (b10 << 6)) ^ (b8 << 12);
        if (i13 < 2048) {
            lVar.invoke(numValueOf);
            return 3;
        }
        if (55296 > i13 || i13 >= 57344) {
            lVar.invoke(Integer.valueOf(i13));
            return 3;
        }
        lVar.invoke(numValueOf);
        return 3;
    }

    public static final int process4Utf8Bytes(byte[] bArr, int i6, int i10, l lVar) {
        i.f(bArr, "<this>");
        i.f(lVar, "yield");
        int i11 = i6 + 3;
        Integer numValueOf = Integer.valueOf(REPLACEMENT_CODE_POINT);
        if (i10 <= i11) {
            lVar.invoke(numValueOf);
            int i12 = i6 + 1;
            if (i10 <= i12 || (bArr[i12] & 192) != 128) {
                return 1;
            }
            int i13 = i6 + 2;
            return (i10 <= i13 || (bArr[i13] & 192) != 128) ? 2 : 3;
        }
        byte b8 = bArr[i6];
        byte b10 = bArr[i6 + 1];
        if ((b10 & 192) != 128) {
            lVar.invoke(numValueOf);
            return 1;
        }
        byte b11 = bArr[i6 + 2];
        if ((b11 & 192) != 128) {
            lVar.invoke(numValueOf);
            return 2;
        }
        byte b12 = bArr[i11];
        if ((b12 & 192) != 128) {
            lVar.invoke(numValueOf);
            return 3;
        }
        int i14 = (((b12 ^ 3678080) ^ (b11 << 6)) ^ (b10 << 12)) ^ (b8 << 18);
        if (i14 > 1114111) {
            lVar.invoke(numValueOf);
            return 4;
        }
        if (55296 <= i14 && i14 < 57344) {
            lVar.invoke(numValueOf);
            return 4;
        }
        if (i14 < 65536) {
            lVar.invoke(numValueOf);
            return 4;
        }
        lVar.invoke(Integer.valueOf(i14));
        return 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void processUtf16Chars(byte[] r11, int r12, int r13, i9.l r14) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf16Chars(byte[], int, int, i9.l):void");
    }

    public static final void processUtf8Bytes(String str, int i6, int i10, l lVar) {
        int i11;
        char cCharAt;
        i.f(str, "<this>");
        i.f(lVar, "yield");
        while (i6 < i10) {
            char cCharAt2 = str.charAt(i6);
            if (i.h(cCharAt2, 128) < 0) {
                lVar.invoke(Byte.valueOf((byte) cCharAt2));
                i6++;
                while (i6 < i10 && i.h(str.charAt(i6), 128) < 0) {
                    lVar.invoke(Byte.valueOf((byte) str.charAt(i6)));
                    i6++;
                }
            } else {
                if (i.h(cCharAt2, 2048) < 0) {
                    lVar.invoke(Byte.valueOf((byte) ((cCharAt2 >> 6) | 192)));
                    lVar.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (55296 > cCharAt2 || cCharAt2 >= 57344) {
                    lVar.invoke(Byte.valueOf((byte) ((cCharAt2 >> '\f') | 224)));
                    lVar.invoke(Byte.valueOf((byte) (((cCharAt2 >> 6) & 63) | 128)));
                    lVar.invoke(Byte.valueOf((byte) ((cCharAt2 & '?') | 128)));
                } else if (i.h(cCharAt2, 56319) > 0 || i10 <= (i11 = i6 + 1) || 56320 > (cCharAt = str.charAt(i11)) || cCharAt >= 57344) {
                    lVar.invoke(Byte.valueOf(REPLACEMENT_BYTE));
                } else {
                    int iCharAt = (str.charAt(i11) + (cCharAt2 << '\n')) - 56613888;
                    lVar.invoke(Byte.valueOf((byte) ((iCharAt >> 18) | PsExtractor.VIDEO_STREAM_MASK)));
                    lVar.invoke(Byte.valueOf((byte) (((iCharAt >> 12) & 63) | 128)));
                    lVar.invoke(Byte.valueOf((byte) (((iCharAt >> 6) & 63) | 128)));
                    lVar.invoke(Byte.valueOf((byte) ((iCharAt & 63) | 128)));
                    i6 += 2;
                }
                i6++;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void processUtf8CodePoints(byte[] r11, int r12, int r13, i9.l r14) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Utf8.processUtf8CodePoints(byte[], int, int, i9.l):void");
    }

    public static final long size(String str) {
        i.f(str, "<this>");
        return size$default(str, 0, 0, 3, null);
    }

    public static /* synthetic */ long size$default(String str, int i6, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i6 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = str.length();
        }
        return size(str, i6, i10);
    }

    public static final long size(String str, int i6) {
        i.f(str, "<this>");
        return size$default(str, i6, 0, 2, null);
    }

    public static final long size(String str, int i6, int i10) {
        int i11;
        i.f(str, "<this>");
        if (i6 < 0) {
            throw new IllegalArgumentException(e.n(i6, "beginIndex < 0: ").toString());
        }
        if (i10 >= i6) {
            if (i10 > str.length()) {
                StringBuilder sbU = e.u(i10, "endIndex > string.length: ", " > ");
                sbU.append(str.length());
                throw new IllegalArgumentException(sbU.toString().toString());
            }
            long j10 = 0;
            while (i6 < i10) {
                char cCharAt = str.charAt(i6);
                if (cCharAt < 128) {
                    j10++;
                } else {
                    if (cCharAt < 2048) {
                        i11 = 2;
                    } else if (cCharAt < 55296 || cCharAt > 57343) {
                        i11 = 3;
                    } else {
                        int i12 = i6 + 1;
                        char cCharAt2 = i12 < i10 ? str.charAt(i12) : (char) 0;
                        if (cCharAt > 56319 || cCharAt2 < 56320 || cCharAt2 > 57343) {
                            j10++;
                            i6 = i12;
                        } else {
                            j10 += 4;
                            i6 += 2;
                        }
                    }
                    j10 += i11;
                }
                i6++;
            }
            return j10;
        }
        throw new IllegalArgumentException(e.m(i10, i6, "endIndex < beginIndex: ", " < ").toString());
    }
}
