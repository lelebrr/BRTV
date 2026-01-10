package e3;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m implements v2.d {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f6510a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f6511b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public static int e(l lVar, y2.f fVar) {
        try {
            int iH = lVar.h();
            if (!((iH & 65496) == 65496 || iH == 19789 || iH == 18761)) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + iH);
                }
                return -1;
            }
            int iG = g(lVar);
            if (iG == -1) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                }
                return -1;
            }
            byte[] bArr = (byte[]) fVar.d(iG, byte[].class);
            try {
                return h(lVar, bArr, iG);
            } finally {
                fVar.h(bArr);
            }
        } catch (k unused) {
            return -1;
        }
    }

    public static ImageHeaderParser$ImageType f(l lVar) {
        try {
            int iH = lVar.h();
            if (iH == 65496) {
                return ImageHeaderParser$ImageType.JPEG;
            }
            int iD = (iH << 8) | lVar.d();
            if (iD == 4671814) {
                return ImageHeaderParser$ImageType.GIF;
            }
            int iD2 = (iD << 8) | lVar.d();
            if (iD2 == -1991225785) {
                lVar.skip(21L);
                try {
                    return lVar.d() >= 3 ? ImageHeaderParser$ImageType.PNG_A : ImageHeaderParser$ImageType.PNG;
                } catch (k unused) {
                    return ImageHeaderParser$ImageType.PNG;
                }
            }
            if (iD2 == 1380533830) {
                lVar.skip(4L);
                if (((lVar.h() << 16) | lVar.h()) != 1464156752) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int iH2 = (lVar.h() << 16) | lVar.h();
                if ((iH2 & (-256)) != 1448097792) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int i6 = iH2 & 255;
                if (i6 == 88) {
                    lVar.skip(4L);
                    short sD = lVar.d();
                    return (sD & 2) != 0 ? ImageHeaderParser$ImageType.ANIMATED_WEBP : (sD & 16) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
                }
                if (i6 != 76) {
                    return ImageHeaderParser$ImageType.WEBP;
                }
                lVar.skip(4L);
                return (lVar.d() & 8) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
            }
            if (((lVar.h() << 16) | lVar.h()) != 1718909296) {
                return ImageHeaderParser$ImageType.UNKNOWN;
            }
            int iH3 = (lVar.h() << 16) | lVar.h();
            if (iH3 == 1635150195) {
                return ImageHeaderParser$ImageType.ANIMATED_AVIF;
            }
            int i10 = 0;
            boolean z7 = iH3 == 1635150182;
            lVar.skip(4L);
            int i11 = iD2 - 16;
            if (i11 % 4 == 0) {
                while (i10 < 5 && i11 > 0) {
                    int iH4 = (lVar.h() << 16) | lVar.h();
                    if (iH4 == 1635150195) {
                        return ImageHeaderParser$ImageType.ANIMATED_AVIF;
                    }
                    if (iH4 == 1635150182) {
                        z7 = true;
                    }
                    i10++;
                    i11 -= 4;
                }
            }
            return z7 ? ImageHeaderParser$ImageType.AVIF : ImageHeaderParser$ImageType.UNKNOWN;
        } catch (k unused2) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    public static int g(l lVar) {
        short sD;
        int iH;
        long j10;
        long jSkip;
        do {
            short sD2 = lVar.d();
            if (sD2 != 255) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Unknown segmentId=" + ((int) sD2));
                }
                return -1;
            }
            sD = lVar.d();
            if (sD == 218) {
                return -1;
            }
            if (sD == 217) {
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                }
                return -1;
            }
            iH = lVar.h() - 2;
            if (sD == 225) {
                return iH;
            }
            j10 = iH;
            jSkip = lVar.skip(j10);
        } while (jSkip == j10);
        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            StringBuilder sbV = a.e.v("Unable to skip enough data, type: ", sD, ", wanted to skip: ", iH, ", but actually skipped: ");
            sbV.append(jSkip);
            Log.d("DfltImageHeaderParser", sbV.toString());
        }
        return -1;
    }

    public static int h(l lVar, byte[] bArr, int i6) {
        ByteOrder byteOrder;
        int iC = lVar.c(bArr, i6);
        if (iC != i6) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i6 + ", actually read: " + iC);
            }
            return -1;
        }
        short s10 = 1;
        int i10 = 0;
        byte[] bArr2 = f6510a;
        boolean z7 = bArr != null && i6 > bArr2.length;
        if (z7) {
            int i11 = 0;
            while (true) {
                if (i11 >= bArr2.length) {
                    break;
                }
                if (bArr[i11] != bArr2[i11]) {
                    z7 = false;
                    break;
                }
                i11++;
            }
        }
        if (!z7) {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
            }
            return -1;
        }
        j jVar = new j(bArr, i6);
        short sF = jVar.f(6);
        if (sF != 18761) {
            if (sF != 19789 && Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) sF));
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        ByteBuffer byteBuffer = jVar.f6509b;
        byteBuffer.order(byteOrder);
        int i12 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
        short sF2 = jVar.f(i12 + 6);
        while (i10 < sF2) {
            int i13 = (i10 * 12) + i12 + 8;
            short sF3 = jVar.f(i13);
            if (sF3 == 274) {
                short sF4 = jVar.f(i13 + 2);
                if (sF4 >= s10 && sF4 <= 12) {
                    int i14 = i13 + 4;
                    int i15 = byteBuffer.remaining() - i14 >= 4 ? byteBuffer.getInt(i14) : -1;
                    if (i15 >= 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            StringBuilder sbV = a.e.v("Got tagIndex=", i10, " tagType=", sF3, " formatCode=");
                            sbV.append((int) sF4);
                            sbV.append(" componentCount=");
                            sbV.append(i15);
                            Log.d("DfltImageHeaderParser", sbV.toString());
                        }
                        int i16 = i15 + f6511b[sF4];
                        if (i16 <= 4) {
                            int i17 = i13 + 8;
                            if (i17 < 0 || i17 > byteBuffer.remaining()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i17 + " tagType=" + ((int) sF3));
                                }
                            } else {
                                if (i16 >= 0 && i16 + i17 <= byteBuffer.remaining()) {
                                    return jVar.f(i17);
                                }
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) sF3));
                                }
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) sF4));
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Negative tiff component count");
                    }
                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) sF4));
                }
            }
            i10++;
            s10 = 1;
        }
        return -1;
    }

    @Override // v2.d
    public final ImageHeaderParser$ImageType a(ByteBuffer byteBuffer) {
        r3.f.c(byteBuffer, "Argument must not be null");
        return f(new j(byteBuffer, 0));
    }

    @Override // v2.d
    public final int b(InputStream inputStream, y2.f fVar) {
        a0.b bVar = new a0.b(27, inputStream);
        r3.f.c(fVar, "Argument must not be null");
        return e(bVar, fVar);
    }

    @Override // v2.d
    public final int c(ByteBuffer byteBuffer, y2.f fVar) {
        j jVar = new j(byteBuffer, 0);
        r3.f.c(fVar, "Argument must not be null");
        return e(jVar, fVar);
    }

    @Override // v2.d
    public final ImageHeaderParser$ImageType d(InputStream inputStream) {
        return f(new a0.b(27, inputStream));
    }
}
