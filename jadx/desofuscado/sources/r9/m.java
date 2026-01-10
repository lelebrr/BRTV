package r9;

import androidx.media3.common.C;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m extends l {
    public static Integer L(String str) {
        boolean z7;
        int i6;
        int i10;
        o9.d.d(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i11 = 0;
        char cCharAt = str.charAt(0);
        int iH = j9.i.h(cCharAt, 48);
        int i12 = C.RATE_UNSET_INT;
        if (iH < 0) {
            i6 = 1;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                z7 = false;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                i12 = Integer.MIN_VALUE;
                z7 = true;
            }
        } else {
            z7 = false;
            i6 = 0;
        }
        int i13 = -59652323;
        while (i6 < length) {
            int iDigit = Character.digit((int) str.charAt(i6), 10);
            if (iDigit < 0) {
                return null;
            }
            if ((i11 < i13 && (i13 != -59652323 || i11 < (i13 = i12 / 10))) || (i10 = i11 * 10) < i12 + iDigit) {
                return null;
            }
            i11 = i10 - iDigit;
            i6++;
        }
        return z7 ? Integer.valueOf(i11) : Integer.valueOf(-i11);
    }

    public static Long M(String str) {
        boolean z7;
        j9.i.f(str, "<this>");
        o9.d.d(10);
        int length = str.length();
        if (length == 0) {
            return null;
        }
        int i6 = 0;
        char cCharAt = str.charAt(0);
        int iH = j9.i.h(cCharAt, 48);
        long j10 = C.TIME_UNSET;
        if (iH < 0) {
            z7 = true;
            if (length == 1) {
                return null;
            }
            if (cCharAt == '+') {
                i6 = 1;
                z7 = false;
            } else {
                if (cCharAt != '-') {
                    return null;
                }
                j10 = Long.MIN_VALUE;
                i6 = 1;
            }
        } else {
            z7 = false;
        }
        long j11 = -256204778801521550L;
        long j12 = 0;
        long j13 = -256204778801521550L;
        while (i6 < length) {
            int iDigit = Character.digit((int) str.charAt(i6), 10);
            if (iDigit < 0) {
                return null;
            }
            if (j12 < j13) {
                if (j13 != j11) {
                    return null;
                }
                j13 = j10 / 10;
                if (j12 < j13) {
                    return null;
                }
            }
            long j14 = j12 * 10;
            long j15 = iDigit;
            if (j14 < j10 + j15) {
                return null;
            }
            j12 = j14 - j15;
            i6++;
            j11 = -256204778801521550L;
        }
        return z7 ? Long.valueOf(j12) : Long.valueOf(-j12);
    }
}
