package okio.internal;

import androidx.media3.extractor.ts.PsExtractor;
import j9.i;
import java.util.Arrays;
import okio.Utf8;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class _Utf8Kt {
    public static final byte[] commonAsUtf8ToByteArray(String str) {
        int i6;
        char cCharAt;
        i.f(str, "<this>");
        byte[] bArr = new byte[str.length() * 4];
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            char cCharAt2 = str.charAt(i10);
            if (i.h(cCharAt2, 128) >= 0) {
                int length2 = str.length();
                int i11 = i10;
                while (i10 < length2) {
                    char cCharAt3 = str.charAt(i10);
                    if (i.h(cCharAt3, 128) < 0) {
                        int i12 = i11 + 1;
                        bArr[i11] = (byte) cCharAt3;
                        i10++;
                        while (true) {
                            i11 = i12;
                            if (i10 >= length2 || i.h(str.charAt(i10), 128) >= 0) {
                                break;
                            }
                            i12 = i11 + 1;
                            bArr[i11] = (byte) str.charAt(i10);
                            i10++;
                        }
                    } else {
                        if (i.h(cCharAt3, 2048) < 0) {
                            bArr[i11] = (byte) ((cCharAt3 >> 6) | 192);
                            i11 += 2;
                            bArr[i11 + 1] = (byte) ((cCharAt3 & '?') | 128);
                        } else if (55296 > cCharAt3 || cCharAt3 >= 57344) {
                            bArr[i11] = (byte) ((cCharAt3 >> '\f') | 224);
                            bArr[i11 + 1] = (byte) (((cCharAt3 >> 6) & 63) | 128);
                            i11 += 3;
                            bArr[i11 + 2] = (byte) ((cCharAt3 & '?') | 128);
                        } else if (i.h(cCharAt3, 56319) > 0 || length2 <= (i6 = i10 + 1) || 56320 > (cCharAt = str.charAt(i6)) || cCharAt >= 57344) {
                            bArr[i11] = Utf8.REPLACEMENT_BYTE;
                            i10++;
                            i11++;
                        } else {
                            int iCharAt = (str.charAt(i6) + (cCharAt3 << '\n')) - 56613888;
                            bArr[i11] = (byte) ((iCharAt >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                            bArr[i11 + 1] = (byte) (((iCharAt >> 12) & 63) | 128);
                            bArr[i11 + 2] = (byte) (((iCharAt >> 6) & 63) | 128);
                            i11 += 4;
                            bArr[i11 + 3] = (byte) ((iCharAt & 63) | 128);
                            i10 += 2;
                        }
                        i10++;
                    }
                }
                byte[] bArrCopyOf = Arrays.copyOf(bArr, i11);
                i.e(bArrCopyOf, "copyOf(...)");
                return bArrCopyOf;
            }
            bArr[i10] = (byte) cCharAt2;
            i10++;
        }
        byte[] bArrCopyOf2 = Arrays.copyOf(bArr, str.length());
        i.e(bArrCopyOf2, "copyOf(...)");
        return bArrCopyOf2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x008a, code lost:
    
        if ((r16[r5] & 192) == 128) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ec, code lost:
    
        if ((r16[r5] & 192) == 128) goto L70;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final java.lang.String commonToUtf8String(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 409
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal._Utf8Kt.commonToUtf8String(byte[], int, int):java.lang.String");
    }

    public static /* synthetic */ String commonToUtf8String$default(byte[] bArr, int i6, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i6 = 0;
        }
        if ((i11 & 2) != 0) {
            i10 = bArr.length;
        }
        return commonToUtf8String(bArr, i6, i10);
    }
}
