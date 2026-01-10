package androidx.media3.exoplayer.rtsp.reader;

import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.rtsp.RtpPacket;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.TrackOutput;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtpAmrReader implements RtpPayloadReader {
    private static final int[] AMR_NB_FRAME_TYPE_INDEX_TO_FRAME_SIZE = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    private static final int[] AMR_WB_FRAME_TYPE_INDEX_TO_FRAME_SIZE = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    private static final String TAG = "RtpAmrReader";
    private final boolean isWideBand;
    private final RtpPayloadFormat payloadFormat;
    private final int sampleRate;
    private TrackOutput trackOutput;
    private long firstReceivedTimestamp = C.TIME_UNSET;
    private int previousSequenceNumber = -1;
    private long startTimeOffsetUs = 0;

    public RtpAmrReader(RtpPayloadFormat rtpPayloadFormat) {
        this.payloadFormat = rtpPayloadFormat;
        this.isWideBand = MimeTypes.AUDIO_AMR_WB.equals(Assertions.checkNotNull(rtpPayloadFormat.format.sampleMimeType));
        this.sampleRate = rtpPayloadFormat.clockRate;
    }

    public static int getFrameSize(int i6, boolean z7) {
        boolean z10 = (i6 >= 0 && i6 <= 8) || i6 == 15;
        StringBuilder sb = new StringBuilder("Illegal AMR ");
        sb.append(z7 ? "WB" : "NB");
        sb.append(" frame type ");
        sb.append(i6);
        Assertions.checkArgument(z10, sb.toString());
        return z7 ? AMR_WB_FRAME_TYPE_INDEX_TO_FRAME_SIZE[i6] : AMR_NB_FRAME_TYPE_INDEX_TO_FRAME_SIZE[i6];
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j10, int i6, boolean z7) {
        int nextSequenceNumber;
        Assertions.checkStateNotNull(this.trackOutput);
        int i10 = this.previousSequenceNumber;
        if (i10 != -1 && i6 != (nextSequenceNumber = RtpPacket.getNextSequenceNumber(i10))) {
            Log.w(TAG, Util.formatInvariant("Received RTP packet with unexpected sequence number. Expected: %d; received: %d.", Integer.valueOf(nextSequenceNumber), Integer.valueOf(i6)));
        }
        parsableByteArray.skipBytes(1);
        int frameSize = getFrameSize((parsableByteArray.peekUnsignedByte() >> 3) & 15, this.isWideBand);
        int iBytesLeft = parsableByteArray.bytesLeft();
        Assertions.checkArgument(iBytesLeft == frameSize, "compound payload not supported currently");
        this.trackOutput.sampleData(parsableByteArray, iBytesLeft);
        this.trackOutput.sampleMetadata(RtpReaderUtils.toSampleTimeUs(this.startTimeOffsetUs, j10, this.firstReceivedTimestamp, this.sampleRate), 1, iBytesLeft, 0, null);
        this.previousSequenceNumber = i6;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void createTracks(ExtractorOutput extractorOutput, int i6) {
        TrackOutput trackOutputTrack = extractorOutput.track(i6, 1);
        this.trackOutput = trackOutputTrack;
        trackOutputTrack.format(this.payloadFormat.format);
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void onReceivingFirstPacket(long j10, int i6) {
        this.firstReceivedTimestamp = j10;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void seek(long j10, long j11) {
        this.firstReceivedTimestamp = j10;
        this.startTimeOffsetUs = j11;
    }
}
