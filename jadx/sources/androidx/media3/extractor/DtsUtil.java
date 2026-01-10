package androidx.media3.extractor;

import androidx.media3.common.C;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.RendererCapabilities;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class DtsUtil {
    public static final int DTS_EXPRESS_MAX_RATE_BITS_PER_SECOND = 768000;
    public static final int DTS_HD_MAX_RATE_BYTES_PER_SECOND = 2250000;
    private static final byte FIRST_BYTE_14B_BE = 31;
    private static final byte FIRST_BYTE_14B_LE = -1;
    private static final byte FIRST_BYTE_BE = 127;
    private static final byte FIRST_BYTE_EXTSS_BE = 100;
    private static final byte FIRST_BYTE_EXTSS_LE = 37;
    private static final byte FIRST_BYTE_LE = -2;
    private static final byte FIRST_BYTE_UHD_FTOC_NONSYNC_BE = 113;
    private static final byte FIRST_BYTE_UHD_FTOC_NONSYNC_LE = -24;
    private static final byte FIRST_BYTE_UHD_FTOC_SYNC_BE = 64;
    private static final byte FIRST_BYTE_UHD_FTOC_SYNC_LE = -14;
    public static final int FRAME_TYPE_CORE = 1;
    public static final int FRAME_TYPE_EXTENSION_SUBSTREAM = 2;
    public static final int FRAME_TYPE_UHD_NON_SYNC = 4;
    public static final int FRAME_TYPE_UHD_SYNC = 3;
    public static final int FRAME_TYPE_UNKNOWN = 0;
    private static final int SYNC_VALUE_14B_BE = 536864768;
    private static final int SYNC_VALUE_14B_LE = -14745368;
    private static final int SYNC_VALUE_BE = 2147385345;
    private static final int SYNC_VALUE_EXTSS_BE = 1683496997;
    private static final int SYNC_VALUE_EXTSS_LE = 622876772;
    private static final int SYNC_VALUE_LE = -25230976;
    private static final int SYNC_VALUE_UHD_FTOC_NONSYNC_BE = 1908687592;
    private static final int SYNC_VALUE_UHD_FTOC_NONSYNC_LE = -398277519;
    private static final int SYNC_VALUE_UHD_FTOC_SYNC_BE = 1078008818;
    private static final int SYNC_VALUE_UHD_FTOC_SYNC_LE = -233094848;
    private static final int[] CHANNELS_BY_AMODE = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] SAMPLE_RATE_BY_SFREQ = {-1, 8000, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 32000, -1, -1, 11025, 22050, 44100, -1, -1, 12000, 24000, OpusUtil.SAMPLE_RATE, -1, -1};
    private static final int[] TWICE_BITRATE_KBPS_BY_RATE = {64, 112, 128, 192, 224, 256, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 640, 768, 896, 1024, 1152, 1280, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    public static final int DTS_MAX_RATE_BYTES_PER_SECOND = 192000;
    private static final int[] SAMPLE_RATE_BY_INDEX = {8000, AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND, 32000, 64000, 128000, 22050, 44100, 88200, 176400, 352800, 12000, 24000, OpusUtil.SAMPLE_RATE, 96000, DTS_MAX_RATE_BYTES_PER_SECOND, 384000};
    private static final int[] UHD_FTOC_PAYLOAD_LENGTH_TABLE = {5, 8, 10, 12};
    private static final int[] UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE = {6, 9, 12, 15};
    private static final int[] UHD_AUDIO_CHUNK_ID_LENGTH_TABLE = {2, 4, 6, 8};
    private static final int[] UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE = {9, 11, 13, 16};
    private static final int[] UHD_HEADER_SIZE_LENGTH_TABLE = {5, 8, 10, 12};

    /* compiled from: MyApplication */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DtsAudioMimeType {
    }

    /* compiled from: MyApplication */
    public static final class DtsHeader {
        public final int bitrate;
        public final int channelCount;
        public final long frameDurationUs;
        public final int frameSize;
        public final String mimeType;
        public final int sampleRate;

        private DtsHeader(String str, int i6, int i10, int i11, long j10, int i12) {
            this.mimeType = str;
            this.channelCount = i6;
            this.sampleRate = i10;
            this.frameSize = i11;
            this.frameDurationUs = j10;
            this.bitrate = i12;
        }
    }

    /* compiled from: MyApplication */
    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface FrameType {
    }

    private DtsUtil() {
    }

    private static void checkCrc(byte[] bArr, int i6) throws ParserException {
        int i10 = i6 - 2;
        if (((bArr[i6 - 1] & FIRST_BYTE_14B_LE) | ((bArr[i10] << 8) & 65535)) != Util.crc16(bArr, 0, i10, 65535)) {
            throw ParserException.createForMalformedContainer("CRC check failed", null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:17:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int getDtsFrameSize(byte[] r7) {
        /*
            r0 = 0
            r1 = r7[r0]
            r2 = -2
            r3 = 7
            r4 = 6
            r5 = 1
            r6 = 4
            if (r1 == r2) goto L4f
            r2 = -1
            if (r1 == r2) goto L3e
            r2 = 31
            if (r1 == r2) goto L26
            r1 = 5
            r1 = r7[r1]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r4]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r3]
        L20:
            r7 = r7 & 240(0xf0, float:3.36E-43)
            int r7 = r7 >> r6
            r7 = r7 | r1
            int r7 = r7 + r5
            goto L5e
        L26:
            r0 = r7[r4]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r3]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 8
            r7 = r7[r1]
        L36:
            r7 = r7 & 60
            int r7 = r7 >> 2
            r7 = r7 | r0
            int r7 = r7 + r5
            r0 = 1
            goto L5e
        L3e:
            r0 = r7[r3]
            r0 = r0 & 3
            int r0 = r0 << 12
            r1 = r7[r4]
            r1 = r1 & 255(0xff, float:3.57E-43)
            int r1 = r1 << r6
            r0 = r0 | r1
            r1 = 9
            r7 = r7[r1]
            goto L36
        L4f:
            r1 = r7[r6]
            r1 = r1 & 3
            int r1 = r1 << 12
            r2 = r7[r3]
            r2 = r2 & 255(0xff, float:3.57E-43)
            int r2 = r2 << r6
            r1 = r1 | r2
            r7 = r7[r4]
            goto L20
        L5e:
            if (r0 == 0) goto L64
            int r7 = r7 * 16
            int r7 = r7 / 14
        L64:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.DtsUtil.getDtsFrameSize(byte[]):int");
    }

    public static int getFrameType(int i6) {
        if (i6 == SYNC_VALUE_BE || i6 == SYNC_VALUE_LE || i6 == SYNC_VALUE_14B_BE || i6 == SYNC_VALUE_14B_LE) {
            return 1;
        }
        if (i6 == SYNC_VALUE_EXTSS_BE || i6 == SYNC_VALUE_EXTSS_LE) {
            return 2;
        }
        if (i6 == SYNC_VALUE_UHD_FTOC_SYNC_BE || i6 == SYNC_VALUE_UHD_FTOC_SYNC_LE) {
            return 3;
        }
        return (i6 == SYNC_VALUE_UHD_FTOC_NONSYNC_BE || i6 == SYNC_VALUE_UHD_FTOC_NONSYNC_LE) ? 4 : 0;
    }

    private static ParsableBitArray getNormalizedFrame(byte[] bArr) {
        byte b8 = bArr[0];
        if (b8 == 127 || b8 == 100 || b8 == 64 || b8 == 113) {
            return new ParsableBitArray(bArr);
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
        if (isLittleEndianFrameHeader(bArrCopyOf)) {
            for (int i6 = 0; i6 < bArrCopyOf.length - 1; i6 += 2) {
                byte b10 = bArrCopyOf[i6];
                int i10 = i6 + 1;
                bArrCopyOf[i6] = bArrCopyOf[i10];
                bArrCopyOf[i10] = b10;
            }
        }
        ParsableBitArray parsableBitArray = new ParsableBitArray(bArrCopyOf);
        if (bArrCopyOf[0] == 31) {
            ParsableBitArray parsableBitArray2 = new ParsableBitArray(bArrCopyOf);
            while (parsableBitArray2.bitsLeft() >= 16) {
                parsableBitArray2.skipBits(2);
                parsableBitArray.putInt(parsableBitArray2.readBits(14), 14);
            }
        }
        parsableBitArray.reset(bArrCopyOf);
        return parsableBitArray;
    }

    private static boolean isLittleEndianFrameHeader(byte[] bArr) {
        byte b8 = bArr[0];
        return b8 == -2 || b8 == -1 || b8 == 37 || b8 == -14 || b8 == -24;
    }

    public static int parseDtsAudioSampleCount(byte[] bArr) {
        int i6;
        byte b8;
        int i10;
        byte b10;
        byte b11 = bArr[0];
        if (b11 != -2) {
            if (b11 == -1) {
                i6 = (bArr[4] & 7) << 4;
                b10 = bArr[7];
            } else if (b11 != 31) {
                i6 = (bArr[4] & 1) << 6;
                b8 = bArr[5];
            } else {
                i6 = (bArr[5] & 7) << 4;
                b10 = bArr[6];
            }
            i10 = b10 & 60;
            return (((i10 >> 2) | i6) + 1) * 32;
        }
        i6 = (bArr[5] & 1) << 6;
        b8 = bArr[4];
        i10 = b8 & 252;
        return (((i10 >> 2) | i6) + 1) * 32;
    }

    public static Format parseDtsFormat(byte[] bArr, String str, String str2, int i6, String str3, DrmInitData drmInitData) {
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(60);
        int i10 = CHANNELS_BY_AMODE[normalizedFrame.readBits(6)];
        int i11 = SAMPLE_RATE_BY_SFREQ[normalizedFrame.readBits(4)];
        int bits = normalizedFrame.readBits(5);
        int[] iArr = TWICE_BITRATE_KBPS_BY_RATE;
        int i12 = bits >= iArr.length ? -1 : (iArr[bits] * 1000) / 2;
        normalizedFrame.skipBits(10);
        return new Format.Builder().setId(str).setContainerMimeType(str3).setSampleMimeType(MimeTypes.AUDIO_DTS).setAverageBitrate(i12).setChannelCount(i10 + (normalizedFrame.readBits(2) > 0 ? 1 : 0)).setSampleRate(i11).setDrmInitData(drmInitData).setLanguage(str2).setRoleFlags(i6).build();
    }

    public static DtsHeader parseDtsHdHeader(byte[] bArr) throws ParserException {
        int i6;
        int i10;
        int bits;
        int bits2;
        int i11;
        long jScaleLargeTimestamp;
        int i12;
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(40);
        int bits3 = normalizedFrame.readBits(2);
        if (normalizedFrame.readBit()) {
            i6 = 20;
            i10 = 12;
        } else {
            i6 = 16;
            i10 = 8;
        }
        normalizedFrame.skipBits(i10);
        int bits4 = normalizedFrame.readBits(i6) + 1;
        boolean bit = normalizedFrame.readBit();
        int i13 = 0;
        if (bit) {
            bits = normalizedFrame.readBits(2);
            int bits5 = (normalizedFrame.readBits(3) + 1) * 512;
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(36);
            }
            int bits6 = normalizedFrame.readBits(3) + 1;
            int bits7 = normalizedFrame.readBits(3) + 1;
            if (bits6 != 1 || bits7 != 1) {
                throw ParserException.createForUnsupportedContainerFeature("Multiple audio presentations or assets not supported");
            }
            int i14 = bits3 + 1;
            int bits8 = normalizedFrame.readBits(i14);
            for (int i15 = 0; i15 < i14; i15++) {
                if (((bits8 >> i15) & 1) == 1) {
                    normalizedFrame.skipBits(8);
                }
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(2);
                int bits9 = (normalizedFrame.readBits(2) + 1) << 2;
                int bits10 = normalizedFrame.readBits(2) + 1;
                while (i13 < bits10) {
                    normalizedFrame.skipBits(bits9);
                    i13++;
                }
            }
            i13 = bits5;
        } else {
            bits = -1;
        }
        normalizedFrame.skipBits(i6);
        normalizedFrame.skipBits(12);
        if (bit) {
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(4);
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(24);
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBytes(normalizedFrame.readBits(10) + 1);
            }
            normalizedFrame.skipBits(5);
            int i16 = SAMPLE_RATE_BY_INDEX[normalizedFrame.readBits(4)];
            bits2 = normalizedFrame.readBits(8) + 1;
            i11 = i16;
        } else {
            bits2 = -1;
            i11 = C.RATE_UNSET_INT;
        }
        if (bit) {
            if (bits == 0) {
                i12 = 32000;
            } else if (bits == 1) {
                i12 = 44100;
            } else {
                if (bits != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported reference clock code in DTS HD header: " + bits, null);
                }
                i12 = OpusUtil.SAMPLE_RATE;
            }
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(i13, 1000000L, i12);
        } else {
            jScaleLargeTimestamp = C.TIME_UNSET;
        }
        return new DtsHeader(MimeTypes.AUDIO_DTS_EXPRESS, bits2, i11, bits4, jScaleLargeTimestamp, 0);
    }

    public static int parseDtsHdHeaderSize(byte[] bArr) {
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(42);
        return normalizedFrame.readBits(normalizedFrame.readBit() ? 12 : 8) + 1;
    }

    public static DtsHeader parseDtsUhdHeader(byte[] bArr, AtomicInteger atomicInteger) throws ParserException {
        long jScaleLargeTimestamp;
        int bits;
        int i6;
        int i10;
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        int i11 = normalizedFrame.readBits(32) == SYNC_VALUE_UHD_FTOC_SYNC_BE ? 1 : 0;
        int unsignedVarInt = parseUnsignedVarInt(normalizedFrame, UHD_FTOC_PAYLOAD_LENGTH_TABLE, true) + 1;
        if (i11 == 0) {
            jScaleLargeTimestamp = -9223372036854775807L;
            bits = C.RATE_UNSET_INT;
        } else {
            if (!normalizedFrame.readBit()) {
                throw ParserException.createForUnsupportedContainerFeature("Only supports full channel mask-based audio presentation");
            }
            checkCrc(bArr, unsignedVarInt);
            int bits2 = normalizedFrame.readBits(2);
            if (bits2 == 0) {
                i6 = 512;
            } else if (bits2 == 1) {
                i6 = 480;
            } else {
                if (bits2 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported base duration index in DTS UHD header: " + bits2, null);
                }
                i6 = RendererCapabilities.DECODER_SUPPORT_MASK;
            }
            int bits3 = (normalizedFrame.readBits(3) + 1) * i6;
            int bits4 = normalizedFrame.readBits(2);
            if (bits4 == 0) {
                i10 = 32000;
            } else if (bits4 == 1) {
                i10 = 44100;
            } else {
                if (bits4 != 2) {
                    throw ParserException.createForMalformedContainer("Unsupported clock rate index in DTS UHD header: " + bits4, null);
                }
                i10 = OpusUtil.SAMPLE_RATE;
            }
            if (normalizedFrame.readBit()) {
                normalizedFrame.skipBits(36);
            }
            bits = (1 << normalizedFrame.readBits(2)) * i10;
            jScaleLargeTimestamp = Util.scaleLargeTimestamp(bits3, 1000000L, i10);
        }
        int unsignedVarInt2 = 0;
        for (int i12 = 0; i12 < i11; i12++) {
            unsignedVarInt2 += parseUnsignedVarInt(normalizedFrame, UHD_METADATA_CHUNK_SIZE_LENGTH_TABLE, true);
        }
        if (i11 != 0) {
            atomicInteger.set(parseUnsignedVarInt(normalizedFrame, UHD_AUDIO_CHUNK_ID_LENGTH_TABLE, true));
        }
        return new DtsHeader(MimeTypes.AUDIO_DTS_X, 2, bits, unsignedVarInt2 + (atomicInteger.get() != 0 ? parseUnsignedVarInt(normalizedFrame, UHD_AUDIO_CHUNK_SIZE_LENGTH_TABLE, true) : 0) + unsignedVarInt, jScaleLargeTimestamp, 0);
    }

    public static int parseDtsUhdHeaderSize(byte[] bArr) {
        ParsableBitArray normalizedFrame = getNormalizedFrame(bArr);
        normalizedFrame.skipBits(32);
        return parseUnsignedVarInt(normalizedFrame, UHD_HEADER_SIZE_LENGTH_TABLE, true) + 1;
    }

    private static int parseUnsignedVarInt(ParsableBitArray parsableBitArray, int[] iArr, boolean z7) {
        int i6 = 0;
        int i10 = 0;
        for (int i11 = 0; i11 < 3 && parsableBitArray.readBit(); i11++) {
            i10++;
        }
        if (z7) {
            int i12 = 0;
            while (i6 < i10) {
                i12 += 1 << iArr[i6];
                i6++;
            }
            i6 = i12;
        }
        return parsableBitArray.readBits(iArr[i10]) + i6;
    }

    public static int parseDtsAudioSampleCount(ByteBuffer byteBuffer) {
        int i6;
        byte b8;
        int i10;
        byte b10;
        if (byteBuffer.getInt(0) == SYNC_VALUE_UHD_FTOC_SYNC_LE || byteBuffer.getInt(0) == SYNC_VALUE_UHD_FTOC_NONSYNC_LE) {
            return 1024;
        }
        if (byteBuffer.getInt(0) == SYNC_VALUE_EXTSS_LE) {
            return 4096;
        }
        int iPosition = byteBuffer.position();
        byte b11 = byteBuffer.get(iPosition);
        if (b11 != -2) {
            if (b11 == -1) {
                i6 = (byteBuffer.get(iPosition + 4) & 7) << 4;
                b10 = byteBuffer.get(iPosition + 7);
            } else if (b11 != 31) {
                i6 = (byteBuffer.get(iPosition + 4) & 1) << 6;
                b8 = byteBuffer.get(iPosition + 5);
            } else {
                i6 = (byteBuffer.get(iPosition + 5) & 7) << 4;
                b10 = byteBuffer.get(iPosition + 6);
            }
            i10 = b10 & 60;
            return (((i10 >> 2) | i6) + 1) * 32;
        }
        i6 = (byteBuffer.get(iPosition + 5) & 1) << 6;
        b8 = byteBuffer.get(iPosition + 4);
        i10 = b8 & 252;
        return (((i10 >> 2) | i6) + 1) * 32;
    }
}
