package androidx.media3.extractor.mp3;

import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class XingSeeker implements Seeker {
    private static final String TAG = "XingSeeker";
    private final int bitrate;
    private final long dataEndPosition;
    private final long dataSize;
    private final long dataStartPosition;
    private final long durationUs;
    private final long[] tableOfContents;
    private final int xingFrameSize;

    private XingSeeker(long j10, int i6, long j11, int i10) {
        this(j10, i6, j11, i10, -1L, null);
    }

    public static XingSeeker create(XingFrame xingFrame, long j10) {
        long[] jArr;
        long jComputeDurationUs = xingFrame.computeDurationUs();
        if (jComputeDurationUs == C.TIME_UNSET) {
            return null;
        }
        long j11 = xingFrame.dataSize;
        if (j11 == -1 || (jArr = xingFrame.tableOfContents) == null) {
            MpegAudioUtil.Header header = xingFrame.header;
            return new XingSeeker(j10, header.frameSize, jComputeDurationUs, header.bitrate);
        }
        MpegAudioUtil.Header header2 = xingFrame.header;
        return new XingSeeker(j10, header2.frameSize, jComputeDurationUs, header2.bitrate, j11, jArr);
    }

    private long getTimeUsForTableIndex(int i6) {
        return (this.durationUs * i6) / 100;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public int getAverageBitrate() {
        return this.bitrate;
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // androidx.media3.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // androidx.media3.extractor.SeekMap
    public SeekMap.SeekPoints getSeekPoints(long j10) {
        if (!isSeekable()) {
            return new SeekMap.SeekPoints(new SeekPoint(0L, this.dataStartPosition + this.xingFrameSize));
        }
        long jConstrainValue = Util.constrainValue(j10, 0L, this.durationUs);
        double d = (jConstrainValue * 100.0d) / this.durationUs;
        double d10 = 0.0d;
        if (d > 0.0d) {
            if (d >= 100.0d) {
                d10 = 256.0d;
            } else {
                int i6 = (int) d;
                double d11 = ((long[]) Assertions.checkStateNotNull(this.tableOfContents))[i6];
                d10 = d11 + (((i6 == 99 ? 256.0d : r3[i6 + 1]) - d11) * (d - i6));
            }
        }
        return new SeekMap.SeekPoints(new SeekPoint(jConstrainValue, this.dataStartPosition + Util.constrainValue(Math.round((d10 / 256.0d) * this.dataSize), this.xingFrameSize, this.dataSize - 1)));
    }

    @Override // androidx.media3.extractor.mp3.Seeker
    public long getTimeUs(long j10) {
        long j11 = j10 - this.dataStartPosition;
        if (!isSeekable() || j11 <= this.xingFrameSize) {
            return 0L;
        }
        long[] jArr = (long[]) Assertions.checkStateNotNull(this.tableOfContents);
        double d = (j11 * 256.0d) / this.dataSize;
        int iBinarySearchFloor = Util.binarySearchFloor(jArr, (long) d, true, true);
        long timeUsForTableIndex = getTimeUsForTableIndex(iBinarySearchFloor);
        long j12 = jArr[iBinarySearchFloor];
        int i6 = iBinarySearchFloor + 1;
        long timeUsForTableIndex2 = getTimeUsForTableIndex(i6);
        return Math.round((j12 == (iBinarySearchFloor == 99 ? 256L : jArr[i6]) ? 0.0d : (d - j12) / (r0 - j12)) * (timeUsForTableIndex2 - timeUsForTableIndex)) + timeUsForTableIndex;
    }

    @Override // androidx.media3.extractor.SeekMap
    public boolean isSeekable() {
        return this.tableOfContents != null;
    }

    private XingSeeker(long j10, int i6, long j11, int i10, long j12, long[] jArr) {
        this.dataStartPosition = j10;
        this.xingFrameSize = i6;
        this.durationUs = j11;
        this.bitrate = i10;
        this.dataSize = j12;
        this.tableOfContents = jArr;
        this.dataEndPosition = j12 != -1 ? j10 + j12 : -1L;
    }
}
