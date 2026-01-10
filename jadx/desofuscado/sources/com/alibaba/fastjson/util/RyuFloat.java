package com.alibaba.fastjson.util;

import a.e;
import androidx.media3.common.C;
import okhttp3.internal.http2.Http2Connection;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class RyuFloat {
    private static final int[][] POW5_SPLIT = {new int[]{C.BUFFER_FLAG_LAST_SAMPLE, 0}, new int[]{671088640, 0}, new int[]{838860800, 0}, new int[]{1048576000, 0}, new int[]{655360000, 0}, new int[]{819200000, 0}, new int[]{1024000000, 0}, new int[]{640000000, 0}, new int[]{800000000, 0}, new int[]{Http2Connection.DEGRADED_PONG_TIMEOUT_NS, 0}, new int[]{625000000, 0}, new int[]{781250000, 0}, new int[]{976562500, 0}, new int[]{610351562, 1073741824}, new int[]{762939453, 268435456}, new int[]{953674316, 872415232}, new int[]{596046447, 1619001344}, new int[]{745058059, 1486880768}, new int[]{931322574, 1321730048}, new int[]{582076609, 289210368}, new int[]{727595761, 898383872}, new int[]{909494701, 1659850752}, new int[]{568434188, 1305842176}, new int[]{710542735, 1632302720}, new int[]{888178419, 1503507488}, new int[]{555111512, 671256724}, new int[]{693889390, 839070905}, new int[]{867361737, 2122580455}, new int[]{542101086, 521306416}, new int[]{677626357, 1725374844}, new int[]{847032947, 546105819}, new int[]{1058791184, 145761362}, new int[]{661744490, 91100851}, new int[]{827180612, 1187617888}, new int[]{1033975765, 1484522360}, new int[]{646234853, 1196261931}, new int[]{807793566, 2032198326}, new int[]{1009741958, 1466506084}, new int[]{631088724, 379695390}, new int[]{788860905, 474619238}, new int[]{986076131, 1130144959}, new int[]{616297582, 437905143}, new int[]{770371977, 1621123253}, new int[]{962964972, 415791331}, new int[]{601853107, 1333611405}, new int[]{752316384, 1130143345}, new int[]{940395480, 1412679181}};
    private static final int[][] POW5_INV_SPLIT = {new int[]{268435456, 1}, new int[]{214748364, 1717986919}, new int[]{171798691, 1803886265}, new int[]{137438953, 1013612282}, new int[]{219902325, 1192282922}, new int[]{175921860, 953826338}, new int[]{140737488, 763061070}, new int[]{225179981, 791400982}, new int[]{180143985, 203624056}, new int[]{144115188, 162899245}, new int[]{230584300, 1978625710}, new int[]{184467440, 1582900568}, new int[]{147573952, 1266320455}, new int[]{236118324, 308125809}, new int[]{188894659, 675997377}, new int[]{151115727, 970294631}, new int[]{241785163, 1981968139}, new int[]{193428131, 297084323}, new int[]{154742504, 1955654377}, new int[]{247588007, 1840556814}, new int[]{198070406, 613451992}, new int[]{158456325, 61264864}, new int[]{253530120, 98023782}, new int[]{202824096, 78419026}, new int[]{162259276, 1780722139}, new int[]{259614842, 1990161963}, new int[]{207691874, 733136111}, new int[]{166153499, 1016005619}, new int[]{265845599, 337118801}, new int[]{212676479, 699191770}, new int[]{170141183, 988850146}};

    public static String toString(float f) {
        char[] cArr = new char[15];
        return new String(cArr, 0, toString(f, cArr, 0));
    }

    public static int toString(float f, char[] cArr, int i6) {
        int i10;
        boolean z7;
        int i11;
        int i12;
        int i13;
        boolean z10;
        int i14;
        boolean z11;
        int i15;
        int i16;
        boolean z12;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        if (!Float.isNaN(f)) {
            if (f == Float.POSITIVE_INFINITY) {
                cArr[i6] = 'I';
                cArr[i6 + 1] = 'n';
                cArr[i6 + 2] = 'f';
                cArr[i6 + 3] = 'i';
                cArr[i6 + 4] = 'n';
                cArr[i6 + 5] = 'i';
                cArr[i6 + 6] = 't';
                i20 = i6 + 8;
                cArr[i6 + 7] = 'y';
            } else if (f == Float.NEGATIVE_INFINITY) {
                cArr[i6] = '-';
                cArr[i6 + 1] = 'I';
                cArr[i6 + 2] = 'n';
                cArr[i6 + 3] = 'f';
                cArr[i6 + 4] = 'i';
                cArr[i6 + 5] = 'n';
                cArr[i6 + 6] = 'i';
                cArr[i6 + 7] = 't';
                i21 = i6 + 9;
                cArr[i6 + 8] = 'y';
            } else {
                int iFloatToIntBits = Float.floatToIntBits(f);
                if (iFloatToIntBits == 0) {
                    cArr[i6] = '0';
                    cArr[i6 + 1] = '.';
                    i21 = i6 + 3;
                    cArr[i6 + 2] = '0';
                } else if (iFloatToIntBits == Integer.MIN_VALUE) {
                    cArr[i6] = '-';
                    cArr[i6 + 1] = '0';
                    cArr[i6 + 2] = '.';
                    i20 = i6 + 4;
                    cArr[i6 + 3] = '0';
                } else {
                    int i22 = (iFloatToIntBits >> 23) & 255;
                    int i23 = 8388607 & iFloatToIntBits;
                    if (i22 == 0) {
                        i10 = -149;
                    } else {
                        i10 = i22 - 150;
                        i23 |= 8388608;
                    }
                    boolean z13 = iFloatToIntBits < 0;
                    boolean z14 = (i23 & 1) == 0;
                    int i24 = i23 * 4;
                    int i25 = i24 + 2;
                    int i26 = i24 - ((((long) i23) != 8388608 || i22 <= 1) ? 2 : 1);
                    int i27 = i10 - 2;
                    if (i27 >= 0) {
                        i16 = (int) ((i27 * 3010299) / 10000000);
                        int i28 = i16 == 0 ? 1 : (int) (((i16 * 23219280) + 9999999) / 10000000);
                        int i29 = (-i27) + i16;
                        int[][] iArr = POW5_INV_SPLIT;
                        int[] iArr2 = iArr[i16];
                        long j10 = iArr2[0];
                        long j11 = iArr2[1];
                        long j12 = i24;
                        int i30 = ((i28 + 58) + i29) - 31;
                        z7 = z14;
                        int i31 = i24;
                        i11 = (int) (((j12 * j10) + ((j12 * j11) >> 31)) >> i30);
                        long j13 = i25;
                        i14 = (int) (((j13 * j10) + ((j13 * j11) >> 31)) >> i30);
                        long j14 = i26;
                        i15 = (int) (((j10 * j14) + ((j14 * j11) >> 31)) >> i30);
                        if (i16 == 0 || (i14 - 1) / 10 > i15 / 10) {
                            i13 = 0;
                        } else {
                            int i32 = i16 - 1;
                            int i33 = (i29 - 1) + (i32 == 0 ? 1 : (int) (((i32 * 23219280) + 9999999) / 10000000)) + 58;
                            int[] iArr3 = iArr[i32];
                            i13 = (int) ((((j12 * iArr3[0]) + ((iArr3[1] * j12) >> 31)) >> (i33 - 31)) % 10);
                        }
                        int i34 = 0;
                        while (i25 > 0 && i25 % 5 == 0) {
                            i25 /= 5;
                            i34++;
                        }
                        int i35 = 0;
                        while (i31 > 0 && i31 % 5 == 0) {
                            i31 /= 5;
                            i35++;
                        }
                        int i36 = 0;
                        while (i26 > 0 && i26 % 5 == 0) {
                            i26 /= 5;
                            i36++;
                        }
                        z10 = i34 >= i16;
                        z12 = i35 >= i16;
                        z11 = i36 >= i16;
                        i12 = 0;
                    } else {
                        z7 = z14;
                        int i37 = -i27;
                        int i38 = (int) ((i37 * 6989700) / 10000000);
                        int i39 = i37 - i38;
                        int i40 = i39 == 0 ? 1 : (int) (((i39 * 23219280) + 9999999) / 10000000);
                        int[][] iArr4 = POW5_SPLIT;
                        int[] iArr5 = iArr4[i39];
                        long j15 = iArr5[0];
                        long j16 = iArr5[1];
                        int i41 = (i38 - (i40 - 61)) - 31;
                        long j17 = i24;
                        i11 = (int) (((j17 * j15) + ((j17 * j16) >> 31)) >> i41);
                        long j18 = i25;
                        int i42 = (int) (((j18 * j15) + ((j18 * j16) >> 31)) >> i41);
                        long j19 = i26;
                        int i43 = (int) (((j15 * j19) + ((j19 * j16) >> 31)) >> i41);
                        if (i38 == 0 || (i42 - 1) / 10 > i43 / 10) {
                            i12 = 0;
                            i13 = 0;
                        } else {
                            int i44 = i39 + 1;
                            int i45 = (i38 - 1) - ((i44 == 0 ? 1 : (int) (((i44 * 23219280) + 9999999) / 10000000)) - 61);
                            int[] iArr6 = iArr4[i44];
                            i12 = 0;
                            i13 = (int) ((((j17 * iArr6[0]) + ((iArr6[1] * j17) >> 31)) >> (i45 - 31)) % 10);
                        }
                        int i46 = i27 + i38;
                        boolean z15 = 1 >= i38;
                        boolean z16 = i38 < 23 && (i24 & ((1 << (i38 + (-1))) - 1)) == 0;
                        boolean z17 = (i26 % 2 == 1 ? 0 : 1) >= i38;
                        z10 = z15;
                        i14 = i42;
                        boolean z18 = z16;
                        z11 = z17;
                        i15 = i43;
                        i16 = i46;
                        z12 = z18;
                    }
                    int i47 = Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
                    int i48 = 10;
                    while (i48 > 0 && i14 < i47) {
                        i47 /= 10;
                        i48--;
                    }
                    int i49 = i16 + i48;
                    int i50 = i49 - 1;
                    boolean z19 = i50 < -3 || i50 >= 7;
                    if (z10 && !z7) {
                        i14--;
                    }
                    int i51 = 0;
                    while (true) {
                        int i52 = i14 / 10;
                        int i53 = i15 / 10;
                        if (i52 <= i53 || (i14 < 100 && z19)) {
                            break;
                        }
                        z11 &= i15 % 10 == 0;
                        i13 = i11 % 10;
                        i11 /= 10;
                        i51++;
                        i14 = i52;
                        i15 = i53;
                    }
                    if (z11 && z7) {
                        while (i15 % 10 == 0 && (i14 >= 100 || !z19)) {
                            i14 /= 10;
                            i13 = i11 % 10;
                            i11 /= 10;
                            i15 /= 10;
                            i51++;
                        }
                    }
                    int i54 = i11;
                    if (z12 && i13 == 5 && i54 % 2 == 0) {
                        i13 = 4;
                    }
                    int i55 = i54 + (((i54 != i15 || (z11 && z7)) && i13 < 5) ? 0 : 1);
                    int i56 = i48 - i51;
                    if (z13) {
                        i17 = i6 + 1;
                        cArr[i6] = '-';
                    } else {
                        i17 = i6;
                    }
                    if (z19) {
                        while (i12 < i56 - 1) {
                            int i57 = i55 % 10;
                            i55 /= 10;
                            cArr[(i17 + i56) - i12] = (char) (i57 + 48);
                            i12++;
                        }
                        cArr[i17] = (char) ((i55 % 10) + 48);
                        cArr[i17 + 1] = '.';
                        int i58 = i56 + 1 + i17;
                        if (i56 == 1) {
                            cArr[i58] = '0';
                            i58++;
                        }
                        int i59 = i58 + 1;
                        cArr[i58] = 'E';
                        if (i50 < 0) {
                            cArr[i59] = '-';
                            i50 = -i50;
                            i59 = i58 + 2;
                        }
                        if (i50 >= 10) {
                            i19 = 48;
                            cArr[i59] = (char) ((i50 / 10) + 48);
                            i59++;
                        } else {
                            i19 = 48;
                        }
                        i18 = i59 + 1;
                        cArr[i59] = (char) ((i50 % 10) + i19);
                    } else {
                        int i60 = 48;
                        if (i50 < 0) {
                            int i61 = i17 + 1;
                            cArr[i17] = '0';
                            int i62 = i17 + 2;
                            cArr[i61] = '.';
                            int i63 = -1;
                            while (i63 > i50) {
                                cArr[i62] = '0';
                                i63--;
                                i62++;
                            }
                            i18 = i62;
                            while (i12 < i56) {
                                cArr[e.g(i62, i56, i12, 1)] = (char) ((i55 % 10) + i60);
                                i55 /= 10;
                                i18++;
                                i12++;
                                i60 = 48;
                            }
                        } else if (i49 >= i56) {
                            while (i12 < i56) {
                                cArr[e.g(i17, i56, i12, 1)] = (char) ((i55 % 10) + 48);
                                i55 /= 10;
                                i12++;
                            }
                            int i64 = i17 + i56;
                            while (i56 < i49) {
                                cArr[i64] = '0';
                                i56++;
                                i64++;
                            }
                            cArr[i64] = '.';
                            cArr[i64 + 1] = '0';
                            i18 = i64 + 2;
                        } else {
                            int i65 = i17 + 1;
                            while (i12 < i56) {
                                if ((i56 - i12) - 1 == i50) {
                                    cArr[e.g(i65, i56, i12, 1)] = '.';
                                    i65--;
                                }
                                cArr[e.g(i65, i56, i12, 1)] = (char) ((i55 % 10) + 48);
                                i55 /= 10;
                                i12++;
                            }
                            i18 = i56 + 1 + i17;
                        }
                    }
                    return i18 - i6;
                }
            }
            return i20 - i6;
        }
        cArr[i6] = 'N';
        cArr[i6 + 1] = 'a';
        i21 = i6 + 3;
        cArr[i6 + 2] = 'N';
        return i21 - i6;
    }
}
