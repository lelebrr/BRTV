package okhttp3.internal.http2;

import a.e;
import j9.i;
import okhttp3.internal.Util;
import okio.ByteString;
import r9.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Http2 {
    private static final String[] BINARY;
    public static final int FLAG_ACK = 1;
    public static final int FLAG_COMPRESSED = 32;
    public static final int FLAG_END_HEADERS = 4;
    public static final int FLAG_END_PUSH_PROMISE = 4;
    public static final int FLAG_END_STREAM = 1;
    public static final int FLAG_NONE = 0;
    public static final int FLAG_PADDED = 8;
    public static final int FLAG_PRIORITY = 32;
    public static final int INITIAL_MAX_FRAME_SIZE = 16384;
    public static final int TYPE_CONTINUATION = 9;
    public static final int TYPE_DATA = 0;
    public static final int TYPE_GOAWAY = 7;
    public static final int TYPE_HEADERS = 1;
    public static final int TYPE_PING = 6;
    public static final int TYPE_PRIORITY = 2;
    public static final int TYPE_PUSH_PROMISE = 5;
    public static final int TYPE_RST_STREAM = 3;
    public static final int TYPE_SETTINGS = 4;
    public static final int TYPE_WINDOW_UPDATE = 8;
    public static final Http2 INSTANCE = new Http2();
    public static final ByteString CONNECTION_PREFACE = ByteString.Companion.encodeUtf8("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    private static final String[] FRAME_NAMES = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    private static final String[] FLAGS = new String[64];

    static {
        String[] strArr = new String[256];
        for (int i6 = 0; i6 < 256; i6++) {
            String binaryString = Integer.toBinaryString(i6);
            i.e(binaryString, "toBinaryString(it)");
            strArr[i6] = n.S(' ', Util.format("%8s", binaryString), '0');
        }
        BINARY = strArr;
        String[] strArr2 = FLAGS;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i10 = iArr[0];
        strArr2[i10 | 8] = e.t(new StringBuilder(), strArr2[i10], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i11 = 0; i11 < 3; i11++) {
            int i12 = iArr2[i11];
            int i13 = iArr[0];
            String[] strArr3 = FLAGS;
            int i14 = i13 | i12;
            strArr3[i14] = strArr3[i13] + '|' + strArr3[i12];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i13]);
            sb.append('|');
            strArr3[i14 | 8] = e.t(sb, strArr3[i12], "|PADDED");
        }
        int length = FLAGS.length;
        for (int i15 = 0; i15 < length; i15++) {
            String[] strArr4 = FLAGS;
            if (strArr4[i15] == null) {
                strArr4[i15] = BINARY[i15];
            }
        }
    }

    private Http2() {
    }

    public final String formatFlags(int i6, int i10) {
        String str;
        if (i10 == 0) {
            return "";
        }
        if (i6 != 2 && i6 != 3) {
            if (i6 == 4 || i6 == 6) {
                return i10 == 1 ? "ACK" : BINARY[i10];
            }
            if (i6 != 7 && i6 != 8) {
                String[] strArr = FLAGS;
                if (i10 < strArr.length) {
                    str = strArr[i10];
                    i.c(str);
                } else {
                    str = BINARY[i10];
                }
                return (i6 != 5 || (i10 & 4) == 0) ? (i6 != 0 || (i10 & 32) == 0) ? str : n.T(str, "PRIORITY", "COMPRESSED") : n.T(str, "HEADERS", "PUSH_PROMISE");
            }
        }
        return BINARY[i10];
    }

    public final String formattedType$okhttp(int i6) {
        String[] strArr = FRAME_NAMES;
        return i6 < strArr.length ? strArr[i6] : Util.format("0x%02x", Integer.valueOf(i6));
    }

    public final String frameLog(boolean z7, int i6, int i10, int i11, int i12) {
        return Util.format("%s 0x%08x %5d %-13s %s", z7 ? "<<" : ">>", Integer.valueOf(i6), Integer.valueOf(i10), formattedType$okhttp(i11), formatFlags(i11, i12));
    }
}
