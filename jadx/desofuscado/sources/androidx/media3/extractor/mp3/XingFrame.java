package androidx.media3.extractor.mp3;

import androidx.media3.common.C;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class XingFrame {
    public final long dataSize;
    public final int encoderDelay;
    public final int encoderPadding;
    public final long frameCount;
    public final MpegAudioUtil.Header header;
    public final long[] tableOfContents;

    private XingFrame(MpegAudioUtil.Header header, long j10, long j11, long[] jArr, int i6, int i10) {
        this.header = new MpegAudioUtil.Header(header);
        this.frameCount = j10;
        this.dataSize = j11;
        this.tableOfContents = jArr;
        this.encoderDelay = i6;
        this.encoderPadding = i10;
    }

    public static XingFrame parse(MpegAudioUtil.Header header, ParsableByteArray parsableByteArray) {
        long[] jArr;
        int i6;
        int i10;
        int i11 = parsableByteArray.readInt();
        int unsignedIntToInt = (i11 & 1) != 0 ? parsableByteArray.readUnsignedIntToInt() : -1;
        long unsignedInt = (i11 & 2) != 0 ? parsableByteArray.readUnsignedInt() : -1L;
        if ((i11 & 4) == 4) {
            long[] jArr2 = new long[100];
            for (int i12 = 0; i12 < 100; i12++) {
                jArr2[i12] = parsableByteArray.readUnsignedByte();
            }
            jArr = jArr2;
        } else {
            jArr = null;
        }
        if ((i11 & 8) != 0) {
            parsableByteArray.skipBytes(4);
        }
        if (parsableByteArray.bytesLeft() >= 24) {
            parsableByteArray.skipBytes(21);
            int unsignedInt24 = parsableByteArray.readUnsignedInt24();
            i10 = unsignedInt24 & 4095;
            i6 = (16773120 & unsignedInt24) >> 12;
        } else {
            i6 = -1;
            i10 = -1;
        }
        return new XingFrame(header, unsignedIntToInt, unsignedInt, jArr, i6, i10);
    }

    public long computeDurationUs() {
        long j10 = this.frameCount;
        if (j10 == -1 || j10 == 0) {
            return C.TIME_UNSET;
        }
        return Util.sampleCountToDurationUs((j10 * r2.samplesPerFrame) - 1, this.header.sampleRate);
    }
}
