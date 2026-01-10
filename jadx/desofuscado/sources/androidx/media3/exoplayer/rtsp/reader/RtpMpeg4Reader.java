package androidx.media3.exoplayer.rtsp.reader;

import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.rtsp.RtpPacket;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;
import b7.b;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtpMpeg4Reader implements RtpPayloadReader {
    private static final int I_VOP = 0;
    private static final int MEDIA_CLOCK_FREQUENCY = 90000;
    private static final String TAG = "RtpMpeg4Reader";
    private int bufferFlags;
    private final RtpPayloadFormat payloadFormat;
    private int sampleLength;
    private long startTimeOffsetUs;
    private TrackOutput trackOutput;
    private long firstReceivedTimestamp = C.TIME_UNSET;
    private int previousSequenceNumber = -1;

    public RtpMpeg4Reader(RtpPayloadFormat rtpPayloadFormat) {
        this.payloadFormat = rtpPayloadFormat;
    }

    private static int getBufferFlagsFromVop(ParsableByteArray parsableByteArray) {
        byte[] data = parsableByteArray.getData();
        byte[] bArr = {0, 0, 1, -74};
        b.j(data, "array");
        int i6 = 0;
        loop0: while (true) {
            if (i6 >= data.length - 3) {
                i6 = -1;
                break;
            }
            for (int i10 = 0; i10 < 4; i10++) {
                if (data[i6 + i10] != bArr[i10]) {
                    break;
                }
            }
            break loop0;
            i6++;
        }
        if (i6 == -1) {
            return 0;
        }
        parsableByteArray.setPosition(i6 + 4);
        return (parsableByteArray.peekUnsignedByte() >> 6) == 0 ? 1 : 0;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j10, int i6, boolean z7) {
        int nextSequenceNumber;
        Assertions.checkStateNotNull(this.trackOutput);
        int i10 = this.previousSequenceNumber;
        if (i10 != -1 && i6 != (nextSequenceNumber = RtpPacket.getNextSequenceNumber(i10))) {
            Log.w(TAG, Util.formatInvariant("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(nextSequenceNumber), Integer.valueOf(i6)));
        }
        int iBytesLeft = parsableByteArray.bytesLeft();
        this.trackOutput.sampleData(parsableByteArray, iBytesLeft);
        if (this.sampleLength == 0) {
            this.bufferFlags = getBufferFlagsFromVop(parsableByteArray);
        }
        this.sampleLength += iBytesLeft;
        if (z7) {
            if (this.firstReceivedTimestamp == C.TIME_UNSET) {
                this.firstReceivedTimestamp = j10;
            }
            this.trackOutput.sampleMetadata(RtpReaderUtils.toSampleTimeUs(this.startTimeOffsetUs, j10, this.firstReceivedTimestamp, MEDIA_CLOCK_FREQUENCY), this.bufferFlags, this.sampleLength, 0, null);
            this.sampleLength = 0;
        }
        this.previousSequenceNumber = i6;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void createTracks(ExtractorOutput extractorOutput, int i6) {
        TrackOutput trackOutputTrack = extractorOutput.track(i6, 2);
        this.trackOutput = trackOutputTrack;
        ((TrackOutput) Util.castNonNull(trackOutputTrack)).format(this.payloadFormat.format);
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void seek(long j10, long j11) {
        this.firstReceivedTimestamp = j10;
        this.startTimeOffsetUs = j11;
        this.sampleLength = 0;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void onReceivingFirstPacket(long j10, int i6) {
    }
}
