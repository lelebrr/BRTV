package okio;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.exoplayer.upstream.CmcdData;
import j9.i;
import okio.Buffer;
import r9.n;

/* compiled from: MyApplication */
/* renamed from: okio.-SegmentedByteString, reason: invalid class name */
/* loaded from: classes.dex */
public final class SegmentedByteString {
    private static final Buffer.UnsafeCursor DEFAULT__new_UnsafeCursor = new Buffer.UnsafeCursor();
    private static final int DEFAULT__ByteString_size = -1234567890;

    public static final int and(byte b8, int i6) {
        return b8 & i6;
    }

    public static final boolean arrayRangeEquals(byte[] bArr, int i6, byte[] bArr2, int i10, int i11) {
        i.f(bArr, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        i.f(bArr2, "b");
        for (int i12 = 0; i12 < i11; i12++) {
            if (bArr[i12 + i6] != bArr2[i12 + i10]) {
                return false;
            }
        }
        return true;
    }

    public static final void checkOffsetAndCount(long j10, long j11, long j12) {
        if ((j11 | j12) < 0 || j11 > j10 || j10 - j11 < j12) {
            throw new ArrayIndexOutOfBoundsException("size=" + j10 + " offset=" + j11 + " byteCount=" + j12);
        }
    }

    public static final int getDEFAULT__ByteString_size() {
        return DEFAULT__ByteString_size;
    }

    public static final Buffer.UnsafeCursor getDEFAULT__new_UnsafeCursor() {
        return DEFAULT__new_UnsafeCursor;
    }

    public static final int leftRotate(int i6, int i10) {
        return (i6 >>> (32 - i10)) | (i6 << i10);
    }

    public static final long minOf(long j10, int i6) {
        return Math.min(j10, i6);
    }

    public static final Buffer.UnsafeCursor resolveDefaultParameter(Buffer.UnsafeCursor unsafeCursor) {
        i.f(unsafeCursor, "unsafeCursor");
        return unsafeCursor == DEFAULT__new_UnsafeCursor ? new Buffer.UnsafeCursor() : unsafeCursor;
    }

    public static final int reverseBytes(int i6) {
        return ((i6 & 255) << 24) | (((-16777216) & i6) >>> 24) | ((16711680 & i6) >>> 8) | ((65280 & i6) << 8);
    }

    public static final long rightRotate(long j10, int i6) {
        return (j10 << (64 - i6)) | (j10 >>> i6);
    }

    public static final int shl(byte b8, int i6) {
        return b8 << i6;
    }

    public static final int shr(byte b8, int i6) {
        return b8 >> i6;
    }

    public static final String toHexString(byte b8) {
        return new String(new char[]{okio.internal.ByteString.getHEX_DIGIT_CHARS()[(b8 >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[b8 & 15]});
    }

    public static final byte xor(byte b8, byte b10) {
        return (byte) (b8 ^ b10);
    }

    public static final long and(byte b8, long j10) {
        return b8 & j10;
    }

    public static final long minOf(int i6, long j10) {
        return Math.min(i6, j10);
    }

    public static final int resolveDefaultParameter(ByteString byteString, int i6) {
        i.f(byteString, "<this>");
        return i6 == DEFAULT__ByteString_size ? byteString.size() : i6;
    }

    public static final long reverseBytes(long j10) {
        return ((j10 & 255) << 56) | (((-72057594037927936L) & j10) >>> 56) | ((71776119061217280L & j10) >>> 40) | ((280375465082880L & j10) >>> 24) | ((1095216660480L & j10) >>> 8) | ((4278190080L & j10) << 8) | ((16711680 & j10) << 24) | ((65280 & j10) << 40);
    }

    public static final long and(int i6, long j10) {
        return i6 & j10;
    }

    public static final int resolveDefaultParameter(byte[] bArr, int i6) {
        i.f(bArr, "<this>");
        return i6 == DEFAULT__ByteString_size ? bArr.length : i6;
    }

    public static final short reverseBytes(short s10) {
        return (short) (((s10 & 255) << 8) | ((65280 & s10) >>> 8));
    }

    public static final String toHexString(int i6) {
        int i10 = 0;
        if (i6 == 0) {
            return SessionDescription.SUPPORTED_SDP_VERSION;
        }
        char[] cArr = {okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i6 >> 28) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i6 >> 24) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i6 >> 20) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i6 >> 16) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i6 >> 12) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i6 >> 8) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(i6 >> 4) & 15], okio.internal.ByteString.getHEX_DIGIT_CHARS()[i6 & 15]};
        while (i10 < 8 && cArr[i10] == '0') {
            i10++;
        }
        return n.N(cArr, i10, 8);
    }

    public static final String toHexString(long j10) {
        if (j10 == 0) {
            return SessionDescription.SUPPORTED_SDP_VERSION;
        }
        char[] cArr = {okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 60) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 56) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 52) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 48) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 44) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 40) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 36) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 32) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 28) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 24) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 20) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 16) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 12) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 8) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) ((j10 >> 4) & 15)], okio.internal.ByteString.getHEX_DIGIT_CHARS()[(int) (j10 & 15)]};
        int i6 = 0;
        while (i6 < 16 && cArr[i6] == '0') {
            i6++;
        }
        return n.N(cArr, i6, 16);
    }

    public static /* synthetic */ void getDEFAULT__new_UnsafeCursor$annotations() {
    }
}
