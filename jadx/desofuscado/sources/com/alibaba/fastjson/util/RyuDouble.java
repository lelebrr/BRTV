package com.alibaba.fastjson.util;

import a.e;
import androidx.media3.common.C;
import androidx.media3.exoplayer.MediaPeriodQueue;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.lang.reflect.Array;
import java.math.BigInteger;
import okhttp3.internal.connection.RealConnection;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class RyuDouble {
    private static final int[][] POW5_INV_SPLIT;
    private static final int[][] POW5_SPLIT;

    static {
        Class cls = Integer.TYPE;
        POW5_SPLIT = (int[][]) Array.newInstance((Class<?>) cls, 326, 4);
        POW5_INV_SPLIT = (int[][]) Array.newInstance((Class<?>) cls, 291, 4);
        BigInteger bigInteger = BigInteger.ONE;
        BigInteger bigIntegerSubtract = bigInteger.shiftLeft(31).subtract(bigInteger);
        BigInteger bigIntegerSubtract2 = bigInteger.shiftLeft(31).subtract(bigInteger);
        int i6 = 0;
        while (i6 < 326) {
            BigInteger bigIntegerPow = BigInteger.valueOf(5L).pow(i6);
            int iBitLength = bigIntegerPow.bitLength();
            int i10 = i6 == 0 ? 1 : (int) (((i6 * 23219280) + 9999999) / 10000000);
            if (i10 != iBitLength) {
                throw new IllegalStateException(iBitLength + " != " + i10);
            }
            if (i6 < POW5_SPLIT.length) {
                for (int i11 = 0; i11 < 4; i11++) {
                    POW5_SPLIT[i6][i11] = bigIntegerPow.shiftRight(((3 - i11) * 31) + (iBitLength - 121)).and(bigIntegerSubtract).intValue();
                }
            }
            if (i6 < POW5_INV_SPLIT.length) {
                BigInteger bigInteger2 = BigInteger.ONE;
                BigInteger bigIntegerAdd = bigInteger2.shiftLeft(iBitLength + 121).divide(bigIntegerPow).add(bigInteger2);
                for (int i12 = 0; i12 < 4; i12++) {
                    if (i12 == 0) {
                        POW5_INV_SPLIT[i6][i12] = bigIntegerAdd.shiftRight((3 - i12) * 31).intValue();
                    } else {
                        POW5_INV_SPLIT[i6][i12] = bigIntegerAdd.shiftRight((3 - i12) * 31).and(bigIntegerSubtract2).intValue();
                    }
                }
            }
            i6++;
        }
    }

    public static String toString(double d) {
        char[] cArr = new char[24];
        return new String(cArr, 0, toString(d, cArr, 0));
    }

    public static int toString(double d, char[] cArr, int i6) {
        int i10;
        boolean z7;
        boolean z10;
        long j10;
        long j11;
        long j12;
        int i11;
        boolean z11;
        boolean z12;
        long j13;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        boolean z13;
        int i17;
        int i18;
        int i19;
        int i20;
        if (!Double.isNaN(d)) {
            if (d == Double.POSITIVE_INFINITY) {
                cArr[i6] = 'I';
                cArr[i6 + 1] = 'n';
                cArr[i6 + 2] = 'f';
                cArr[i6 + 3] = 'i';
                cArr[i6 + 4] = 'n';
                cArr[i6 + 5] = 'i';
                cArr[i6 + 6] = 't';
                i16 = i6 + 8;
                cArr[i6 + 7] = 'y';
            } else if (d == Double.NEGATIVE_INFINITY) {
                cArr[i6] = '-';
                cArr[i6 + 1] = 'I';
                cArr[i6 + 2] = 'n';
                cArr[i6 + 3] = 'f';
                cArr[i6 + 4] = 'i';
                cArr[i6 + 5] = 'n';
                cArr[i6 + 6] = 'i';
                cArr[i6 + 7] = 't';
                i20 = i6 + 9;
                cArr[i6 + 8] = 'y';
            } else {
                long jDoubleToLongBits = Double.doubleToLongBits(d);
                if (jDoubleToLongBits == 0) {
                    cArr[i6] = '0';
                    cArr[i6 + 1] = '.';
                    i20 = i6 + 3;
                    cArr[i6 + 2] = '0';
                } else if (jDoubleToLongBits == Long.MIN_VALUE) {
                    cArr[i6] = '-';
                    cArr[i6 + 1] = '0';
                    cArr[i6 + 2] = '.';
                    i16 = i6 + 4;
                    cArr[i6 + 3] = '0';
                } else {
                    int i21 = (int) ((jDoubleToLongBits >>> 52) & 2047);
                    long j14 = jDoubleToLongBits & 4503599627370495L;
                    if (i21 == 0) {
                        i10 = -1074;
                    } else {
                        i10 = i21 - 1075;
                        j14 |= 4503599627370496L;
                    }
                    boolean z14 = jDoubleToLongBits < 0;
                    boolean z15 = (j14 & 1) == 0;
                    long j15 = 4 * j14;
                    long j16 = j15 + 2;
                    int i22 = (j14 != 4503599627370496L || i21 <= 1) ? 1 : 0;
                    long j17 = (j15 - 1) - i22;
                    int i23 = i10 - 2;
                    int i24 = 3;
                    if (i23 >= 0) {
                        int iMax = Math.max(0, ((int) ((i23 * 3010299) / 10000000)) - 1);
                        int i25 = (((-i23) + iMax) + ((iMax == 0 ? 1 : (int) (((iMax * 23219280) + 9999999) / 10000000)) + 121)) - 114;
                        if (i25 >= 0) {
                            int[] iArr = POW5_INV_SPLIT[iMax];
                            long j18 = j15 >>> 31;
                            long j19 = j15 & 2147483647L;
                            int i26 = iArr[0];
                            int i27 = iArr[1];
                            int i28 = iArr[2];
                            z10 = z15;
                            int i29 = iArr[3];
                            long j20 = ((((((((((((j19 * i29) >>> 31) + (i28 * j19)) + (i29 * j18)) >>> 31) + (i27 * j19)) + (i28 * j18)) >>> 31) + (i26 * j19)) + (i27 * j18)) >>> 21) + ((i26 * j18) << 10)) >>> i25;
                            long j21 = j16 >>> 31;
                            long j22 = j16 & 2147483647L;
                            z7 = z14;
                            long j23 = ((((((((((((j22 * i29) >>> 31) + (i28 * j22)) + (j21 * i29)) >>> 31) + (i27 * j22)) + (i28 * j21)) >>> 31) + (i26 * j22)) + (i27 * j21)) >>> 21) + ((i26 * j21) << 10)) >>> i25;
                            long j24 = j17 >>> 31;
                            long j25 = j17 & 2147483647L;
                            j11 = j23;
                            j12 = ((((((((((((j25 * i29) >>> 31) + (i28 * j25)) + (j24 * i29)) >>> 31) + (i27 * j25)) + (i28 * j24)) >>> 31) + (i26 * j25)) + (i27 * j24)) >>> 21) + ((i26 * j24) << 10)) >>> i25;
                            if (iMax <= 21) {
                                long j26 = j15 % 5;
                                if (j26 == 0) {
                                    if (j26 != 0) {
                                        i19 = 0;
                                    } else if (j15 % 25 != 0) {
                                        i19 = 1;
                                    } else if (j15 % 125 != 0) {
                                        i19 = 2;
                                    } else if (j15 % 625 != 0) {
                                        i19 = 3;
                                    } else {
                                        long j27 = j15 / 625;
                                        int i30 = 4;
                                        for (long j28 = 0; j27 > j28 && j27 % 5 == j28; j28 = 0) {
                                            j27 /= 5;
                                            i30++;
                                        }
                                        i19 = i30;
                                    }
                                    z13 = i19 >= iMax;
                                    z12 = false;
                                    j10 = j20;
                                    z11 = z13;
                                    i11 = iMax;
                                } else if (z10) {
                                    if (j17 % 5 != 0) {
                                        i18 = 0;
                                    } else if (j17 % 25 != 0) {
                                        i18 = 1;
                                    } else if (j17 % 125 != 0) {
                                        i18 = 2;
                                    } else if (j17 % 625 != 0) {
                                        i18 = 3;
                                    } else {
                                        long j29 = j17 / 625;
                                        int i31 = 4;
                                        for (long j30 = 0; j29 > j30 && j29 % 5 == j30; j30 = 0) {
                                            j29 /= 5;
                                            i31++;
                                        }
                                        i18 = i31;
                                    }
                                    z12 = i18 >= iMax;
                                    z13 = false;
                                    j10 = j20;
                                    z11 = z13;
                                    i11 = iMax;
                                } else {
                                    if (j16 % 5 != 0) {
                                        i17 = 0;
                                    } else if (j16 % 25 != 0) {
                                        i17 = 1;
                                    } else if (j16 % 125 != 0) {
                                        i17 = 2;
                                    } else if (j16 % 625 != 0) {
                                        i17 = 3;
                                    } else {
                                        long j31 = j16 / 625;
                                        int i32 = 4;
                                        for (long j32 = 0; j31 > j32 && j31 % 5 == j32; j32 = 0) {
                                            j31 /= 5;
                                            i32++;
                                        }
                                        i17 = i32;
                                    }
                                    if (i17 >= iMax) {
                                        j11--;
                                    }
                                    z13 = false;
                                    z12 = false;
                                    j10 = j20;
                                    z11 = z13;
                                    i11 = iMax;
                                }
                            } else {
                                z13 = false;
                                z12 = false;
                                j10 = j20;
                                z11 = z13;
                                i11 = iMax;
                            }
                        } else {
                            throw new IllegalArgumentException(e.n(i25, ""));
                        }
                    } else {
                        z7 = z14;
                        z10 = z15;
                        int i33 = -i23;
                        int iMax2 = Math.max(0, ((int) ((i33 * 6989700) / 10000000)) - 1);
                        int i34 = i33 - iMax2;
                        int i35 = (iMax2 - ((i34 == 0 ? 1 : (int) (((i34 * 23219280) + 9999999) / 10000000)) - 121)) - 114;
                        if (i35 >= 0) {
                            int[] iArr2 = POW5_SPLIT[i34];
                            long j33 = j15 >>> 31;
                            long j34 = j15 & 2147483647L;
                            int i36 = iArr2[0];
                            int i37 = iArr2[1];
                            int i38 = i22;
                            int i39 = iArr2[2];
                            int i40 = iArr2[3];
                            long j35 = ((((((((((((j34 * i40) >>> 31) + (i39 * j34)) + (j33 * i40)) >>> 31) + (i37 * j34)) + (i39 * j33)) >>> 31) + (i36 * j34)) + (i37 * j33)) >>> 21) + ((i36 * j33) << 10)) >>> i35;
                            long j36 = j16 >>> 31;
                            long j37 = j16 & 2147483647L;
                            j10 = j35;
                            j11 = ((((((((((((j37 * i40) >>> 31) + (i39 * j37)) + (j36 * i40)) >>> 31) + (i37 * j37)) + (i39 * j36)) >>> 31) + (i36 * j37)) + (i37 * j36)) >>> 21) + ((i36 * j36) << 10)) >>> i35;
                            long j38 = j17 >>> 31;
                            long j39 = j17 & 2147483647L;
                            j12 = ((((((((((((j39 * i40) >>> 31) + (i39 * j39)) + (j38 * i40)) >>> 31) + (i37 * j39)) + (i39 * j38)) >>> 31) + (i36 * j39)) + (i37 * j38)) >>> 21) + ((i36 * j38) << 10)) >>> i35;
                            i11 = iMax2 + i23;
                            z11 = true;
                            if (iMax2 > 1) {
                                z11 = iMax2 < 63 && (j15 & ((1 << (iMax2 - 1)) - 1)) == 0;
                            } else if (!z10) {
                                j11--;
                            } else if (i38 == 1) {
                                z12 = true;
                            }
                            z12 = false;
                        } else {
                            throw new IllegalArgumentException(e.n(i35, ""));
                        }
                    }
                    if (j11 >= 1000000000000000000L) {
                        i24 = 19;
                    } else if (j11 >= 100000000000000000L) {
                        i24 = 18;
                    } else if (j11 >= 10000000000000000L) {
                        i24 = 17;
                    } else if (j11 >= 1000000000000000L) {
                        i24 = 16;
                    } else if (j11 >= 100000000000000L) {
                        i24 = 15;
                    } else if (j11 >= 10000000000000L) {
                        i24 = 14;
                    } else if (j11 >= MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US) {
                        i24 = 13;
                    } else if (j11 >= 100000000000L) {
                        i24 = 12;
                    } else if (j11 >= RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                        i24 = 11;
                    } else if (j11 >= C.NANOS_PER_SECOND) {
                        i24 = 10;
                    } else if (j11 >= 100000000) {
                        i24 = 9;
                    } else if (j11 >= 10000000) {
                        i24 = 8;
                    } else if (j11 >= 1000000) {
                        i24 = 7;
                    } else if (j11 >= SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US) {
                        i24 = 6;
                    } else if (j11 >= Renderer.DEFAULT_DURATION_TO_PROGRESS_US) {
                        i24 = 5;
                    } else if (j11 >= 1000) {
                        i24 = 4;
                    } else if (j11 < 100) {
                        i24 = j11 >= 10 ? 2 : 1;
                    }
                    int i41 = i11 + i24;
                    int i42 = i41 - 1;
                    boolean z16 = i42 < -3 || i42 >= 7;
                    if (z12 || z11) {
                        int i43 = 0;
                        int i44 = 0;
                        while (true) {
                            long j40 = j11 / 10;
                            long j41 = j12 / 10;
                            if (j40 <= j41 || (j11 < 100 && z16)) {
                                break;
                            }
                            z12 &= j12 % 10 == 0;
                            z11 &= i43 == 0;
                            i43 = (int) (j10 % 10);
                            j10 /= 10;
                            i44++;
                            j11 = j40;
                            j12 = j41;
                        }
                        if (z12 && z10) {
                            while (j12 % 10 == 0 && (j11 >= 100 || !z16)) {
                                z11 &= i43 == 0;
                                i43 = (int) (j10 % 10);
                                j11 /= 10;
                                j10 /= 10;
                                j12 /= 10;
                                i44++;
                            }
                        }
                        if (z11 && i43 == 5 && j10 % 2 == 0) {
                            i43 = 4;
                        }
                        j13 = j10 + (((j10 != j12 || (z12 && z10)) && i43 < 5) ? 0 : 1);
                        i12 = i44;
                    } else {
                        i12 = 0;
                        int i45 = 0;
                        while (true) {
                            long j42 = j11 / 10;
                            long j43 = j12 / 10;
                            if (j42 <= j43 || (j11 < 100 && z16)) {
                                break;
                            }
                            i45 = (int) (j10 % 10);
                            j10 /= 10;
                            i12++;
                            j11 = j42;
                            j12 = j43;
                        }
                        j13 = j10 + ((j10 == j12 || i45 >= 5) ? 1 : 0);
                    }
                    int i46 = i24 - i12;
                    if (z7) {
                        i13 = i6 + 1;
                        cArr[i6] = '-';
                    } else {
                        i13 = i6;
                    }
                    if (!z16) {
                        char c5 = '0';
                        if (i42 < 0) {
                            int i47 = i13 + 1;
                            cArr[i13] = '0';
                            int i48 = i13 + 2;
                            cArr[i47] = '.';
                            int i49 = -1;
                            while (i49 > i42) {
                                cArr[i48] = c5;
                                i49--;
                                i48++;
                                c5 = '0';
                            }
                            i14 = i48;
                            for (int i50 = 0; i50 < i46; i50++) {
                                cArr[e.g(i48, i46, i50, 1)] = (char) ((j13 % 10) + 48);
                                j13 /= 10;
                                i14++;
                            }
                        } else if (i41 >= i46) {
                            for (int i51 = 0; i51 < i46; i51++) {
                                cArr[e.g(i13, i46, i51, 1)] = (char) ((j13 % 10) + 48);
                                j13 /= 10;
                            }
                            int i52 = i13 + i46;
                            while (i46 < i41) {
                                cArr[i52] = '0';
                                i46++;
                                i52++;
                            }
                            cArr[i52] = '.';
                            i14 = i52 + 2;
                            cArr[i52 + 1] = '0';
                        } else {
                            int i53 = i13 + 1;
                            for (int i54 = 0; i54 < i46; i54++) {
                                if ((i46 - i54) - 1 == i42) {
                                    cArr[e.g(i53, i46, i54, 1)] = '.';
                                    i53--;
                                }
                                cArr[e.g(i53, i46, i54, 1)] = (char) ((j13 % 10) + 48);
                                j13 /= 10;
                            }
                            i14 = i46 + 1 + i13;
                        }
                        return i14 - i6;
                    }
                    for (int i55 = 0; i55 < i46 - 1; i55++) {
                        int i56 = (int) (j13 % 10);
                        j13 /= 10;
                        cArr[(i13 + i46) - i55] = (char) (i56 + 48);
                    }
                    cArr[i13] = (char) ((j13 % 10) + 48);
                    cArr[i13 + 1] = '.';
                    int i57 = i46 + 1 + i13;
                    if (i46 == 1) {
                        cArr[i57] = '0';
                        i57++;
                    }
                    int i58 = i57 + 1;
                    cArr[i57] = 'E';
                    if (i42 < 0) {
                        cArr[i58] = '-';
                        i42 = -i42;
                        i58 = i57 + 2;
                    }
                    if (i42 >= 100) {
                        int i59 = i58 + 1;
                        i15 = 48;
                        cArr[i58] = (char) ((i42 / 100) + 48);
                        i42 %= 100;
                        i58 += 2;
                        cArr[i59] = (char) ((i42 / 10) + 48);
                    } else {
                        i15 = 48;
                        if (i42 >= 10) {
                            cArr[i58] = (char) ((i42 / 10) + 48);
                            i58++;
                        }
                    }
                    i16 = i58 + 1;
                    cArr[i58] = (char) ((i42 % 10) + i15);
                }
            }
            return i16 - i6;
        }
        cArr[i6] = 'N';
        cArr[i6 + 1] = 'a';
        i20 = i6 + 3;
        cArr[i6 + 2] = 'N';
        return i20 - i6;
    }
}
