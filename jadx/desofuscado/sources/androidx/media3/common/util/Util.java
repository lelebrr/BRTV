package androidx.media3.common.util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Notification;
import android.app.Service;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.media.AudioFormat;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import android.util.SparseLongArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.media3.common.C;
import androidx.media3.common.Format;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.Player;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.metadata.dvbsi.AppInfoTableDecoder;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import com.alibaba.fastjson.asm.Opcodes;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import com.google.common.util.concurrent.SettableFuture;
import d7.u1;
import ea.q;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Formatter;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.GZIPOutputStream;
import java.util.zip.Inflater;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Util {
    private static final int[] CRC16_BYTES_MSBF;
    private static final int[] CRC32_BYTES_MSBF;
    private static final int[] CRC8_BYTES_MSBF;

    @UnstableApi
    @Deprecated
    public static final String DEVICE;

    @UnstableApi
    public static final String DEVICE_DEBUG_INFO;

    @UnstableApi
    public static final byte[] EMPTY_BYTE_ARRAY;

    @UnstableApi
    public static final long[] EMPTY_LONG_ARRAY;
    private static final Pattern ESCAPED_CHARACTER_PATTERN;
    private static final String ISM_DASH_FORMAT_EXTENSION = "format=mpd-time-csf";
    private static final String ISM_HLS_FORMAT_EXTENSION = "format=m3u8-aapl";
    private static final Pattern ISM_PATH_PATTERN;

    @UnstableApi
    @Deprecated
    public static final String MANUFACTURER;

    @UnstableApi
    @Deprecated
    public static final String MODEL;

    @UnstableApi
    public static final int SDK_INT;
    private static final String TAG = "Util";
    private static final Pattern XS_DATE_TIME_PATTERN;
    private static final Pattern XS_DURATION_PATTERN;
    private static final int ZLIB_INFLATE_HEADER = 120;
    private static final String[] additionalIsoLanguageReplacements;
    private static final String[] isoLegacyTagReplacements;
    private static HashMap<String, String> languageTagReplacementMap;

    /* compiled from: MyApplication */
    public static class Api29 {
        private Api29() {
        }

        public static void startForeground(Service service, int i6, Notification notification, int i10, String str) {
            try {
                service.startForeground(i6, notification, i10);
            } catch (RuntimeException e5) {
                Log.e(Util.TAG, "The service must be declared with a foregroundServiceType that includes " + str);
                throw e5;
            }
        }
    }

    static {
        int i6 = Build.VERSION.SDK_INT;
        SDK_INT = i6;
        String str = Build.DEVICE;
        DEVICE = str;
        String str2 = Build.MANUFACTURER;
        MANUFACTURER = str2;
        String str3 = Build.MODEL;
        MODEL = str3;
        DEVICE_DEBUG_INFO = str + ", " + str3 + ", " + str2 + ", " + i6;
        EMPTY_BYTE_ARRAY = new byte[0];
        EMPTY_LONG_ARRAY = new long[0];
        XS_DATE_TIME_PATTERN = Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)))?");
        XS_DURATION_PATTERN = Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        ESCAPED_CHARACTER_PATTERN = Pattern.compile("%([A-Fa-f0-9]{2})");
        ISM_PATH_PATTERN = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        additionalIsoLanguageReplacements = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", TtmlNode.ATTR_ID, "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", CmcdConfiguration.KEY_BUFFER_STARVATION, "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        isoLegacyTagReplacements = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        CRC32_BYTES_MSBF = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        CRC16_BYTES_MSBF = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        CRC8_BYTES_MSBF = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, Opcodes.DCMPL, Opcodes.IFLE, Opcodes.IFEQ, 140, TsExtractor.TS_STREAM_TYPE_DTS_UHD, TsExtractor.TS_STREAM_TYPE_HDMV_DTS, 133, 168, 175, Opcodes.IF_ACMPNE, Opcodes.IF_ICMPLT, Opcodes.GETFIELD, 179, 186, PsExtractor.PRIVATE_STREAM_1, Opcodes.IFNONNULL, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, Opcodes.INVOKESPECIAL, Opcodes.ARETURN, Opcodes.INVOKEINTERFACE, 190, 171, TsExtractor.TS_STREAM_TYPE_AC4, Opcodes.IF_ACMPEQ, Opcodes.IF_ICMPGE, 143, TsExtractor.TS_STREAM_TYPE_DTS_HD, TsExtractor.TS_STREAM_TYPE_AC3, TsExtractor.TS_STREAM_TYPE_SPLICE_INFO, 147, Opcodes.LCMP, 157, Opcodes.IFNE, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, AppInfoTableDecoder.APPLICATION_INFORMATION_TABLE_ID, 125, 122, 137, 142, TsExtractor.TS_STREAM_TYPE_E_AC3, 128, Opcodes.FCMPL, 146, 155, 156, Opcodes.RETURN, Opcodes.INVOKEVIRTUAL, 191, Opcodes.INVOKESTATIC, 173, 170, Opcodes.IF_ICMPGT, 164, 249, 254, 247, PsExtractor.VIDEO_STREAM_MASK, 229, 226, 235, 236, Opcodes.INSTANCEOF, Opcodes.IFNULL, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, ZLIB_INFLATE_HEADER, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, Opcodes.RET, Opcodes.IF_ICMPNE, Opcodes.GOTO, Opcodes.GETSTATIC, Opcodes.PUTFIELD, 188, Opcodes.NEW, 150, 145, 152, Opcodes.IF_ICMPEQ, TsExtractor.TS_STREAM_TYPE_DTS, 141, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    private Util() {
    }

    @UnstableApi
    public static long addWithOverflowDefault(long j10, long j11, long j12) {
        long j13 = j10 + j11;
        return ((j10 ^ j13) & (j11 ^ j13)) < 0 ? j12 : j13;
    }

    @UnstableApi
    @Deprecated
    public static boolean areEqual(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    @UnstableApi
    public static int binarySearchCeil(int[] iArr, int i6, boolean z7, boolean z10) {
        int i10;
        int i11;
        int iBinarySearch = Arrays.binarySearch(iArr, i6);
        if (iBinarySearch < 0) {
            i11 = ~iBinarySearch;
        } else {
            while (true) {
                i10 = iBinarySearch + 1;
                if (i10 >= iArr.length || iArr[i10] != i6) {
                    break;
                }
                iBinarySearch = i10;
            }
            i11 = z7 ? iBinarySearch : i10;
        }
        return z10 ? Math.min(iArr.length - 1, i11) : i11;
    }

    @UnstableApi
    public static int binarySearchFloor(int[] iArr, int i6, boolean z7, boolean z10) {
        int i10;
        int i11;
        int iBinarySearch = Arrays.binarySearch(iArr, i6);
        if (iBinarySearch < 0) {
            i11 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i10 = iBinarySearch - 1;
                if (i10 < 0 || iArr[i10] != i6) {
                    break;
                }
                iBinarySearch = i10;
            }
            i11 = z7 ? iBinarySearch : i10;
        }
        return z10 ? Math.max(0, i11) : i11;
    }

    @UnstableApi
    public static int ceilDivide(int i6, int i10) {
        return ((i6 + i10) - 1) / i10;
    }

    public static boolean checkCleartextTrafficPermitted(MediaItem... mediaItemArr) {
        if (SDK_INT < 24) {
            return true;
        }
        for (MediaItem mediaItem : mediaItemArr) {
            MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                if (isTrafficRestricted(localConfiguration.uri)) {
                    return false;
                }
                for (int i6 = 0; i6 < mediaItem.localConfiguration.subtitleConfigurations.size(); i6++) {
                    if (isTrafficRestricted(((MediaItem.SubtitleConfiguration) mediaItem.localConfiguration.subtitleConfigurations.get(i6)).uri)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    @UnstableApi
    public static void closeQuietly(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @UnstableApi
    public static int compareLong(long j10, long j11) {
        if (j10 < j11) {
            return -1;
        }
        return j10 == j11 ? 0 : 1;
    }

    @UnstableApi
    public static int constrainValue(int i6, int i10, int i11) {
        return Math.max(i10, Math.min(i6, i11));
    }

    @UnstableApi
    public static boolean contains(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (Objects.equals(obj2, obj)) {
                return true;
            }
        }
        return false;
    }

    @UnstableApi
    public static <T> boolean contentEquals(SparseArray<T> sparseArray, SparseArray<T> sparseArray2) {
        if (sparseArray == null) {
            return sparseArray2 == null;
        }
        if (sparseArray2 == null) {
            return false;
        }
        if (SDK_INT >= 31) {
            return sparseArray.contentEquals(sparseArray2);
        }
        int size = sparseArray.size();
        if (size != sparseArray2.size()) {
            return false;
        }
        for (int i6 = 0; i6 < size; i6++) {
            if (!Objects.equals(sparseArray.valueAt(i6), sparseArray2.get(sparseArray.keyAt(i6)))) {
                return false;
            }
        }
        return true;
    }

    @UnstableApi
    public static <T> int contentHashCode(SparseArray<T> sparseArray) {
        if (SDK_INT >= 31) {
            return sparseArray.contentHashCode();
        }
        int iHashCode = 17;
        for (int i6 = 0; i6 < sparseArray.size(); i6++) {
            iHashCode = Objects.hashCode(sparseArray.valueAt(i6)) + ((sparseArray.keyAt(i6) + (iHashCode * 31)) * 31);
        }
        return iHashCode;
    }

    @UnstableApi
    public static int crc16(byte[] bArr, int i6, int i10, int i11) {
        while (i6 < i10) {
            byte b8 = bArr[i6];
            i11 = crc16UpdateFourBits(b8 & 15, crc16UpdateFourBits((b8 & 255) >> 4, i11));
            i6++;
        }
        return i11;
    }

    private static int crc16UpdateFourBits(int i6, int i10) {
        return (CRC16_BYTES_MSBF[(i6 ^ ((i10 >> 12) & 255)) & 255] ^ ((i10 << 4) & 65535)) & 65535;
    }

    @UnstableApi
    public static int crc32(byte[] bArr, int i6, int i10, int i11) {
        while (i6 < i10) {
            i11 = CRC32_BYTES_MSBF[((i11 >>> 24) ^ (bArr[i6] & 255)) & 255] ^ (i11 << 8);
            i6++;
        }
        return i11;
    }

    @UnstableApi
    public static int crc8(byte[] bArr, int i6, int i10, int i11) {
        while (i6 < i10) {
            i11 = CRC8_BYTES_MSBF[i11 ^ (bArr[i6] & 255)];
            i6++;
        }
        return i11;
    }

    @UnstableApi
    public static Handler createHandler(Looper looper, Handler.Callback callback) {
        return new Handler(looper, callback);
    }

    @UnstableApi
    public static Handler createHandlerForCurrentLooper() {
        return createHandlerForCurrentLooper(null);
    }

    @UnstableApi
    public static Handler createHandlerForCurrentOrMainLooper() {
        return createHandlerForCurrentOrMainLooper(null);
    }

    private static HashMap<String, String> createIsoLanguageReplacementMap() throws MissingResourceException {
        String[] iSOLanguages = Locale.getISOLanguages();
        HashMap<String, String> map = new HashMap<>(iSOLanguages.length + additionalIsoLanguageReplacements.length);
        int i6 = 0;
        for (String str : iSOLanguages) {
            try {
                String iSO3Language = new Locale(str).getISO3Language();
                if (!TextUtils.isEmpty(iSO3Language)) {
                    map.put(iSO3Language, str);
                }
            } catch (MissingResourceException unused) {
            }
        }
        while (true) {
            String[] strArr = additionalIsoLanguageReplacements;
            if (i6 >= strArr.length) {
                return map;
            }
            map.put(strArr[i6], strArr[i6 + 1]);
            i6 += 2;
        }
    }

    @UnstableApi
    public static ByteBuffer createReadOnlyByteBuffer(ByteBuffer byteBuffer) {
        return byteBuffer.asReadOnlyBuffer().order(byteBuffer.order());
    }

    @UnstableApi
    public static File createTempDirectory(Context context, String str) throws IOException {
        File fileCreateTempFile = createTempFile(context, str);
        fileCreateTempFile.delete();
        fileCreateTempFile.mkdir();
        return fileCreateTempFile;
    }

    @UnstableApi
    public static File createTempFile(Context context, String str) throws IOException {
        return File.createTempFile(str, null, (File) Assertions.checkNotNull(context.getCacheDir()));
    }

    @UnstableApi
    public static long durationUsToSampleCount(long j10, int i6) {
        return scaleLargeValue(j10, i6, 1000000L, RoundingMode.UP);
    }

    @UnstableApi
    public static String escapeFileName(String str) {
        int length = str.length();
        int i6 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (shouldEscapeCharacter(str.charAt(i11))) {
                i10++;
            }
        }
        if (i10 == 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder((i10 * 2) + length);
        while (i10 > 0) {
            int i12 = i6 + 1;
            char cCharAt = str.charAt(i6);
            if (shouldEscapeCharacter(cCharAt)) {
                sb.append('%');
                sb.append(Integer.toHexString(cCharAt));
                i10--;
            } else {
                sb.append(cCharAt);
            }
            i6 = i12;
        }
        if (i6 < length) {
            sb.append((CharSequence) str, i6, length);
        }
        return sb.toString();
    }

    @UnstableApi
    public static Uri fixSmoothStreamingIsmManifestUri(Uri uri) {
        String path = uri.getPath();
        if (path == null) {
            return uri;
        }
        Matcher matcher = ISM_PATH_PATTERN.matcher(path);
        return (matcher.matches() && matcher.group(1) == null) ? Uri.withAppendedPath(uri, "Manifest") : uri;
    }

    @UnstableApi
    public static String formatInvariant(String str, Object... objArr) {
        return String.format(Locale.US, str, objArr);
    }

    @UnstableApi
    public static String fromUtf8Bytes(byte[] bArr) {
        return new String(bArr, StandardCharsets.UTF_8);
    }

    @UnstableApi
    public static int generateAudioSessionIdV21(Context context) {
        return AudioManagerCompat.getAudioManager(context).generateAudioSessionId();
    }

    public static String getAdaptiveMimeTypeForContentType(int i6) {
        if (i6 == 0) {
            return MimeTypes.APPLICATION_MPD;
        }
        if (i6 == 1) {
            return MimeTypes.APPLICATION_SS;
        }
        if (i6 != 2) {
            return null;
        }
        return MimeTypes.APPLICATION_M3U8;
    }

    @UnstableApi
    public static int getApiLevelThatAudioFormatIntroducedAudioEncoding(int i6) {
        if (i6 == 20) {
            return 30;
        }
        if (i6 == 22) {
            return 31;
        }
        if (i6 == 30) {
            return 34;
        }
        switch (i6) {
            case 2:
            case 3:
                return 3;
            case 4:
            case 5:
            case 6:
                return 21;
            case 7:
            case 8:
                return 23;
            case 9:
            case 10:
            case 11:
            case 12:
                return 28;
            default:
                switch (i6) {
                    case 14:
                        return 25;
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                        return 28;
                    default:
                        return Integer.MAX_VALUE;
                }
        }
    }

    @UnstableApi
    @Deprecated
    public static int getAudioContentTypeForStreamType(int i6) {
        if (i6 != 0) {
            if (i6 == 1 || i6 == 2 || i6 == 4 || i6 == 5 || i6 == 8) {
                return 4;
            }
            if (i6 != 10) {
                return 2;
            }
        }
        return 1;
    }

    @UnstableApi
    public static AudioFormat getAudioFormat(int i6, int i10, int i11) {
        return new AudioFormat.Builder().setSampleRate(i6).setChannelMask(i10).setEncoding(i11).build();
    }

    @SuppressLint({"InlinedApi"})
    @UnstableApi
    public static int getAudioTrackChannelConfig(int i6) {
        if (i6 == 10) {
            return SDK_INT >= 32 ? 737532 : 6396;
        }
        if (i6 == 12) {
            return 743676;
        }
        if (i6 == 24) {
            return SDK_INT >= 32 ? 67108860 : 0;
        }
        switch (i6) {
            case 1:
                return 4;
            case 2:
                return 12;
            case 3:
                return 28;
            case 4:
                return 204;
            case 5:
                return 220;
            case 6:
                return 252;
            case 7:
                return 1276;
            case 8:
                return 6396;
            default:
                return 0;
        }
    }

    @UnstableApi
    public static int getAudioUsageForStreamType(int i6) {
        if (i6 == 0) {
            return 2;
        }
        if (i6 == 1) {
            return 13;
        }
        if (i6 == 2) {
            return 6;
        }
        int i10 = 4;
        if (i6 != 4) {
            i10 = 5;
            if (i6 != 5) {
                if (i6 != 8) {
                    return i6 != 10 ? 1 : 11;
                }
                return 3;
            }
        }
        return i10;
    }

    @UnstableApi
    public static String getAuxiliaryTrackTypeString(int i6) {
        if (i6 == 0) {
            return "undefined";
        }
        if (i6 == 1) {
            return "original";
        }
        if (i6 == 2) {
            return "depth-linear";
        }
        if (i6 == 3) {
            return "depth-inverse";
        }
        if (i6 == 4) {
            return "depth metadata";
        }
        throw new IllegalStateException("Unsupported auxiliary track type");
    }

    @UnstableApi
    public static Player.Commands getAvailableCommands(Player player, Player.Commands commands) {
        boolean zIsPlayingAd = player.isPlayingAd();
        boolean zIsCurrentMediaItemSeekable = player.isCurrentMediaItemSeekable();
        boolean zHasPreviousMediaItem = player.hasPreviousMediaItem();
        boolean zHasNextMediaItem = player.hasNextMediaItem();
        boolean zIsCurrentMediaItemLive = player.isCurrentMediaItemLive();
        boolean zIsCurrentMediaItemDynamic = player.isCurrentMediaItemDynamic();
        boolean zIsEmpty = player.getCurrentTimeline().isEmpty();
        boolean z7 = false;
        Player.Commands.Builder builderAddIf = new Player.Commands.Builder().addAll(commands).addIf(4, !zIsPlayingAd).addIf(5, zIsCurrentMediaItemSeekable && !zIsPlayingAd).addIf(6, zHasPreviousMediaItem && !zIsPlayingAd).addIf(7, !zIsEmpty && (zHasPreviousMediaItem || !zIsCurrentMediaItemLive || zIsCurrentMediaItemSeekable) && !zIsPlayingAd).addIf(8, zHasNextMediaItem && !zIsPlayingAd).addIf(9, !zIsEmpty && (zHasNextMediaItem || (zIsCurrentMediaItemLive && zIsCurrentMediaItemDynamic)) && !zIsPlayingAd).addIf(10, !zIsPlayingAd).addIf(11, zIsCurrentMediaItemSeekable && !zIsPlayingAd);
        if (zIsCurrentMediaItemSeekable && !zIsPlayingAd) {
            z7 = true;
        }
        return builderAddIf.addIf(12, z7).build();
    }

    @UnstableApi
    public static int getBigEndianInt(ByteBuffer byteBuffer, int i6) {
        int i10 = byteBuffer.getInt(i6);
        return byteBuffer.order() == ByteOrder.BIG_ENDIAN ? i10 : Integer.reverseBytes(i10);
    }

    @UnstableApi
    public static int getByteDepth(int i6) {
        if (i6 != 2) {
            if (i6 == 3) {
                return 1;
            }
            if (i6 != 4) {
                if (i6 != 21) {
                    if (i6 != 22) {
                        if (i6 != 268435456) {
                            if (i6 != 1342177280) {
                                if (i6 != 1610612736) {
                                    throw new IllegalArgumentException();
                                }
                            }
                        }
                    }
                }
                return 3;
            }
            return 4;
        }
        return 2;
    }

    @UnstableApi
    public static byte[] getBytesFromHexString(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i6 = 0; i6 < length; i6++) {
            int i10 = i6 * 2;
            bArr[i6] = (byte) (Character.digit(str.charAt(i10 + 1), 16) + (Character.digit(str.charAt(i10), 16) << 4));
        }
        return bArr;
    }

    @UnstableApi
    public static int getCodecCountOfType(String str, int i6) {
        int i10 = 0;
        for (String str2 : splitCodecs(str)) {
            if (i6 == MimeTypes.getTrackTypeOfCodec(str2)) {
                i10++;
            }
        }
        return i10;
    }

    @UnstableApi
    public static String getCodecsOfType(String str, int i6) {
        String[] strArrSplitCodecs = splitCodecs(str);
        if (strArrSplitCodecs.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplitCodecs) {
            if (i6 == MimeTypes.getTrackTypeOfCodec(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    @UnstableApi
    public static String getCodecsWithoutType(String str, int i6) {
        String[] strArrSplitCodecs = splitCodecs(str);
        if (strArrSplitCodecs.length == 0) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : strArrSplitCodecs) {
            if (i6 != MimeTypes.getTrackTypeOfCodec(str2)) {
                if (sb.length() > 0) {
                    sb.append(",");
                }
                sb.append(str2);
            }
        }
        if (sb.length() > 0) {
            return sb.toString();
        }
        return null;
    }

    @UnstableApi
    public static String getCountryCode(Context context) {
        TelephonyManager telephonyManager;
        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (!TextUtils.isEmpty(networkCountryIso)) {
                return b7.b.x(networkCountryIso);
            }
        }
        return b7.b.x(Locale.getDefault().getCountry());
    }

    @UnstableApi
    public static Point getCurrentDisplayModeSize(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        Display display = displayManager != null ? displayManager.getDisplay(0) : null;
        if (display == null) {
            display = ((WindowManager) Assertions.checkNotNull((WindowManager) context.getSystemService("window"))).getDefaultDisplay();
        }
        return getCurrentDisplayModeSize(context, display);
    }

    @UnstableApi
    public static Looper getCurrentOrMainLooper() {
        Looper looperMyLooper = Looper.myLooper();
        return looperMyLooper != null ? looperMyLooper : Looper.getMainLooper();
    }

    @UnstableApi
    public static Uri getDataUriForString(String str, String str2) {
        StringBuilder sbX = a.e.x("data:", str, ";base64,");
        sbX.append(Base64.encodeToString(str2.getBytes(), 2));
        return Uri.parse(sbX.toString());
    }

    @UnstableApi
    public static Locale getDefaultDisplayLocale() {
        return SDK_INT >= 24 ? Locale.getDefault(Locale.Category.DISPLAY) : Locale.getDefault();
    }

    private static void getDisplaySizeV23(Display display, Point point) {
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
    }

    @UnstableApi
    public static Drawable getDrawable(Context context, Resources resources, int i6) {
        return resources.getDrawable(i6, context.getTheme());
    }

    public static UUID getDrmUuid(String str) {
        String strV = b7.b.v(str);
        strV.getClass();
        switch (strV) {
            case "playready":
                return C.PLAYREADY_UUID;
            case "widevine":
                return C.WIDEVINE_UUID;
            case "clearkey":
                return C.CLEARKEY_UUID;
            default:
                try {
                    return UUID.fromString(str);
                } catch (RuntimeException unused) {
                    return null;
                }
        }
    }

    @UnstableApi
    public static int getErrorCodeForMediaDrmErrorCode(int i6) {
        if (i6 == 2 || i6 == 4) {
            return PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
        }
        if (i6 == 10) {
            return PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
        }
        if (i6 == 7) {
            return PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
        }
        if (i6 == 8) {
            return PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
        }
        switch (i6) {
            case 15:
                return PlaybackException.ERROR_CODE_DRM_CONTENT_ERROR;
            case 16:
            case 18:
                return PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION;
            case 17:
            case 19:
            case 20:
            case 21:
            case 22:
                return PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED;
            default:
                switch (i6) {
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        return PlaybackException.ERROR_CODE_DRM_PROVISIONING_FAILED;
                    default:
                        return PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR;
                }
        }
    }

    @UnstableApi
    public static int getErrorCodeFromPlatformDiagnosticsInfo(String str) throws NumberFormatException {
        String[] strArrSplit;
        int length;
        if (str == null || (length = (strArrSplit = split(str, "_")).length) < 2) {
            return 0;
        }
        String str2 = strArrSplit[length - 1];
        boolean z7 = length >= 3 && "neg".equals(strArrSplit[length - 2]);
        try {
            int i6 = Integer.parseInt((String) Assertions.checkNotNull(str2));
            return z7 ? -i6 : i6;
        } catch (NumberFormatException unused) {
            return 0;
        }
    }

    @UnstableApi
    public static String getFormatSupportString(int i6) {
        if (i6 == 0) {
            return "NO";
        }
        if (i6 == 1) {
            return "NO_UNSUPPORTED_TYPE";
        }
        if (i6 == 2) {
            return "NO_UNSUPPORTED_DRM";
        }
        if (i6 == 3) {
            return "NO_EXCEEDS_CAPABILITIES";
        }
        if (i6 == 4) {
            return "YES";
        }
        throw new IllegalStateException();
    }

    @UnstableApi
    public static int getIntegerCodeForString(String str) {
        int length = str.length();
        Assertions.checkArgument(length <= 4);
        int iCharAt = 0;
        for (int i6 = 0; i6 < length; i6++) {
            iCharAt = (iCharAt << 8) | str.charAt(i6);
        }
        return iCharAt;
    }

    @UnstableApi
    public static String getLocaleLanguageTag(Locale locale) {
        return locale.toLanguageTag();
    }

    @UnstableApi
    public static int getMaxPendingFramesCountForMediaCodecDecoders(Context context) {
        return isFrameDropAllowedOnSurfaceInput(context) ? 1 : 5;
    }

    @UnstableApi
    public static long getMediaDurationForPlayoutDuration(long j10, float f) {
        return f == 1.0f ? j10 : Math.round(j10 * f);
    }

    @UnstableApi
    public static long getNowUnixTimeMs(long j10) {
        return j10 == C.TIME_UNSET ? System.currentTimeMillis() : j10 + android.os.SystemClock.elapsedRealtime();
    }

    @UnstableApi
    public static int getPcmEncoding(int i6) {
        if (i6 == 8) {
            return 3;
        }
        if (i6 == 16) {
            return 2;
        }
        if (i6 != 24) {
            return i6 != 32 ? 0 : 22;
        }
        return 21;
    }

    @UnstableApi
    public static Format getPcmFormat(int i6, int i10, int i11) {
        return new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setChannelCount(i10).setSampleRate(i11).setPcmEncoding(i6).build();
    }

    @UnstableApi
    public static int getPcmFrameSize(int i6, int i10) {
        return getByteDepth(i6) * i10;
    }

    @UnstableApi
    public static long getPlayoutDurationForMediaDuration(long j10, float f) {
        return f == 1.0f ? j10 : Math.round(j10 / f);
    }

    @UnstableApi
    public static List<String> getRoleFlagStrings(int i6) {
        ArrayList arrayList = new ArrayList();
        if ((i6 & 1) != 0) {
            arrayList.add("main");
        }
        if ((i6 & 2) != 0) {
            arrayList.add("alt");
        }
        if ((i6 & 4) != 0) {
            arrayList.add("supplementary");
        }
        if ((i6 & 8) != 0) {
            arrayList.add("commentary");
        }
        if ((i6 & 16) != 0) {
            arrayList.add("dub");
        }
        if ((i6 & 32) != 0) {
            arrayList.add("emergency");
        }
        if ((i6 & 64) != 0) {
            arrayList.add("caption");
        }
        if ((i6 & 128) != 0) {
            arrayList.add("subtitle");
        }
        if ((i6 & 256) != 0) {
            arrayList.add("sign");
        }
        if ((i6 & 512) != 0) {
            arrayList.add("describes-video");
        }
        if ((i6 & 1024) != 0) {
            arrayList.add("describes-music");
        }
        if ((i6 & 2048) != 0) {
            arrayList.add("enhanced-intelligibility");
        }
        if ((i6 & 4096) != 0) {
            arrayList.add("transcribes-dialog");
        }
        if ((i6 & 8192) != 0) {
            arrayList.add("easy-read");
        }
        if ((i6 & 16384) != 0) {
            arrayList.add("trick-play");
        }
        if ((i6 & 32768) != 0) {
            arrayList.add("auxiliary");
        }
        return arrayList;
    }

    @UnstableApi
    public static List<String> getSelectionFlagStrings(int i6) {
        ArrayList arrayList = new ArrayList();
        if ((i6 & 4) != 0) {
            arrayList.add(TtmlNode.TEXT_EMPHASIS_AUTO);
        }
        if ((i6 & 1) != 0) {
            arrayList.add("default");
        }
        if ((i6 & 2) != 0) {
            arrayList.add("forced");
        }
        return arrayList;
    }

    @UnstableApi
    @Deprecated
    public static int getStreamTypeForAudioUsage(int i6) {
        switch (i6) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 12:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    @UnstableApi
    public static String getStringForTime(StringBuilder sb, Formatter formatter, long j10) {
        long j11 = j10 == C.TIME_UNSET ? 0L : j10;
        String str = j11 < 0 ? "-" : "";
        long jAbs = (Math.abs(j11) + 500) / 1000;
        long j12 = jAbs % 60;
        long j13 = (jAbs / 60) % 60;
        long j14 = jAbs / 3600;
        sb.setLength(0);
        return j14 > 0 ? formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j14), Long.valueOf(j13), Long.valueOf(j12)).toString() : formatter.format("%s%02d:%02d", str, Long.valueOf(j13), Long.valueOf(j12)).toString();
    }

    @UnstableApi
    public static String[] getSystemLanguageCodes() {
        String[] systemLocales = getSystemLocales();
        for (int i6 = 0; i6 < systemLocales.length; i6++) {
            systemLocales[i6] = normalizeLanguageCode(systemLocales[i6]);
        }
        return systemLocales;
    }

    private static String[] getSystemLocales() {
        Configuration configuration = Resources.getSystem().getConfiguration();
        return SDK_INT >= 24 ? getSystemLocalesV24(configuration) : new String[]{getLocaleLanguageTag(configuration.locale)};
    }

    private static String[] getSystemLocalesV24(Configuration configuration) {
        return split(configuration.getLocales().toLanguageTags(), ",");
    }

    private static String getSystemProperty(String str) throws ClassNotFoundException {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e5) {
            Log.e(TAG, "Failed to read system property " + str, e5);
            return null;
        }
    }

    @UnstableApi
    public static String getTrackTypeString(int i6) {
        switch (i6) {
            case -2:
                return "none";
            case -1:
                return "unknown";
            case 0:
                return "default";
            case 1:
                return "audio";
            case 2:
                return "video";
            case 3:
                return "text";
            case 4:
                return "image";
            case 5:
                return TtmlNode.TAG_METADATA;
            case 6:
                return "camera motion";
            default:
                return i6 >= 10000 ? q.f(i6, "custom (", ")") : "?";
        }
    }

    @UnstableApi
    public static String getUserAgent(Context context, String str) {
        String str2;
        try {
            str2 = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            str2 = "?";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("/");
        sb.append(str2);
        sb.append(" (Linux;Android ");
        return a.e.t(sb, Build.VERSION.RELEASE, ") AndroidXMedia3/1.6.1");
    }

    @UnstableApi
    public static byte[] getUtf8Bytes(String str) {
        return str.getBytes(StandardCharsets.UTF_8);
    }

    @UnstableApi
    public static byte[] gzip(byte[] bArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(bArr);
                gZIPOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } finally {
            }
        } catch (IOException e5) {
            throw new IllegalStateException(e5);
        }
    }

    public static boolean handlePauseButtonAction(Player player) {
        if (player == null || !player.isCommandAvailable(1)) {
            return false;
        }
        player.pause();
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean handlePlayButtonAction(androidx.media3.common.Player r4) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            int r1 = r4.getPlaybackState()
            r2 = 1
            if (r1 != r2) goto L17
            r3 = 2
            boolean r3 = r4.isCommandAvailable(r3)
            if (r3 == 0) goto L17
            r4.prepare()
        L15:
            r0 = 1
            goto L24
        L17:
            r3 = 4
            if (r1 != r3) goto L24
            boolean r1 = r4.isCommandAvailable(r3)
            if (r1 == 0) goto L24
            r4.seekToDefaultPosition()
            goto L15
        L24:
            boolean r1 = r4.isCommandAvailable(r2)
            if (r1 == 0) goto L2e
            r4.play()
            goto L2f
        L2e:
            r2 = r0
        L2f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.common.util.Util.handlePlayButtonAction(androidx.media3.common.Player):boolean");
    }

    public static boolean handlePlayPauseButtonAction(Player player) {
        return handlePlayPauseButtonAction(player, true);
    }

    @UnstableApi
    @Deprecated
    public static int inferContentType(Uri uri, String str) {
        return TextUtils.isEmpty(str) ? inferContentType(uri) : inferContentTypeForExtension(str);
    }

    public static int inferContentTypeForExtension(String str) {
        String strV = b7.b.v(str);
        strV.getClass();
        switch (strV) {
            case "ism":
            case "isml":
                return 1;
            case "mpd":
                return 0;
            case "m3u8":
                return 2;
            default:
                return 4;
        }
    }

    public static int inferContentTypeForUriAndMimeType(Uri uri, String str) {
        if (str == null) {
            return inferContentType(uri);
        }
        switch (str) {
            case "application/x-mpegURL":
                return 2;
            case "application/vnd.ms-sstr+xml":
                return 1;
            case "application/dash+xml":
                return 0;
            case "application/x-rtsp":
                return 3;
            default:
                return 4;
        }
    }

    @UnstableApi
    public static boolean inflate(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, Inflater inflater) {
        if (parsableByteArray.bytesLeft() <= 0) {
            return false;
        }
        if (parsableByteArray2.capacity() < parsableByteArray.bytesLeft()) {
            parsableByteArray2.ensureCapacity(parsableByteArray.bytesLeft() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(parsableByteArray.getData(), parsableByteArray.getPosition(), parsableByteArray.bytesLeft());
        int iInflate = 0;
        while (true) {
            try {
                iInflate += inflater.inflate(parsableByteArray2.getData(), iInflate, parsableByteArray2.capacity() - iInflate);
                if (!inflater.finished()) {
                    if (inflater.needsDictionary() || inflater.needsInput()) {
                        break;
                    }
                    if (iInflate == parsableByteArray2.capacity()) {
                        parsableByteArray2.ensureCapacity(parsableByteArray2.capacity() * 2);
                    }
                } else {
                    parsableByteArray2.setLimit(iInflate);
                    inflater.reset();
                    return true;
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
        return false;
    }

    @UnstableApi
    public static String intToStringMaxRadix(int i6) {
        return Integer.toString(i6, 36);
    }

    private static boolean isAppSpecificStorageFileUri(Activity activity, Uri uri) throws IOException {
        try {
            String path = uri.getPath();
            if (path == null) {
                return false;
            }
            String canonicalPath = new File(path).getCanonicalPath();
            String canonicalPath2 = activity.getFilesDir().getCanonicalPath();
            String canonicalPath3 = null;
            File externalFilesDir = activity.getExternalFilesDir(null);
            if (externalFilesDir != null) {
                canonicalPath3 = externalFilesDir.getCanonicalPath();
            }
            if (!canonicalPath.startsWith(canonicalPath2)) {
                if (canonicalPath3 == null) {
                    return false;
                }
                if (!canonicalPath.startsWith(canonicalPath3)) {
                    return false;
                }
            }
            return true;
        } catch (IOException unused) {
            return false;
        }
    }

    @UnstableApi
    public static boolean isAutomotive(Context context) {
        return SDK_INT >= 23 && context.getPackageManager().hasSystemFeature("android.hardware.type.automotive");
    }

    @UnstableApi
    public static boolean isBitmapFactorySupportedMimeType(String str) {
        str.getClass();
        switch (str) {
            case "image/avif":
                return SDK_INT >= 34;
            case "image/heic":
            case "image/heif":
                return SDK_INT >= 26;
            case "image/jpeg":
            case "image/webp":
            case "image/bmp":
            case "image/png":
                return true;
            default:
                return false;
        }
    }

    @UnstableApi
    public static boolean isEncodingHighResolutionPcm(int i6) {
        return i6 == 21 || i6 == 1342177280 || i6 == 22 || i6 == 1610612736 || i6 == 4;
    }

    @UnstableApi
    public static boolean isEncodingLinearPcm(int i6) {
        return i6 == 3 || i6 == 2 || i6 == 268435456 || i6 == 21 || i6 == 1342177280 || i6 == 22 || i6 == 1610612736 || i6 == 4;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0024  */
    @androidx.media3.common.util.UnstableApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isFrameDropAllowedOnSurfaceInput(android.content.Context r2) {
        /*
            int r0 = androidx.media3.common.util.Util.SDK_INT
            r1 = 29
            if (r0 < r1) goto L35
            android.content.pm.ApplicationInfo r2 = r2.getApplicationInfo()
            int r2 = r2.targetSdkVersion
            if (r2 < r1) goto L35
            r2 = 30
            if (r0 != r2) goto L24
            java.lang.String r2 = android.os.Build.MODEL
            java.lang.String r1 = "moto g(20)"
            boolean r1 = b7.b.q(r2, r1)
            if (r1 != 0) goto L35
            java.lang.String r1 = "rmx3231"
            boolean r2 = b7.b.q(r2, r1)
            if (r2 != 0) goto L35
        L24:
            r2 = 34
            if (r0 != r2) goto L33
            java.lang.String r2 = android.os.Build.MODEL
            java.lang.String r0 = "sm-x200"
            boolean r2 = b7.b.q(r2, r0)
            if (r2 == 0) goto L33
            goto L35
        L33:
            r2 = 0
            goto L36
        L35:
            r2 = 1
        L36:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.common.util.Util.isFrameDropAllowedOnSurfaceInput(android.content.Context):boolean");
    }

    @UnstableApi
    public static boolean isLinebreak(int i6) {
        return i6 == 10 || i6 == 13;
    }

    @UnstableApi
    public static boolean isLocalFileUri(Uri uri) {
        String scheme = uri.getScheme();
        return TextUtils.isEmpty(scheme) || "file".equals(scheme);
    }

    private static boolean isMediaStoreExternalContentUri(Uri uri) {
        if (!"content".equals(uri.getScheme()) || !"media".equals(uri.getAuthority())) {
            return false;
        }
        List<String> pathSegments = uri.getPathSegments();
        if (pathSegments.isEmpty()) {
            return false;
        }
        String str = pathSegments.get(0);
        return "external".equals(str) || "external_primary".equals(str);
    }

    private static boolean isReadStoragePermissionRequestNeeded(Activity activity, Uri uri) {
        if (SDK_INT < 23) {
            return false;
        }
        return isLocalFileUri(uri) ? !isAppSpecificStorageFileUri(activity, uri) : isMediaStoreExternalContentUri(uri);
    }

    @UnstableApi
    public static boolean isRunningOnEmulator() {
        String strV = b7.b.v(Build.DEVICE);
        return strV.contains("emulator") || strV.contains("emu64a") || strV.contains("emu64x") || strV.contains("generic");
    }

    private static boolean isTrafficRestricted(Uri uri) {
        return "http".equals(uri.getScheme()) && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted((String) Assertions.checkNotNull(uri.getHost()));
    }

    @UnstableApi
    public static boolean isTv(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        return uiModeManager != null && uiModeManager.getCurrentModeType() == 4;
    }

    @UnstableApi
    public static boolean isWear(Context context) {
        return context.getPackageManager().hasSystemFeature("android.hardware.type.watch");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread lambda$newSingleThreadExecutor$3(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Thread lambda$newSingleThreadScheduledExecutor$4(String str, Runnable runnable) {
        return new Thread(runnable, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$postOrRunWithCompletion$0(SettableFuture settableFuture, Runnable runnable, Object obj) {
        try {
            if (settableFuture.isCancelled()) {
                return;
            }
            runnable.run();
            settableFuture.set(obj);
        } catch (Throwable th) {
            settableFuture.setException(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$transformFutureAsync$1(SettableFuture settableFuture, ListenableFuture listenableFuture) {
        if (settableFuture.isCancelled()) {
            listenableFuture.cancel(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$transformFutureAsync$2(ListenableFuture listenableFuture, SettableFuture settableFuture, AsyncFunction asyncFunction) {
        try {
            try {
                settableFuture.setFuture(asyncFunction.apply(Futures.getDone(listenableFuture)));
            } catch (Throwable th) {
                settableFuture.setException(th);
            }
        } catch (Error e5) {
            e = e5;
            settableFuture.setException(e);
        } catch (CancellationException unused) {
            settableFuture.cancel(false);
        } catch (RuntimeException e10) {
            e = e10;
            settableFuture.setException(e);
        } catch (ExecutionException e11) {
            e = e11;
            Throwable cause = e.getCause();
            if (cause != null) {
                e = cause;
            }
            settableFuture.setException(e);
        }
    }

    @UnstableApi
    public static int linearSearch(int[] iArr, int i6) {
        for (int i10 = 0; i10 < iArr.length; i10++) {
            if (iArr[i10] == i6) {
                return i10;
            }
        }
        return -1;
    }

    @UnstableApi
    public static String loadAsset(Context context, String str) throws IOException {
        InputStream inputStreamOpen = null;
        try {
            inputStreamOpen = context.getAssets().open(str);
            return fromUtf8Bytes(e7.b.b(inputStreamOpen));
        } finally {
            closeQuietly(inputStreamOpen);
        }
    }

    @UnstableApi
    public static long maxValue(SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() == 0) {
            throw new NoSuchElementException();
        }
        long jMax = Long.MIN_VALUE;
        for (int i6 = 0; i6 < sparseLongArray.size(); i6++) {
            jMax = Math.max(jMax, sparseLongArray.valueAt(i6));
        }
        return jMax;
    }

    @UnstableApi
    public static boolean maybeInflate(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, Inflater inflater) {
        return parsableByteArray.bytesLeft() > 0 && parsableByteArray.peekUnsignedByte() == ZLIB_INFLATE_HEADER && inflate(parsableByteArray, parsableByteArray2, inflater);
    }

    private static String maybeReplaceLegacyLanguageTags(String str) {
        int i6 = 0;
        while (true) {
            String[] strArr = isoLegacyTagReplacements;
            if (i6 >= strArr.length) {
                return str;
            }
            if (str.startsWith(strArr[i6])) {
                return strArr[i6 + 1] + str.substring(strArr[i6].length());
            }
            i6 += 2;
        }
    }

    @Deprecated
    public static boolean maybeRequestReadExternalStoragePermission(Activity activity, Uri... uriArr) {
        for (Uri uri : uriArr) {
            if (maybeRequestReadStoragePermission(activity, uri)) {
                return true;
            }
        }
        return false;
    }

    public static boolean maybeRequestReadStoragePermission(Activity activity, MediaItem... mediaItemArr) {
        if (SDK_INT < 23) {
            return false;
        }
        for (MediaItem mediaItem : mediaItemArr) {
            MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                if (maybeRequestReadStoragePermission(activity, localConfiguration.uri)) {
                    return true;
                }
                u1 u1Var = mediaItem.localConfiguration.subtitleConfigurations;
                for (int i6 = 0; i6 < u1Var.size(); i6++) {
                    if (maybeRequestReadStoragePermission(activity, ((MediaItem.SubtitleConfiguration) u1Var.get(i6)).uri)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @UnstableApi
    public static long minValue(SparseLongArray sparseLongArray) {
        if (sparseLongArray.size() == 0) {
            throw new NoSuchElementException();
        }
        long jMin = Long.MAX_VALUE;
        for (int i6 = 0; i6 < sparseLongArray.size(); i6++) {
            jMin = Math.min(jMin, sparseLongArray.valueAt(i6));
        }
        return jMin;
    }

    @UnstableApi
    public static <T> void moveItems(List<T> list, int i6, int i10, int i11) {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (int i12 = (i10 - i6) - 1; i12 >= 0; i12--) {
            arrayDeque.addFirst(list.remove(i6 + i12));
        }
        list.addAll(Math.min(i11, list.size()), arrayDeque);
    }

    @UnstableApi
    public static long msToUs(long j10) {
        return (j10 == C.TIME_UNSET || j10 == Long.MIN_VALUE) ? j10 : j10 * 1000;
    }

    @UnstableApi
    public static ExecutorService newSingleThreadExecutor(String str) {
        return Executors.newSingleThreadExecutor(new j(str, 0));
    }

    @UnstableApi
    public static ScheduledExecutorService newSingleThreadScheduledExecutor(String str) {
        return Executors.newSingleThreadScheduledExecutor(new j(str, 1));
    }

    @UnstableApi
    public static String normalizeLanguageCode(String str) {
        if (str == null) {
            return null;
        }
        String strReplace = str.replace('_', '-');
        if (!strReplace.isEmpty() && !strReplace.equals(C.LANGUAGE_UNDETERMINED)) {
            str = strReplace;
        }
        String strV = b7.b.v(str);
        String str2 = splitAtFirst(strV, "-")[0];
        if (languageTagReplacementMap == null) {
            languageTagReplacementMap = createIsoLanguageReplacementMap();
        }
        String str3 = languageTagReplacementMap.get(str2);
        if (str3 != null) {
            StringBuilder sbM = q.m(str3);
            sbM.append(strV.substring(str2.length()));
            strV = sbM.toString();
            str2 = str3;
        }
        return ("no".equals(str2) || CmcdData.OBJECT_TYPE_INIT_SEGMENT.equals(str2) || "zh".equals(str2)) ? maybeReplaceLegacyLanguageTags(strV) : strV;
    }

    @UnstableApi
    public static <T> T[] nullSafeArrayAppend(T[] tArr, T t5) {
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length + 1);
        objArrCopyOf[tArr.length] = t5;
        return (T[]) castNonNullTypeArray(objArrCopyOf);
    }

    @UnstableApi
    public static <T> T[] nullSafeArrayConcatenation(T[] tArr, T[] tArr2) {
        T[] tArr3 = (T[]) Arrays.copyOf(tArr, tArr.length + tArr2.length);
        System.arraycopy(tArr2, 0, tArr3, tArr.length, tArr2.length);
        return tArr3;
    }

    @UnstableApi
    public static <T> T[] nullSafeArrayCopy(T[] tArr, int i6) {
        Assertions.checkArgument(i6 <= tArr.length);
        return (T[]) Arrays.copyOf(tArr, i6);
    }

    @UnstableApi
    public static <T> T[] nullSafeArrayCopyOfRange(T[] tArr, int i6, int i10) {
        Assertions.checkArgument(i6 >= 0);
        Assertions.checkArgument(i10 <= tArr.length);
        return (T[]) Arrays.copyOfRange(tArr, i6, i10);
    }

    @UnstableApi
    public static <T> void nullSafeListToArray(List<T> list, T[] tArr) {
        Assertions.checkState(list.size() == tArr.length);
        list.toArray(tArr);
    }

    @UnstableApi
    public static long parseXsDateTime(String str) throws ParserException {
        Matcher matcher = XS_DATE_TIME_PATTERN.matcher(str);
        if (!matcher.matches()) {
            throw ParserException.createForMalformedContainer("Invalid date/time format: " + str, null);
        }
        int i6 = 0;
        if (matcher.group(9) != null && !matcher.group(9).equalsIgnoreCase("Z")) {
            i6 = Integer.parseInt(matcher.group(13)) + (Integer.parseInt(matcher.group(12)) * 60);
            if ("-".equals(matcher.group(11))) {
                i6 *= -1;
            }
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        gregorianCalendar.clear();
        gregorianCalendar.set(Integer.parseInt(matcher.group(1)), Integer.parseInt(matcher.group(2)) - 1, Integer.parseInt(matcher.group(3)), Integer.parseInt(matcher.group(4)), Integer.parseInt(matcher.group(5)), Integer.parseInt(matcher.group(6)));
        if (!TextUtils.isEmpty(matcher.group(8))) {
            gregorianCalendar.set(14, new BigDecimal("0." + matcher.group(8)).movePointRight(3).intValue());
        }
        long timeInMillis = gregorianCalendar.getTimeInMillis();
        return i6 != 0 ? timeInMillis - (i6 * 60000) : timeInMillis;
    }

    @UnstableApi
    public static long parseXsDuration(String str) {
        Matcher matcher = XS_DURATION_PATTERN.matcher(str);
        if (!matcher.matches()) {
            return (long) (Double.parseDouble(str) * 3600.0d * 1000.0d);
        }
        boolean zIsEmpty = TextUtils.isEmpty(matcher.group(1));
        String strGroup = matcher.group(3);
        double d = strGroup != null ? Double.parseDouble(strGroup) * 3.1556908E7d : 0.0d;
        String strGroup2 = matcher.group(5);
        double d10 = d + (strGroup2 != null ? Double.parseDouble(strGroup2) * 2629739.0d : 0.0d);
        String strGroup3 = matcher.group(7);
        double d11 = d10 + (strGroup3 != null ? Double.parseDouble(strGroup3) * 86400.0d : 0.0d);
        String strGroup4 = matcher.group(10);
        double d12 = d11 + (strGroup4 != null ? Double.parseDouble(strGroup4) * 3600.0d : 0.0d);
        String strGroup5 = matcher.group(12);
        double d13 = d12 + (strGroup5 != null ? Double.parseDouble(strGroup5) * 60.0d : 0.0d);
        String strGroup6 = matcher.group(14);
        long j10 = (long) ((d13 + (strGroup6 != null ? Double.parseDouble(strGroup6) : 0.0d)) * 1000.0d);
        return !zIsEmpty ? -j10 : j10;
    }

    @UnstableApi
    public static boolean postOrRun(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return false;
        }
        if (looper != Looper.myLooper()) {
            return handler.post(runnable);
        }
        runnable.run();
        return true;
    }

    @UnstableApi
    public static <T> ListenableFuture<T> postOrRunWithCompletion(Handler handler, Runnable runnable, T t5) {
        SettableFuture settableFutureCreate = SettableFuture.create();
        postOrRun(handler, new i(settableFutureCreate, runnable, t5));
        return settableFutureCreate;
    }

    @UnstableApi
    public static boolean readBoolean(Parcel parcel) {
        return parcel.readInt() != 0;
    }

    @UnstableApi
    public static void recursiveDelete(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                recursiveDelete(file2);
            }
        }
        file.delete();
    }

    @UnstableApi
    public static Intent registerReceiverNotExported(Context context, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return SDK_INT < 33 ? context.registerReceiver(broadcastReceiver, intentFilter) : context.registerReceiver(broadcastReceiver, intentFilter, 4);
    }

    @UnstableApi
    public static <T> void removeRange(List<T> list, int i6, int i10) {
        if (i6 < 0 || i10 > list.size() || i6 > i10) {
            throw new IllegalArgumentException();
        }
        if (i6 != i10) {
            list.subList(i6, i10).clear();
        }
    }

    private static boolean requestExternalStoragePermission(Activity activity) {
        if (activity.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0) {
            return false;
        }
        activity.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 0);
        return true;
    }

    private static boolean requestReadMediaPermissions(Activity activity) {
        if (activity.checkSelfPermission("android.permission.READ_MEDIA_AUDIO") == 0 && activity.checkSelfPermission("android.permission.READ_MEDIA_VIDEO") == 0 && activity.checkSelfPermission("android.permission.READ_MEDIA_IMAGES") == 0) {
            return false;
        }
        activity.requestPermissions(new String[]{"android.permission.READ_MEDIA_AUDIO", "android.permission.READ_MEDIA_IMAGES", "android.permission.READ_MEDIA_VIDEO"}, 0);
        return true;
    }

    @UnstableApi
    public static long sampleCountToDurationUs(long j10, int i6) {
        return scaleLargeValue(j10, 1000000L, i6, RoundingMode.DOWN);
    }

    @UnstableApi
    public static long scaleLargeTimestamp(long j10, long j11, long j12) {
        return scaleLargeValue(j10, j11, j12, RoundingMode.DOWN);
    }

    @UnstableApi
    public static long[] scaleLargeTimestamps(List<Long> list, long j10, long j11) {
        return scaleLargeValues(list, j10, j11, RoundingMode.DOWN);
    }

    @UnstableApi
    public static void scaleLargeTimestampsInPlace(long[] jArr, long j10, long j11) {
        scaleLargeValuesInPlace(jArr, j10, j11, RoundingMode.DOWN);
    }

    @UnstableApi
    public static long scaleLargeValue(long j10, long j11, long j12, RoundingMode roundingMode) {
        if (j10 == 0 || j11 == 0) {
            return 0L;
        }
        return (j12 < j11 || j12 % j11 != 0) ? (j12 >= j11 || j11 % j12 != 0) ? (j12 < j10 || j12 % j10 != 0) ? (j12 >= j10 || j10 % j12 != 0) ? scaleLargeValueFallback(j10, j11, j12, roundingMode) : a2.a.L(j11, a2.a.t(j10, j12, RoundingMode.UNNECESSARY)) : a2.a.t(j11, a2.a.t(j12, j10, RoundingMode.UNNECESSARY), roundingMode) : a2.a.L(j10, a2.a.t(j11, j12, RoundingMode.UNNECESSARY)) : a2.a.t(j10, a2.a.t(j12, j11, RoundingMode.UNNECESSARY), roundingMode);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static long scaleLargeValueFallback(long r9, long r11, long r13, java.math.RoundingMode r15) {
        /*
            Method dump skipped, instructions count: 312
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.common.util.Util.scaleLargeValueFallback(long, long, long, java.math.RoundingMode):long");
    }

    @UnstableApi
    public static long[] scaleLargeValues(List<Long> list, long j10, long j11, RoundingMode roundingMode) {
        int i6;
        int size = list.size();
        long[] jArr = new long[size];
        if (j10 == 0) {
            return jArr;
        }
        int i10 = 0;
        if (j11 >= j10 && j11 % j10 == 0) {
            long jT = a2.a.t(j11, j10, RoundingMode.UNNECESSARY);
            while (i10 < size) {
                jArr[i10] = a2.a.t(list.get(i10).longValue(), jT, roundingMode);
                i10++;
            }
            return jArr;
        }
        if (j11 < j10 && j10 % j11 == 0) {
            long jT2 = a2.a.t(j10, j11, RoundingMode.UNNECESSARY);
            while (i10 < size) {
                jArr[i10] = a2.a.L(list.get(i10).longValue(), jT2);
                i10++;
            }
            return jArr;
        }
        int i11 = 0;
        while (i11 < size) {
            long jLongValue = list.get(i11).longValue();
            if (jLongValue != 0) {
                if (j11 >= jLongValue && j11 % jLongValue == 0) {
                    jArr[i11] = a2.a.t(j10, a2.a.t(j11, jLongValue, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j11 >= jLongValue || jLongValue % j11 != 0) {
                    i6 = i11;
                    jArr[i6] = scaleLargeValueFallback(jLongValue, j10, j11, roundingMode);
                } else {
                    jArr[i11] = a2.a.L(j10, a2.a.t(jLongValue, j11, RoundingMode.UNNECESSARY));
                }
                i6 = i11;
            } else {
                i6 = i11;
            }
            i11 = i6 + 1;
        }
        return jArr;
    }

    @UnstableApi
    public static void scaleLargeValuesInPlace(long[] jArr, long j10, long j11, RoundingMode roundingMode) {
        if (j10 == 0) {
            Arrays.fill(jArr, 0L);
            return;
        }
        int i6 = 0;
        if (j11 >= j10 && j11 % j10 == 0) {
            long jT = a2.a.t(j11, j10, RoundingMode.UNNECESSARY);
            while (i6 < jArr.length) {
                jArr[i6] = a2.a.t(jArr[i6], jT, roundingMode);
                i6++;
            }
            return;
        }
        if (j11 < j10 && j10 % j11 == 0) {
            long jT2 = a2.a.t(j10, j11, RoundingMode.UNNECESSARY);
            while (i6 < jArr.length) {
                jArr[i6] = a2.a.L(jArr[i6], jT2);
                i6++;
            }
            return;
        }
        for (int i10 = 0; i10 < jArr.length; i10++) {
            long j12 = jArr[i10];
            if (j12 != 0) {
                if (j11 >= j12 && j11 % j12 == 0) {
                    jArr[i10] = a2.a.t(j10, a2.a.t(j11, j12, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j11 >= j12 || j12 % j11 != 0) {
                    jArr[i10] = scaleLargeValueFallback(j12, j10, j11, roundingMode);
                } else {
                    jArr[i10] = a2.a.L(j10, a2.a.t(j12, j11, RoundingMode.UNNECESSARY));
                }
            }
        }
    }

    @UnstableApi
    public static void setForegroundServiceNotification(Service service, int i6, Notification notification, int i10, String str) {
        if (SDK_INT >= 29) {
            Api29.startForeground(service, i6, notification, i10, str);
        } else {
            service.startForeground(i6, notification);
        }
    }

    @UnstableApi
    public static boolean shouldEnablePlayPauseButton(Player player) {
        return (player == null || !player.isCommandAvailable(1) || (player.isCommandAvailable(17) && player.getCurrentTimeline().isEmpty())) ? false : true;
    }

    private static boolean shouldEscapeCharacter(char c5) {
        return c5 == '\"' || c5 == '%' || c5 == '*' || c5 == '/' || c5 == ':' || c5 == '<' || c5 == '\\' || c5 == '|' || c5 == '>' || c5 == '?';
    }

    public static boolean shouldShowPlayButton(Player player) {
        return shouldShowPlayButton(player, true);
    }

    @UnstableApi
    public static void sneakyThrow(Throwable th) throws Throwable {
        sneakyThrowInternal(th);
    }

    @UnstableApi
    public static String[] split(String str, String str2) {
        return str.split(str2, -1);
    }

    @UnstableApi
    public static String[] splitAtFirst(String str, String str2) {
        return str.split(str2, 2);
    }

    @UnstableApi
    public static String[] splitCodecs(String str) {
        return TextUtils.isEmpty(str) ? new String[0] : split(str.trim(), "(\\s*,\\s*)");
    }

    @UnstableApi
    public static ComponentName startForegroundService(Context context, Intent intent) {
        return SDK_INT >= 26 ? context.startForegroundService(intent) : context.startService(intent);
    }

    @UnstableApi
    public static long subtractWithOverflowDefault(long j10, long j11, long j12) {
        long j13 = j10 - j11;
        return ((j10 ^ j13) & (j11 ^ j10)) < 0 ? j12 : j13;
    }

    @UnstableApi
    public static long sum(long... jArr) {
        long j10 = 0;
        for (long j11 : jArr) {
            j10 += j11;
        }
        return j10;
    }

    @UnstableApi
    public static boolean tableExists(SQLiteDatabase sQLiteDatabase, String str) {
        return DatabaseUtils.queryNumEntries(sQLiteDatabase, "sqlite_master", "tbl_name = ?", new String[]{str}) > 0;
    }

    @UnstableApi
    @Deprecated
    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        return e7.b.b(inputStream);
    }

    @UnstableApi
    public static String toHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (int i6 = 0; i6 < bArr.length; i6++) {
            sb.append(Character.forDigit((bArr[i6] >> 4) & 15, 16));
            sb.append(Character.forDigit(bArr[i6] & 15, 16));
        }
        return sb.toString();
    }

    @UnstableApi
    public static long toLong(int i6, int i10) {
        return toUnsignedLong(i10) | (toUnsignedLong(i6) << 32);
    }

    @UnstableApi
    public static long toUnsignedLong(int i6) {
        return i6 & 4294967295L;
    }

    @UnstableApi
    public static <T, U> ListenableFuture<T> transformFutureAsync(ListenableFuture<U> listenableFuture, AsyncFunction<U, T> asyncFunction) {
        SettableFuture settableFutureCreate = SettableFuture.create();
        settableFutureCreate.addListener(new g(settableFutureCreate, 3, listenableFuture), MoreExecutors.directExecutor());
        listenableFuture.addListener(new i(listenableFuture, settableFutureCreate, asyncFunction, 0), MoreExecutors.directExecutor());
        return settableFutureCreate;
    }

    @UnstableApi
    public static String unescapeFileName(String str) {
        int length = str.length();
        int iEnd = 0;
        int i6 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            if (str.charAt(i10) == '%') {
                i6++;
            }
        }
        if (i6 == 0) {
            return str;
        }
        int i11 = length - (i6 * 2);
        StringBuilder sb = new StringBuilder(i11);
        Matcher matcher = ESCAPED_CHARACTER_PATTERN.matcher(str);
        while (i6 > 0 && matcher.find()) {
            char c5 = (char) Integer.parseInt((String) Assertions.checkNotNull(matcher.group(1)), 16);
            sb.append((CharSequence) str, iEnd, matcher.start());
            sb.append(c5);
            iEnd = matcher.end();
            i6--;
        }
        if (iEnd < length) {
            sb.append((CharSequence) str, iEnd, length);
        }
        if (sb.length() != i11) {
            return null;
        }
        return sb.toString();
    }

    @UnstableApi
    public static long usToMs(long j10) {
        return (j10 == C.TIME_UNSET || j10 == Long.MIN_VALUE) ? j10 : j10 / 1000;
    }

    @UnstableApi
    public static void writeBoolean(Parcel parcel, boolean z7) {
        parcel.writeInt(z7 ? 1 : 0);
    }

    @UnstableApi
    public static long ceilDivide(long j10, long j11) {
        return ((j10 + j11) - 1) / j11;
    }

    @UnstableApi
    public static long constrainValue(long j10, long j11, long j12) {
        return Math.max(j11, Math.min(j10, j12));
    }

    @UnstableApi
    public static Handler createHandlerForCurrentLooper(Handler.Callback callback) {
        return createHandler((Looper) Assertions.checkStateNotNull(Looper.myLooper()), callback);
    }

    @UnstableApi
    public static Handler createHandlerForCurrentOrMainLooper(Handler.Callback callback) {
        return createHandler(getCurrentOrMainLooper(), callback);
    }

    @UnstableApi
    public static String fromUtf8Bytes(byte[] bArr, int i6, int i10) {
        return new String(bArr, i6, i10, StandardCharsets.UTF_8);
    }

    @UnstableApi
    public static boolean handlePlayPauseButtonAction(Player player, boolean z7) {
        return shouldShowPlayButton(player, z7) ? handlePlayButtonAction(player) : handlePauseButtonAction(player);
    }

    @UnstableApi
    public static boolean shouldShowPlayButton(Player player, boolean z7) {
        if (player == null || !player.getPlayWhenReady() || player.getPlaybackState() == 1 || player.getPlaybackState() == 4) {
            return true;
        }
        return z7 && player.getPlaybackSuppressionReason() != 0;
    }

    @UnstableApi
    public static byte[] toByteArray(int... iArr) {
        byte[] bArr = new byte[iArr.length * 4];
        int i6 = 0;
        for (int i10 : iArr) {
            bArr[i6] = (byte) (i10 >> 24);
            bArr[i6 + 1] = (byte) (i10 >> 16);
            int i11 = i6 + 3;
            bArr[i6 + 2] = (byte) (i10 >> 8);
            i6 += 4;
            bArr[i11] = (byte) i10;
        }
        return bArr;
    }

    @UnstableApi
    public static float constrainValue(float f, float f3, float f4) {
        return Math.max(f3, Math.min(f, f4));
    }

    @UnstableApi
    public static <T> boolean contains(SparseArray<T> sparseArray, int i6) {
        return sparseArray.indexOfKey(i6) >= 0;
    }

    @UnstableApi
    public static int linearSearch(long[] jArr, long j10) {
        for (int i6 = 0; i6 < jArr.length; i6++) {
            if (jArr[i6] == j10) {
                return i6;
            }
        }
        return -1;
    }

    @Deprecated
    public static boolean maybeRequestReadExternalStoragePermission(Activity activity, MediaItem... mediaItemArr) {
        return maybeRequestReadStoragePermission(activity, mediaItemArr);
    }

    @UnstableApi
    public static int binarySearchCeil(long[] jArr, long j10, boolean z7, boolean z10) {
        int i6;
        int i10;
        int iBinarySearch = Arrays.binarySearch(jArr, j10);
        if (iBinarySearch < 0) {
            i10 = ~iBinarySearch;
        } else {
            while (true) {
                i6 = iBinarySearch + 1;
                if (i6 >= jArr.length || jArr[i6] != j10) {
                    break;
                }
                iBinarySearch = i6;
            }
            i10 = z7 ? iBinarySearch : i6;
        }
        return z10 ? Math.min(jArr.length - 1, i10) : i10;
    }

    @UnstableApi
    public static int binarySearchFloor(long[] jArr, long j10, boolean z7, boolean z10) {
        int i6;
        int i10;
        int iBinarySearch = Arrays.binarySearch(jArr, j10);
        if (iBinarySearch < 0) {
            i10 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i6 = iBinarySearch - 1;
                if (i6 < 0 || jArr[i6] != j10) {
                    break;
                }
                iBinarySearch = i6;
            }
            i10 = z7 ? iBinarySearch : i6;
        }
        return z10 ? Math.max(0, i10) : i10;
    }

    public static int inferContentType(Uri uri) {
        int iInferContentTypeForExtension;
        String scheme = uri.getScheme();
        if (scheme != null && (b7.b.q("rtsp", scheme) || b7.b.q("rtspt", scheme))) {
            return 3;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return 4;
        }
        int iLastIndexOf = lastPathSegment.lastIndexOf(46);
        if (iLastIndexOf >= 0 && (iInferContentTypeForExtension = inferContentTypeForExtension(lastPathSegment.substring(iLastIndexOf + 1))) != 4) {
            return iInferContentTypeForExtension;
        }
        Matcher matcher = ISM_PATH_PATTERN.matcher((CharSequence) Assertions.checkNotNull(uri.getPath()));
        if (!matcher.matches()) {
            return 4;
        }
        String strGroup = matcher.group(2);
        if (strGroup != null) {
            if (strGroup.contains(ISM_DASH_FORMAT_EXTENSION)) {
                return 0;
            }
            if (strGroup.contains(ISM_HLS_FORMAT_EXTENSION)) {
                return 2;
            }
        }
        return 1;
    }

    @UnstableApi
    public static <T extends Comparable<? super T>> int binarySearchCeil(List<? extends Comparable<? super T>> list, T t5, boolean z7, boolean z10) {
        int i6;
        int i10;
        int iBinarySearch = Collections.binarySearch(list, t5);
        if (iBinarySearch < 0) {
            i10 = ~iBinarySearch;
        } else {
            int size = list.size();
            while (true) {
                i6 = iBinarySearch + 1;
                if (i6 >= size || list.get(i6).compareTo(t5) != 0) {
                    break;
                }
                iBinarySearch = i6;
            }
            i10 = z7 ? iBinarySearch : i6;
        }
        return z10 ? Math.min(list.size() - 1, i10) : i10;
    }

    @UnstableApi
    public static <T extends Comparable<? super T>> int binarySearchFloor(List<? extends Comparable<? super T>> list, T t5, boolean z7, boolean z10) {
        int i6;
        int i10;
        int iBinarySearch = Collections.binarySearch(list, t5);
        if (iBinarySearch < 0) {
            i10 = -(iBinarySearch + 2);
        } else {
            while (true) {
                i6 = iBinarySearch - 1;
                if (i6 < 0 || list.get(i6).compareTo(t5) != 0) {
                    break;
                }
                iBinarySearch = i6;
            }
            i10 = z7 ? iBinarySearch : i6;
        }
        return z10 ? Math.max(0, i10) : i10;
    }

    @UnstableApi
    public static Format getPcmFormat(AudioProcessor.AudioFormat audioFormat) {
        return getPcmFormat(audioFormat.encoding, audioFormat.channelCount, audioFormat.sampleRate);
    }

    @UnstableApi
    public static Point getCurrentDisplayModeSize(Context context, Display display) throws ClassNotFoundException, NumberFormatException {
        String systemProperty;
        if (display.getDisplayId() == 0 && isTv(context)) {
            if (SDK_INT < 28) {
                systemProperty = getSystemProperty("sys.display-size");
            } else {
                systemProperty = getSystemProperty("vendor.display-size");
            }
            if (!TextUtils.isEmpty(systemProperty)) {
                try {
                    String[] strArrSplit = split(systemProperty.trim(), "x");
                    if (strArrSplit.length == 2) {
                        int i6 = Integer.parseInt(strArrSplit[0]);
                        int i10 = Integer.parseInt(strArrSplit[1]);
                        if (i6 > 0 && i10 > 0) {
                            return new Point(i6, i10);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                Log.e(TAG, "Invalid display size: " + systemProperty);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        if (SDK_INT >= 23) {
            getDisplaySizeV23(display, point);
        } else {
            display.getRealSize(point);
        }
        return point;
    }

    private static boolean maybeRequestReadStoragePermission(Activity activity, Uri uri) {
        if (!isReadStoragePermissionRequestNeeded(activity, uri)) {
            return false;
        }
        if (SDK_INT < 33) {
            return requestExternalStoragePermission(activity);
        }
        return requestReadMediaPermissions(activity);
    }

    @UnstableApi
    public static byte[] toByteArray(float f) {
        int iFloatToIntBits = Float.floatToIntBits(f);
        return new byte[]{(byte) (iFloatToIntBits >> 24), (byte) (iFloatToIntBits >> 16), (byte) (iFloatToIntBits >> 8), (byte) iFloatToIntBits};
    }

    @UnstableApi
    public static int binarySearchFloor(LongArray longArray, long j10, boolean z7, boolean z10) {
        int i6;
        int size = longArray.size() - 1;
        int i10 = 0;
        while (i10 <= size) {
            int i11 = (i10 + size) >>> 1;
            if (longArray.get(i11) < j10) {
                i10 = i11 + 1;
            } else {
                size = i11 - 1;
            }
        }
        if (z7 && (i6 = size + 1) < longArray.size() && longArray.get(i6) == j10) {
            return i6;
        }
        if (z10 && size == -1) {
            return 0;
        }
        return size;
    }

    @UnstableApi
    @Deprecated
    public static int inferContentType(String str) {
        return inferContentType(Uri.parse("file:///" + str));
    }

    @UnstableApi
    public static <T> T castNonNull(T t5) {
        return t5;
    }

    @UnstableApi
    public static <T> T[] castNonNullTypeArray(T[] tArr) {
        return tArr;
    }

    private static <T extends Throwable> void sneakyThrowInternal(Throwable th) throws Throwable {
        throw th;
    }
}
