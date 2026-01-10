package e1;

import android.content.res.AssetManager;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.util.Log;
import androidx.media3.extractor.ts.TsExtractor;
import java.io.EOFException;
import java.io.FileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.regex.Pattern;
import java.util.zip.CRC32;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {
    public static final byte[] A;
    public static final String[] B;
    public static final int[] C;
    public static final byte[] D;
    public static final d E;
    public static final d[][] F;
    public static final d[] G;
    public static final HashMap[] H;
    public static final HashMap[] I;
    public static final HashSet J;
    public static final HashMap K;
    public static final Charset L;
    public static final byte[] M;
    public static final byte[] N;

    /* renamed from: l, reason: collision with root package name */
    public static final boolean f6420l = Log.isLoggable("ExifInterface", 3);

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f6421m;

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f6422n;

    /* renamed from: o, reason: collision with root package name */
    public static final byte[] f6423o;

    /* renamed from: p, reason: collision with root package name */
    public static final byte[] f6424p;

    /* renamed from: q, reason: collision with root package name */
    public static final byte[] f6425q;

    /* renamed from: r, reason: collision with root package name */
    public static final byte[] f6426r;

    /* renamed from: s, reason: collision with root package name */
    public static final byte[] f6427s;

    /* renamed from: t, reason: collision with root package name */
    public static final byte[] f6428t;

    /* renamed from: u, reason: collision with root package name */
    public static final byte[] f6429u;

    /* renamed from: v, reason: collision with root package name */
    public static final byte[] f6430v;

    /* renamed from: w, reason: collision with root package name */
    public static final byte[] f6431w;

    /* renamed from: x, reason: collision with root package name */
    public static final byte[] f6432x;

    /* renamed from: y, reason: collision with root package name */
    public static final byte[] f6433y;

    /* renamed from: z, reason: collision with root package name */
    public static final byte[] f6434z;

    /* renamed from: a, reason: collision with root package name */
    public final FileDescriptor f6435a;

    /* renamed from: b, reason: collision with root package name */
    public final AssetManager.AssetInputStream f6436b;

    /* renamed from: c, reason: collision with root package name */
    public int f6437c;
    public final HashMap[] d;

    /* renamed from: e, reason: collision with root package name */
    public final HashSet f6438e;
    public ByteOrder f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6439g;

    /* renamed from: h, reason: collision with root package name */
    public int f6440h;

    /* renamed from: i, reason: collision with root package name */
    public int f6441i;

    /* renamed from: j, reason: collision with root package name */
    public int f6442j;

    /* renamed from: k, reason: collision with root package name */
    public int f6443k;

    static {
        Arrays.asList(1, 6, 3, 8);
        Arrays.asList(2, 7, 4, 5);
        f6421m = new int[]{8, 8, 8};
        f6422n = new int[]{8};
        f6423o = new byte[]{-1, -40, -1};
        f6424p = new byte[]{102, 116, 121, 112};
        f6425q = new byte[]{109, 105, 102, 49};
        f6426r = new byte[]{104, 101, 105, 99};
        f6427s = new byte[]{79, 76, 89, 77, 80, 0};
        f6428t = new byte[]{79, 76, 89, 77, 80, 85, 83, 0, 73, 73};
        f6429u = new byte[]{-119, 80, 78, 71, 13, 10, 26, 10};
        f6430v = new byte[]{101, 88, 73, 102};
        f6431w = new byte[]{73, 72, 68, 82};
        f6432x = new byte[]{73, 69, 78, 68};
        f6433y = new byte[]{82, 73, 70, 70};
        f6434z = new byte[]{87, 69, 66, 80};
        A = new byte[]{69, 88, 73, 70};
        "VP8X".getBytes(Charset.defaultCharset());
        "VP8L".getBytes(Charset.defaultCharset());
        "VP8 ".getBytes(Charset.defaultCharset());
        "ANIM".getBytes(Charset.defaultCharset());
        "ANMF".getBytes(Charset.defaultCharset());
        B = new String[]{"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
        C = new int[]{0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8, 1};
        D = new byte[]{65, 83, 67, 73, 73, 0, 0, 0};
        d[] dVarArr = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d(256, "ImageWidth", 3, 4), new d(TsExtractor.TS_STREAM_TYPE_AIT, "ImageLength", 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d(273, "StripOffsets", 3, 4), new d("Orientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d(278, "RowsPerStrip", 3, 4), new d(279, "StripByteCounts", 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("SensorTopBorder", 4, 4), new d("SensorLeftBorder", 5, 4), new d("SensorBottomBorder", 6, 4), new d("SensorRightBorder", 7, 4), new d("ISO", 23, 3), new d("JpgFromRaw", 46, 7), new d("Xmp", 700, 1)};
        d[] dVarArr2 = {new d("ExposureTime", 33434, 5), new d("FNumber", 33437, 5), new d("ExposureProgram", 34850, 3), new d("SpectralSensitivity", 34852, 2), new d("PhotographicSensitivity", 34855, 3), new d("OECF", 34856, 7), new d("SensitivityType", 34864, 3), new d("StandardOutputSensitivity", 34865, 4), new d("RecommendedExposureIndex", 34866, 4), new d("ISOSpeed", 34867, 4), new d("ISOSpeedLatitudeyyy", 34868, 4), new d("ISOSpeedLatitudezzz", 34869, 4), new d("ExifVersion", 36864, 2), new d("DateTimeOriginal", 36867, 2), new d("DateTimeDigitized", 36868, 2), new d("OffsetTime", 36880, 2), new d("OffsetTimeOriginal", 36881, 2), new d("OffsetTimeDigitized", 36882, 2), new d("ComponentsConfiguration", 37121, 7), new d("CompressedBitsPerPixel", 37122, 5), new d("ShutterSpeedValue", 37377, 10), new d("ApertureValue", 37378, 5), new d("BrightnessValue", 37379, 10), new d("ExposureBiasValue", 37380, 10), new d("MaxApertureValue", 37381, 5), new d("SubjectDistance", 37382, 5), new d("MeteringMode", 37383, 3), new d("LightSource", 37384, 3), new d("Flash", 37385, 3), new d("FocalLength", 37386, 5), new d("SubjectArea", 37396, 3), new d("MakerNote", 37500, 7), new d("UserComment", 37510, 7), new d("SubSecTime", 37520, 2), new d("SubSecTimeOriginal", 37521, 2), new d("SubSecTimeDigitized", 37522, 2), new d("FlashpixVersion", 40960, 7), new d("ColorSpace", 40961, 3), new d(40962, "PixelXDimension", 3, 4), new d(40963, "PixelYDimension", 3, 4), new d("RelatedSoundFile", 40964, 2), new d("InteroperabilityIFDPointer", 40965, 4), new d("FlashEnergy", 41483, 5), new d("SpatialFrequencyResponse", 41484, 7), new d("FocalPlaneXResolution", 41486, 5), new d("FocalPlaneYResolution", 41487, 5), new d("FocalPlaneResolutionUnit", 41488, 3), new d("SubjectLocation", 41492, 3), new d("ExposureIndex", 41493, 5), new d("SensingMethod", 41495, 3), new d("FileSource", 41728, 7), new d("SceneType", 41729, 7), new d("CFAPattern", 41730, 7), new d("CustomRendered", 41985, 3), new d("ExposureMode", 41986, 3), new d("WhiteBalance", 41987, 3), new d("DigitalZoomRatio", 41988, 5), new d("FocalLengthIn35mmFilm", 41989, 3), new d("SceneCaptureType", 41990, 3), new d("GainControl", 41991, 3), new d("Contrast", 41992, 3), new d("Saturation", 41993, 3), new d("Sharpness", 41994, 3), new d("DeviceSettingDescription", 41995, 7), new d("SubjectDistanceRange", 41996, 3), new d("ImageUniqueID", 42016, 2), new d("CameraOwnerName", 42032, 2), new d("BodySerialNumber", 42033, 2), new d("LensSpecification", 42034, 5), new d("LensMake", 42035, 2), new d("LensModel", 42036, 2), new d("Gamma", 42240, 5), new d("DNGVersion", 50706, 1), new d(50720, "DefaultCropSize", 3, 4)};
        d[] dVarArr3 = {new d("GPSVersionID", 0, 1), new d("GPSLatitudeRef", 1, 2), new d(2, "GPSLatitude", 5, 10), new d("GPSLongitudeRef", 3, 2), new d(4, "GPSLongitude", 5, 10), new d("GPSAltitudeRef", 5, 1), new d("GPSAltitude", 6, 5), new d("GPSTimeStamp", 7, 5), new d("GPSSatellites", 8, 2), new d("GPSStatus", 9, 2), new d("GPSMeasureMode", 10, 2), new d("GPSDOP", 11, 5), new d("GPSSpeedRef", 12, 2), new d("GPSSpeed", 13, 5), new d("GPSTrackRef", 14, 2), new d("GPSTrack", 15, 5), new d("GPSImgDirectionRef", 16, 2), new d("GPSImgDirection", 17, 5), new d("GPSMapDatum", 18, 2), new d("GPSDestLatitudeRef", 19, 2), new d("GPSDestLatitude", 20, 5), new d("GPSDestLongitudeRef", 21, 2), new d("GPSDestLongitude", 22, 5), new d("GPSDestBearingRef", 23, 2), new d("GPSDestBearing", 24, 5), new d("GPSDestDistanceRef", 25, 2), new d("GPSDestDistance", 26, 5), new d("GPSProcessingMethod", 27, 7), new d("GPSAreaInformation", 28, 7), new d("GPSDateStamp", 29, 2), new d("GPSDifferential", 30, 3), new d("GPSHPositioningError", 31, 5)};
        d[] dVarArr4 = {new d("InteroperabilityIndex", 1, 2)};
        d[] dVarArr5 = {new d("NewSubfileType", 254, 4), new d("SubfileType", 255, 4), new d(256, "ThumbnailImageWidth", 3, 4), new d(TsExtractor.TS_STREAM_TYPE_AIT, "ThumbnailImageLength", 3, 4), new d("BitsPerSample", 258, 3), new d("Compression", 259, 3), new d("PhotometricInterpretation", 262, 3), new d("ImageDescription", 270, 2), new d("Make", 271, 2), new d("Model", 272, 2), new d(273, "StripOffsets", 3, 4), new d("ThumbnailOrientation", 274, 3), new d("SamplesPerPixel", 277, 3), new d(278, "RowsPerStrip", 3, 4), new d(279, "StripByteCounts", 3, 4), new d("XResolution", 282, 5), new d("YResolution", 283, 5), new d("PlanarConfiguration", 284, 3), new d("ResolutionUnit", 296, 3), new d("TransferFunction", 301, 3), new d("Software", 305, 2), new d("DateTime", 306, 2), new d("Artist", 315, 2), new d("WhitePoint", 318, 5), new d("PrimaryChromaticities", 319, 5), new d("SubIFDPointer", 330, 4), new d("JPEGInterchangeFormat", 513, 4), new d("JPEGInterchangeFormatLength", 514, 4), new d("YCbCrCoefficients", 529, 5), new d("YCbCrSubSampling", 530, 3), new d("YCbCrPositioning", 531, 3), new d("ReferenceBlackWhite", 532, 5), new d("Copyright", 33432, 2), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("DNGVersion", 50706, 1), new d(50720, "DefaultCropSize", 3, 4)};
        E = new d("StripOffsets", 273, 3);
        F = new d[][]{dVarArr, dVarArr2, dVarArr3, dVarArr4, dVarArr5, dVarArr, new d[]{new d("ThumbnailImage", 256, 7), new d("CameraSettingsIFDPointer", 8224, 4), new d("ImageProcessingIFDPointer", 8256, 4)}, new d[]{new d("PreviewImageStart", TsExtractor.TS_STREAM_TYPE_AIT, 4), new d("PreviewImageLength", 258, 4)}, new d[]{new d("AspectFrame", 4371, 3)}, new d[]{new d("ColorSpace", 55, 3)}};
        G = new d[]{new d("SubIFDPointer", 330, 4), new d("ExifIFDPointer", 34665, 4), new d("GPSInfoIFDPointer", 34853, 4), new d("InteroperabilityIFDPointer", 40965, 4), new d("CameraSettingsIFDPointer", 8224, 1), new d("ImageProcessingIFDPointer", 8256, 1)};
        H = new HashMap[10];
        I = new HashMap[10];
        J = new HashSet(Arrays.asList("FNumber", "DigitalZoomRatio", "ExposureTime", "SubjectDistance", "GPSTimeStamp"));
        K = new HashMap();
        Charset charsetForName = Charset.forName("US-ASCII");
        L = charsetForName;
        M = "Exif\u0000\u0000".getBytes(charsetForName);
        N = "http://ns.adobe.com/xap/1.0/\u0000".getBytes(charsetForName);
        Locale locale = Locale.US;
        new SimpleDateFormat("yyyy:MM:dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", locale).setTimeZone(TimeZone.getTimeZone("UTC"));
        int i6 = 0;
        while (true) {
            d[][] dVarArr6 = F;
            if (i6 >= dVarArr6.length) {
                HashMap map = K;
                d[] dVarArr7 = G;
                map.put(Integer.valueOf(dVarArr7[0].f6415a), 5);
                map.put(Integer.valueOf(dVarArr7[1].f6415a), 1);
                map.put(Integer.valueOf(dVarArr7[2].f6415a), 2);
                map.put(Integer.valueOf(dVarArr7[3].f6415a), 3);
                map.put(Integer.valueOf(dVarArr7[4].f6415a), 7);
                map.put(Integer.valueOf(dVarArr7[5].f6415a), 8);
                Pattern.compile(".*[1-9].*");
                Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
                return;
            }
            H[i6] = new HashMap();
            I[i6] = new HashMap();
            for (d dVar : dVarArr6[i6]) {
                H[i6].put(Integer.valueOf(dVar.f6415a), dVar);
                I[i6].put(dVar.f6416b, dVar);
            }
            i6++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00d9 A[Catch: all -> 0x005f, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x005f, blocks: (B:15:0x0050, B:17:0x0053, B:24:0x0068, B:30:0x0085, B:32:0x0090, B:40:0x00a6, B:35:0x0097, B:38:0x009f, B:39:0x00a3, B:41:0x00b0, B:43:0x00b9, B:45:0x00bf, B:47:0x00c5, B:49:0x00cb, B:54:0x00d9), top: B:66:0x0050 }] */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public g(java.io.InputStream r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 239
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e1.g.<init>(java.io.InputStream):void");
    }

    public static ByteOrder r(b bVar) throws IOException {
        short s10 = bVar.readShort();
        boolean z7 = f6420l;
        if (s10 == 18761) {
            if (z7) {
                Log.d("ExifInterface", "readExifSegment: Byte Align II");
            }
            return ByteOrder.LITTLE_ENDIAN;
        }
        if (s10 == 19789) {
            if (z7) {
                Log.d("ExifInterface", "readExifSegment: Byte Align MM");
            }
            return ByteOrder.BIG_ENDIAN;
        }
        throw new IOException("Invalid byte order: " + Integer.toHexString(s10));
    }

    public final void a() {
        String strB = b("DateTimeOriginal");
        HashMap[] mapArr = this.d;
        if (strB != null && b("DateTime") == null) {
            HashMap map = mapArr[0];
            byte[] bytes = strB.concat("\u0000").getBytes(L);
            map.put("DateTime", new c(bytes, 2, bytes.length));
        }
        if (b("ImageWidth") == null) {
            mapArr[0].put("ImageWidth", c.a(0L, this.f));
        }
        if (b("ImageLength") == null) {
            mapArr[0].put("ImageLength", c.a(0L, this.f));
        }
        if (b("Orientation") == null) {
            mapArr[0].put("Orientation", c.a(0L, this.f));
        }
        if (b("LightSource") == null) {
            mapArr[1].put("LightSource", c.a(0L, this.f));
        }
    }

    public final String b(String str) {
        c cVarD = d(str);
        if (cVarD != null) {
            if (!J.contains(str)) {
                return cVarD.f(this.f);
            }
            if (str.equals("GPSTimeStamp")) {
                int i6 = cVarD.f6412a;
                if (i6 != 5 && i6 != 10) {
                    Log.w("ExifInterface", "GPS Timestamp format is not rational. format=" + i6);
                    return null;
                }
                e[] eVarArr = (e[]) cVarD.g(this.f);
                if (eVarArr == null || eVarArr.length != 3) {
                    Log.w("ExifInterface", "Invalid GPS Timestamp array. array=" + Arrays.toString(eVarArr));
                    return null;
                }
                e eVar = eVarArr[0];
                Integer numValueOf = Integer.valueOf((int) (eVar.f6418a / eVar.f6419b));
                e eVar2 = eVarArr[1];
                Integer numValueOf2 = Integer.valueOf((int) (eVar2.f6418a / eVar2.f6419b));
                e eVar3 = eVarArr[2];
                return String.format("%02d:%02d:%02d", numValueOf, numValueOf2, Integer.valueOf((int) (eVar3.f6418a / eVar3.f6419b)));
            }
            try {
                return Double.toString(cVarD.d(this.f));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public final int c() {
        c cVarD = d("Orientation");
        if (cVarD == null) {
            return 1;
        }
        try {
            return cVarD.e(this.f);
        } catch (NumberFormatException unused) {
            return 1;
        }
    }

    public final c d(String str) {
        if ("ISOSpeedRatings".equals(str)) {
            if (f6420l) {
                Log.d("ExifInterface", "getExifAttribute: Replacing TAG_ISO_SPEED_RATINGS with TAG_PHOTOGRAPHIC_SENSITIVITY.");
            }
            str = "PhotographicSensitivity";
        }
        for (int i6 = 0; i6 < F.length; i6++) {
            c cVar = (c) this.d[i6].get(str);
            if (cVar != null) {
                return cVar;
            }
        }
        return null;
    }

    public final void e(f fVar) throws IOException {
        String strExtractMetadata;
        String strExtractMetadata2;
        String strExtractMetadata3;
        if (Build.VERSION.SDK_INT < 28) {
            throw new UnsupportedOperationException("Reading EXIF from HEIF files is supported from SDK 28 and above");
        }
        MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
        try {
            try {
                i.a(mediaMetadataRetriever, new a(fVar));
                String strExtractMetadata4 = mediaMetadataRetriever.extractMetadata(33);
                String strExtractMetadata5 = mediaMetadataRetriever.extractMetadata(34);
                String strExtractMetadata6 = mediaMetadataRetriever.extractMetadata(26);
                String strExtractMetadata7 = mediaMetadataRetriever.extractMetadata(17);
                if ("yes".equals(strExtractMetadata6)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(29);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(30);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(31);
                } else if ("yes".equals(strExtractMetadata7)) {
                    strExtractMetadata = mediaMetadataRetriever.extractMetadata(18);
                    strExtractMetadata2 = mediaMetadataRetriever.extractMetadata(19);
                    strExtractMetadata3 = mediaMetadataRetriever.extractMetadata(24);
                } else {
                    strExtractMetadata = null;
                    strExtractMetadata2 = null;
                    strExtractMetadata3 = null;
                }
                HashMap[] mapArr = this.d;
                if (strExtractMetadata != null) {
                    mapArr[0].put("ImageWidth", c.c(Integer.parseInt(strExtractMetadata), this.f));
                }
                if (strExtractMetadata2 != null) {
                    mapArr[0].put("ImageLength", c.c(Integer.parseInt(strExtractMetadata2), this.f));
                }
                if (strExtractMetadata3 != null) {
                    int i6 = Integer.parseInt(strExtractMetadata3);
                    mapArr[0].put("Orientation", c.c(i6 != 90 ? i6 != 180 ? i6 != 270 ? 1 : 8 : 3 : 6, this.f));
                }
                if (strExtractMetadata4 != null && strExtractMetadata5 != null) {
                    int i10 = Integer.parseInt(strExtractMetadata4);
                    int i11 = Integer.parseInt(strExtractMetadata5);
                    if (i11 <= 6) {
                        throw new IOException("Invalid exif length");
                    }
                    fVar.b(i10);
                    byte[] bArr = new byte[6];
                    fVar.readFully(bArr);
                    int i12 = i10 + 6;
                    int i13 = i11 - 6;
                    if (!Arrays.equals(bArr, M)) {
                        throw new IOException("Invalid identifier");
                    }
                    byte[] bArr2 = new byte[i13];
                    fVar.readFully(bArr2);
                    this.f6440h = i12;
                    s(bArr2, 0);
                }
                if (f6420l) {
                    Log.d("ExifInterface", "Heif meta: " + strExtractMetadata + "x" + strExtractMetadata2 + ", rotation " + strExtractMetadata3);
                }
                mediaMetadataRetriever.release();
            } catch (RuntimeException unused) {
                throw new UnsupportedOperationException("Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported.");
            }
        } catch (Throwable th) {
            mediaMetadataRetriever.release();
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:83:0x0197, code lost:
    
        r23.f6410c = r22.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x019b, code lost:
    
        return;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x009e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x00a1. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:31:0x00a4. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ac A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0183 A[LOOP:0: B:10:0x0034->B:78:0x0183, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x018b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x013e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f(e1.b r23, int r24, int r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 528
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e1.g.f(e1.b, int, int):void");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:(2:151|12)|(3:149|13|(6:16|(2:18|(1:20))(1:25)|26|(1:28)|29|(1:31)(3:32|(7:147|36|37|(3:40|(1:42)(2:43|(1:45))|(1:173)(3:171|48|49))(1:174)|50|33|34)|170)))|15|153|60|159|61|62|(1:68)(1:67)|69|(1:83)(8:155|85|157|86|87|(1:89)(1:90)|91|(1:105)(3:107|(2:108|(2:110|(2:165|112)(1:113))(2:164|114))|(1:116)(4:118|(2:119|(2:121|(1:167)(1:124))(3:166|125|(2:126|(2:128|(1:168)(1:131))(2:169|132))))|123|(1:134)(1:136))))) */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00df, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00e0, code lost:
    
        r6 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00e4, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e5, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00e7, code lost:
    
        r2 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00ea, code lost:
    
        if (r6 != null) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00ec, code lost:
    
        r6.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00ef, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00f0, code lost:
    
        if (r2 != null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00f2, code lost:
    
        r2.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00f5, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0130 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00f8 A[RETURN] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int g(java.io.BufferedInputStream r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 391
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e1.g.g(java.io.BufferedInputStream):int");
    }

    public final void h(f fVar) throws Throwable {
        int i6;
        int i10;
        k(fVar);
        HashMap[] mapArr = this.d;
        c cVar = (c) mapArr[1].get("MakerNote");
        if (cVar != null) {
            f fVar2 = new f(cVar.d);
            fVar2.f6410c = this.f;
            byte[] bArr = f6427s;
            byte[] bArr2 = new byte[bArr.length];
            fVar2.readFully(bArr2);
            fVar2.b(0L);
            byte[] bArr3 = f6428t;
            byte[] bArr4 = new byte[bArr3.length];
            fVar2.readFully(bArr4);
            if (Arrays.equals(bArr2, bArr)) {
                fVar2.b(8L);
            } else if (Arrays.equals(bArr4, bArr3)) {
                fVar2.b(12L);
            }
            t(fVar2, 6);
            c cVar2 = (c) mapArr[7].get("PreviewImageStart");
            c cVar3 = (c) mapArr[7].get("PreviewImageLength");
            if (cVar2 != null && cVar3 != null) {
                mapArr[5].put("JPEGInterchangeFormat", cVar2);
                mapArr[5].put("JPEGInterchangeFormatLength", cVar3);
            }
            c cVar4 = (c) mapArr[8].get("AspectFrame");
            if (cVar4 != null) {
                int[] iArr = (int[]) cVar4.g(this.f);
                if (iArr == null || iArr.length != 4) {
                    Log.w("ExifInterface", "Invalid aspect frame values. frame=" + Arrays.toString(iArr));
                    return;
                }
                int i11 = iArr[2];
                int i12 = iArr[0];
                if (i11 <= i12 || (i6 = iArr[3]) <= (i10 = iArr[1])) {
                    return;
                }
                int i13 = (i11 - i12) + 1;
                int i14 = (i6 - i10) + 1;
                if (i13 < i14) {
                    int i15 = i13 + i14;
                    i14 = i15 - i14;
                    i13 = i15 - i14;
                }
                c cVarC = c.c(i13, this.f);
                c cVarC2 = c.c(i14, this.f);
                mapArr[0].put("ImageWidth", cVarC);
                mapArr[0].put("ImageLength", cVarC2);
            }
        }
    }

    public final void i(b bVar) throws Throwable {
        if (f6420l) {
            Log.d("ExifInterface", "getPngAttributes starting with: " + bVar);
        }
        bVar.f6410c = ByteOrder.BIG_ENDIAN;
        byte[] bArr = f6429u;
        bVar.a(bArr.length);
        int length = bArr.length;
        while (true) {
            try {
                int i6 = bVar.readInt();
                byte[] bArr2 = new byte[4];
                bVar.readFully(bArr2);
                int i10 = length + 8;
                if (i10 == 16 && !Arrays.equals(bArr2, f6431w)) {
                    throw new IOException("Encountered invalid PNG file--IHDR chunk should appearas the first chunk");
                }
                if (Arrays.equals(bArr2, f6432x)) {
                    return;
                }
                if (Arrays.equals(bArr2, f6430v)) {
                    byte[] bArr3 = new byte[i6];
                    bVar.readFully(bArr3);
                    int i11 = bVar.readInt();
                    CRC32 crc32 = new CRC32();
                    crc32.update(bArr2);
                    crc32.update(bArr3);
                    if (((int) crc32.getValue()) == i11) {
                        this.f6440h = i10;
                        s(bArr3, 0);
                        y();
                        v(new b(bArr3));
                        return;
                    }
                    throw new IOException("Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: " + i11 + ", calculated CRC value: " + crc32.getValue());
                }
                int i12 = i6 + 4;
                bVar.a(i12);
                length = i10 + i12;
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt PNG file.");
            }
        }
    }

    public final void j(b bVar) throws Throwable {
        boolean z7 = f6420l;
        if (z7) {
            Log.d("ExifInterface", "getRafAttributes starting with: " + bVar);
        }
        bVar.a(84);
        byte[] bArr = new byte[4];
        byte[] bArr2 = new byte[4];
        byte[] bArr3 = new byte[4];
        bVar.readFully(bArr);
        bVar.readFully(bArr2);
        bVar.readFully(bArr3);
        int i6 = ByteBuffer.wrap(bArr).getInt();
        int i10 = ByteBuffer.wrap(bArr2).getInt();
        int i11 = ByteBuffer.wrap(bArr3).getInt();
        byte[] bArr4 = new byte[i10];
        bVar.a(i6 - bVar.f6409b);
        bVar.readFully(bArr4);
        f(new b(bArr4), i6, 5);
        bVar.a(i11 - bVar.f6409b);
        bVar.f6410c = ByteOrder.BIG_ENDIAN;
        int i12 = bVar.readInt();
        if (z7) {
            Log.d("ExifInterface", "numberOfDirectoryEntry: " + i12);
        }
        for (int i13 = 0; i13 < i12; i13++) {
            int unsignedShort = bVar.readUnsignedShort();
            int unsignedShort2 = bVar.readUnsignedShort();
            if (unsignedShort == E.f6415a) {
                short s10 = bVar.readShort();
                short s11 = bVar.readShort();
                c cVarC = c.c(s10, this.f);
                c cVarC2 = c.c(s11, this.f);
                HashMap[] mapArr = this.d;
                mapArr[0].put("ImageLength", cVarC);
                mapArr[0].put("ImageWidth", cVarC2);
                if (z7) {
                    Log.d("ExifInterface", "Updated to length: " + ((int) s10) + ", width: " + ((int) s11));
                    return;
                }
                return;
            }
            bVar.a(unsignedShort2);
        }
    }

    public final void k(f fVar) throws Throwable {
        p(fVar);
        t(fVar, 0);
        x(fVar, 0);
        x(fVar, 5);
        x(fVar, 4);
        y();
        if (this.f6437c == 8) {
            HashMap[] mapArr = this.d;
            c cVar = (c) mapArr[1].get("MakerNote");
            if (cVar != null) {
                f fVar2 = new f(cVar.d);
                fVar2.f6410c = this.f;
                fVar2.a(6);
                t(fVar2, 9);
                c cVar2 = (c) mapArr[9].get("ColorSpace");
                if (cVar2 != null) {
                    mapArr[1].put("ColorSpace", cVar2);
                }
            }
        }
    }

    public final void l(f fVar) throws Throwable {
        if (f6420l) {
            Log.d("ExifInterface", "getRw2Attributes starting with: " + fVar);
        }
        k(fVar);
        HashMap[] mapArr = this.d;
        c cVar = (c) mapArr[0].get("JpgFromRaw");
        if (cVar != null) {
            f(new b(cVar.d), (int) cVar.f6414c, 5);
        }
        c cVar2 = (c) mapArr[0].get("ISO");
        c cVar3 = (c) mapArr[1].get("PhotographicSensitivity");
        if (cVar2 == null || cVar3 != null) {
            return;
        }
        mapArr[1].put("PhotographicSensitivity", cVar2);
    }

    public final void m(b bVar) throws Throwable {
        if (f6420l) {
            Log.d("ExifInterface", "getWebpAttributes starting with: " + bVar);
        }
        bVar.f6410c = ByteOrder.LITTLE_ENDIAN;
        bVar.a(f6433y.length);
        int i6 = bVar.readInt() + 8;
        byte[] bArr = f6434z;
        bVar.a(bArr.length);
        int length = bArr.length + 8;
        while (true) {
            try {
                byte[] bArr2 = new byte[4];
                bVar.readFully(bArr2);
                int i10 = bVar.readInt();
                int i11 = length + 8;
                if (Arrays.equals(A, bArr2)) {
                    byte[] bArr3 = new byte[i10];
                    bVar.readFully(bArr3);
                    this.f6440h = i11;
                    s(bArr3, 0);
                    v(new b(bArr3));
                    return;
                }
                if (i10 % 2 == 1) {
                    i10++;
                }
                length = i11 + i10;
                if (length == i6) {
                    return;
                }
                if (length > i6) {
                    throw new IOException("Encountered WebP file with invalid chunk size");
                }
                bVar.a(i10);
            } catch (EOFException unused) {
                throw new IOException("Encountered corrupt WebP file.");
            }
        }
    }

    public final void n(b bVar, HashMap map) throws Throwable {
        c cVar = (c) map.get("JPEGInterchangeFormat");
        c cVar2 = (c) map.get("JPEGInterchangeFormatLength");
        if (cVar == null || cVar2 == null) {
            return;
        }
        int iE = cVar.e(this.f);
        int iE2 = cVar2.e(this.f);
        if (this.f6437c == 7) {
            iE += this.f6441i;
        }
        if (iE > 0 && iE2 > 0 && this.f6436b == null && this.f6435a == null) {
            bVar.a(iE);
            bVar.readFully(new byte[iE2]);
        }
        if (f6420l) {
            Log.d("ExifInterface", "Setting thumbnail attributes with offset: " + iE + ", length: " + iE2);
        }
    }

    public final boolean o(HashMap map) {
        c cVar = (c) map.get("ImageLength");
        c cVar2 = (c) map.get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            return false;
        }
        return cVar.e(this.f) <= 512 && cVar2.e(this.f) <= 512;
    }

    public final void p(f fVar) throws IOException {
        ByteOrder byteOrderR = r(fVar);
        this.f = byteOrderR;
        fVar.f6410c = byteOrderR;
        int unsignedShort = fVar.readUnsignedShort();
        int i6 = this.f6437c;
        if (i6 != 7 && i6 != 10 && unsignedShort != 42) {
            throw new IOException("Invalid start code: " + Integer.toHexString(unsignedShort));
        }
        int i10 = fVar.readInt();
        if (i10 < 8) {
            throw new IOException(a.e.n(i10, "Invalid first Ifd offset: "));
        }
        int i11 = i10 - 8;
        if (i11 > 0) {
            fVar.a(i11);
        }
    }

    public final void q() {
        int i6 = 0;
        while (true) {
            HashMap[] mapArr = this.d;
            if (i6 >= mapArr.length) {
                return;
            }
            StringBuilder sbU = a.e.u(i6, "The size of tag group[", "]: ");
            sbU.append(mapArr[i6].size());
            Log.d("ExifInterface", sbU.toString());
            for (Map.Entry entry : mapArr[i6].entrySet()) {
                c cVar = (c) entry.getValue();
                Log.d("ExifInterface", "tagName: " + ((String) entry.getKey()) + ", tagType: " + cVar.toString() + ", tagValue: '" + cVar.f(this.f) + "'");
            }
            i6++;
        }
    }

    public final void s(byte[] bArr, int i6) throws IOException {
        f fVar = new f(bArr);
        p(fVar);
        t(fVar, i6);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x02a6  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x015a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void t(e1.f r29, int r30) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 956
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e1.g.t(e1.f, int):void");
    }

    public final void u(int i6, String str, String str2) {
        HashMap[] mapArr = this.d;
        if (mapArr[i6].isEmpty() || mapArr[i6].get(str) == null) {
            return;
        }
        HashMap map = mapArr[i6];
        map.put(str2, map.get(str));
        mapArr[i6].remove(str);
    }

    public final void v(b bVar) throws Throwable {
        c cVar;
        int iE;
        HashMap map = this.d[4];
        c cVar2 = (c) map.get("Compression");
        if (cVar2 == null) {
            n(bVar, map);
            return;
        }
        int iE2 = cVar2.e(this.f);
        if (iE2 != 1) {
            if (iE2 == 6) {
                n(bVar, map);
                return;
            } else if (iE2 != 7) {
                return;
            }
        }
        c cVar3 = (c) map.get("BitsPerSample");
        if (cVar3 != null) {
            int[] iArr = (int[]) cVar3.g(this.f);
            int[] iArr2 = f6421m;
            if (Arrays.equals(iArr2, iArr) || (this.f6437c == 3 && (cVar = (c) map.get("PhotometricInterpretation")) != null && (((iE = cVar.e(this.f)) == 1 && Arrays.equals(iArr, f6422n)) || (iE == 6 && Arrays.equals(iArr, iArr2))))) {
                c cVar4 = (c) map.get("StripOffsets");
                c cVar5 = (c) map.get("StripByteCounts");
                if (cVar4 == null || cVar5 == null) {
                    return;
                }
                long[] jArrJ = r4.b.j(cVar4.g(this.f));
                long[] jArrJ2 = r4.b.j(cVar5.g(this.f));
                if (jArrJ == null || jArrJ.length == 0) {
                    Log.w("ExifInterface", "stripOffsets should not be null or have zero length.");
                    return;
                }
                if (jArrJ2 == null || jArrJ2.length == 0) {
                    Log.w("ExifInterface", "stripByteCounts should not be null or have zero length.");
                    return;
                }
                if (jArrJ.length != jArrJ2.length) {
                    Log.w("ExifInterface", "stripOffsets and stripByteCounts should have same length.");
                    return;
                }
                long j10 = 0;
                for (long j11 : jArrJ2) {
                    j10 += j11;
                }
                byte[] bArr = new byte[(int) j10];
                this.f6439g = true;
                int i6 = 0;
                int i10 = 0;
                for (int i11 = 0; i11 < jArrJ.length; i11++) {
                    int i12 = (int) jArrJ[i11];
                    int i13 = (int) jArrJ2[i11];
                    if (i11 < jArrJ.length - 1 && i12 + i13 != jArrJ[i11 + 1]) {
                        this.f6439g = false;
                    }
                    int i14 = i12 - i6;
                    if (i14 < 0) {
                        Log.d("ExifInterface", "Invalid strip offset value");
                        return;
                    }
                    try {
                        bVar.a(i14);
                        int i15 = i6 + i14;
                        byte[] bArr2 = new byte[i13];
                        try {
                            bVar.readFully(bArr2);
                            i6 = i15 + i13;
                            System.arraycopy(bArr2, 0, bArr, i10, i13);
                            i10 += i13;
                        } catch (EOFException unused) {
                            Log.d("ExifInterface", "Failed to read " + i13 + " bytes.");
                            return;
                        }
                    } catch (EOFException unused2) {
                        Log.d("ExifInterface", "Failed to skip " + i14 + " bytes.");
                        return;
                    }
                }
                if (this.f6439g) {
                    long j12 = jArrJ[0];
                    return;
                }
                return;
            }
        }
        if (f6420l) {
            Log.d("ExifInterface", "Unsupported data type value");
        }
    }

    public final void w(int i6, int i10) throws Throwable {
        HashMap[] mapArr = this.d;
        boolean zIsEmpty = mapArr[i6].isEmpty();
        boolean z7 = f6420l;
        if (zIsEmpty || mapArr[i10].isEmpty()) {
            if (z7) {
                Log.d("ExifInterface", "Cannot perform swap since only one image data exists");
                return;
            }
            return;
        }
        c cVar = (c) mapArr[i6].get("ImageLength");
        c cVar2 = (c) mapArr[i6].get("ImageWidth");
        c cVar3 = (c) mapArr[i10].get("ImageLength");
        c cVar4 = (c) mapArr[i10].get("ImageWidth");
        if (cVar == null || cVar2 == null) {
            if (z7) {
                Log.d("ExifInterface", "First image does not contain valid size information");
                return;
            }
            return;
        }
        if (cVar3 == null || cVar4 == null) {
            if (z7) {
                Log.d("ExifInterface", "Second image does not contain valid size information");
                return;
            }
            return;
        }
        int iE = cVar.e(this.f);
        int iE2 = cVar2.e(this.f);
        int iE3 = cVar3.e(this.f);
        int iE4 = cVar4.e(this.f);
        if (iE >= iE3 || iE2 >= iE4) {
            return;
        }
        HashMap map = mapArr[i6];
        mapArr[i6] = mapArr[i10];
        mapArr[i10] = map;
    }

    public final void x(f fVar, int i6) throws Throwable {
        c cVarC;
        c cVarC2;
        HashMap[] mapArr = this.d;
        c cVar = (c) mapArr[i6].get("DefaultCropSize");
        c cVar2 = (c) mapArr[i6].get("SensorTopBorder");
        c cVar3 = (c) mapArr[i6].get("SensorLeftBorder");
        c cVar4 = (c) mapArr[i6].get("SensorBottomBorder");
        c cVar5 = (c) mapArr[i6].get("SensorRightBorder");
        if (cVar != null) {
            if (cVar.f6412a == 5) {
                e[] eVarArr = (e[]) cVar.g(this.f);
                if (eVarArr == null || eVarArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(eVarArr));
                    return;
                }
                cVarC = c.b(eVarArr[0], this.f);
                cVarC2 = c.b(eVarArr[1], this.f);
            } else {
                int[] iArr = (int[]) cVar.g(this.f);
                if (iArr == null || iArr.length != 2) {
                    Log.w("ExifInterface", "Invalid crop size values. cropSize=" + Arrays.toString(iArr));
                    return;
                }
                cVarC = c.c(iArr[0], this.f);
                cVarC2 = c.c(iArr[1], this.f);
            }
            mapArr[i6].put("ImageWidth", cVarC);
            mapArr[i6].put("ImageLength", cVarC2);
            return;
        }
        if (cVar2 != null && cVar3 != null && cVar4 != null && cVar5 != null) {
            int iE = cVar2.e(this.f);
            int iE2 = cVar4.e(this.f);
            int iE3 = cVar5.e(this.f);
            int iE4 = cVar3.e(this.f);
            if (iE2 <= iE || iE3 <= iE4) {
                return;
            }
            c cVarC3 = c.c(iE2 - iE, this.f);
            c cVarC4 = c.c(iE3 - iE4, this.f);
            mapArr[i6].put("ImageLength", cVarC3);
            mapArr[i6].put("ImageWidth", cVarC4);
            return;
        }
        c cVar6 = (c) mapArr[i6].get("ImageLength");
        c cVar7 = (c) mapArr[i6].get("ImageWidth");
        if (cVar6 == null || cVar7 == null) {
            c cVar8 = (c) mapArr[i6].get("JPEGInterchangeFormat");
            c cVar9 = (c) mapArr[i6].get("JPEGInterchangeFormatLength");
            if (cVar8 == null || cVar9 == null) {
                return;
            }
            int iE5 = cVar8.e(this.f);
            int iE6 = cVar8.e(this.f);
            fVar.b(iE5);
            byte[] bArr = new byte[iE6];
            fVar.readFully(bArr);
            f(new b(bArr), iE5, i6);
        }
    }

    public final void y() throws Throwable {
        w(0, 5);
        w(0, 4);
        w(5, 4);
        HashMap[] mapArr = this.d;
        c cVar = (c) mapArr[1].get("PixelXDimension");
        c cVar2 = (c) mapArr[1].get("PixelYDimension");
        if (cVar != null && cVar2 != null) {
            mapArr[0].put("ImageWidth", cVar);
            mapArr[0].put("ImageLength", cVar2);
        }
        if (mapArr[4].isEmpty() && o(mapArr[5])) {
            mapArr[4] = mapArr[5];
            mapArr[5] = new HashMap();
        }
        if (!o(mapArr[4])) {
            Log.d("ExifInterface", "No image meets the size requirements of a thumbnail image.");
        }
        u(0, "ThumbnailOrientation", "Orientation");
        u(0, "ThumbnailImageLength", "ImageLength");
        u(0, "ThumbnailImageWidth", "ImageWidth");
        u(5, "ThumbnailOrientation", "Orientation");
        u(5, "ThumbnailImageLength", "ImageLength");
        u(5, "ThumbnailImageWidth", "ImageWidth");
        u(4, "Orientation", "ThumbnailOrientation");
        u(4, "ImageLength", "ThumbnailImageLength");
        u(4, "ImageWidth", "ThumbnailImageWidth");
    }
}
