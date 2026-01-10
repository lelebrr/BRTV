package androidx.media3.exoplayer.rtsp.reader;

import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.rtsp.RtpPacket;
import androidx.media3.exoplayer.rtsp.RtpPayloadFormat;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.OpusUtil;
import androidx.media3.extractor.TrackOutput;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtpOpusReader implements RtpPayloadReader {
    private static final int MEDIA_CLOCK_FREQUENCY = 48000;
    private static final String TAG = "RtpOpusReader";
    private boolean foundOpusCommentHeader;
    private boolean foundOpusIDHeader;
    private final RtpPayloadFormat payloadFormat;
    private long startTimeOffsetUs;
    private TrackOutput trackOutput;
    private long firstReceivedTimestamp = -1;
    private int previousSequenceNumber = -1;

    public RtpOpusReader(RtpPayloadFormat rtpPayloadFormat) {
        this.payloadFormat = rtpPayloadFormat;
    }

    private static void validateOpusIdHeader(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        Assertions.checkArgument(parsableByteArray.limit() > 18, "ID Header has insufficient data");
        Assertions.checkArgument(parsableByteArray.readString(8).equals("OpusHead"), "ID Header missing");
        Assertions.checkArgument(parsableByteArray.readUnsignedByte() == 1, "version number must always be 1");
        parsableByteArray.setPosition(position);
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j10, int i6, boolean z7) {
        Assertions.checkStateNotNull(this.trackOutput);
        if (!this.foundOpusIDHeader) {
            validateOpusIdHeader(parsableByteArray);
            List<byte[]> listBuildInitializationData = OpusUtil.buildInitializationData(parsableByteArray.getData());
            Format.Builder builderBuildUpon = this.payloadFormat.format.buildUpon();
            builderBuildUpon.setInitializationData(listBuildInitializationData);
            this.trackOutput.format(builderBuildUpon.build());
            this.foundOpusIDHeader = true;
        } else if (this.foundOpusCommentHeader) {
            int nextSequenceNumber = RtpPacket.getNextSequenceNumber(this.previousSequenceNumber);
            if (i6 != nextSequenceNumber) {
                Log.w(TAG, Util.formatInvariant("Received RTP packet with unexpected sequence number. Expected: %d; received: %d.", Integer.valueOf(nextSequenceNumber), Integer.valueOf(i6)));
            }
            int iBytesLeft = parsableByteArray.bytesLeft();
            this.trackOutput.sampleData(parsableByteArray, iBytesLeft);
            this.trackOutput.sampleMetadata(RtpReaderUtils.toSampleTimeUs(this.startTimeOffsetUs, j10, this.firstReceivedTimestamp, 48000), 1, iBytesLeft, 0, null);
        } else {
            Assertions.checkArgument(parsableByteArray.limit() >= 8, "Comment Header has insufficient data");
            Assertions.checkArgument(parsableByteArray.readString(8).equals("OpusTags"), "Comment Header should follow ID Header");
            this.foundOpusCommentHeader = true;
        }
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
