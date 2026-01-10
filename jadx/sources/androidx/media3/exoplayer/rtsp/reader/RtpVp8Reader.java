package androidx.media3.exoplayer.rtsp.reader;

import androidx.media3.common.C;
import androidx.media3.common.Format;
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
final class RtpVp8Reader implements RtpPayloadReader {
    private static final int MEDIA_CLOCK_FREQUENCY = 90000;
    private static final String TAG = "RtpVP8Reader";
    private boolean gotFirstPacketOfVp8Frame;
    private boolean isKeyFrame;
    private boolean isOutputFormatSet;
    private final RtpPayloadFormat payloadFormat;
    private TrackOutput trackOutput;
    private long firstReceivedTimestamp = C.TIME_UNSET;
    private int previousSequenceNumber = -1;
    private int fragmentedSampleSizeBytes = -1;
    private long fragmentedSampleTimeUs = C.TIME_UNSET;
    private long startTimeOffsetUs = 0;

    public RtpVp8Reader(RtpPayloadFormat rtpPayloadFormat) {
        this.payloadFormat = rtpPayloadFormat;
    }

    private void outputSampleMetadataForFragmentedPackets() {
        TrackOutput trackOutput = (TrackOutput) Assertions.checkNotNull(this.trackOutput);
        long j10 = this.fragmentedSampleTimeUs;
        boolean z7 = this.isKeyFrame;
        trackOutput.sampleMetadata(j10, z7 ? 1 : 0, this.fragmentedSampleSizeBytes, 0, null);
        this.fragmentedSampleSizeBytes = -1;
        this.fragmentedSampleTimeUs = C.TIME_UNSET;
        this.gotFirstPacketOfVp8Frame = false;
    }

    private boolean validateVp8Descriptor(ParsableByteArray parsableByteArray, int i6) {
        int unsignedByte = parsableByteArray.readUnsignedByte();
        if ((unsignedByte & 16) == 16 && (unsignedByte & 7) == 0) {
            if (this.gotFirstPacketOfVp8Frame && this.fragmentedSampleSizeBytes > 0) {
                outputSampleMetadataForFragmentedPackets();
            }
            this.gotFirstPacketOfVp8Frame = true;
        } else {
            if (!this.gotFirstPacketOfVp8Frame) {
                Log.w(TAG, "RTP packet is not the start of a new VP8 partition, skipping.");
                return false;
            }
            int nextSequenceNumber = RtpPacket.getNextSequenceNumber(this.previousSequenceNumber);
            if (i6 < nextSequenceNumber) {
                Log.w(TAG, Util.formatInvariant("Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet.", Integer.valueOf(nextSequenceNumber), Integer.valueOf(i6)));
                return false;
            }
        }
        if ((unsignedByte & 128) != 0) {
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            if ((unsignedByte2 & 128) != 0 && (parsableByteArray.readUnsignedByte() & 128) != 0) {
                parsableByteArray.skipBytes(1);
            }
            if ((unsignedByte2 & 64) != 0) {
                parsableByteArray.skipBytes(1);
            }
            if ((unsignedByte2 & 32) != 0 || (unsignedByte2 & 16) != 0) {
                parsableByteArray.skipBytes(1);
            }
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void consume(ParsableByteArray parsableByteArray, long j10, int i6, boolean z7) {
        Assertions.checkStateNotNull(this.trackOutput);
        if (validateVp8Descriptor(parsableByteArray, i6)) {
            if (this.fragmentedSampleSizeBytes == -1 && this.gotFirstPacketOfVp8Frame) {
                this.isKeyFrame = (parsableByteArray.peekUnsignedByte() & 1) == 0;
            }
            if (!this.isOutputFormatSet) {
                int position = parsableByteArray.getPosition();
                parsableByteArray.setPosition(position + 6);
                int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort() & 16383;
                int littleEndianUnsignedShort2 = parsableByteArray.readLittleEndianUnsignedShort() & 16383;
                parsableByteArray.setPosition(position);
                Format format = this.payloadFormat.format;
                if (littleEndianUnsignedShort != format.width || littleEndianUnsignedShort2 != format.height) {
                    this.trackOutput.format(format.buildUpon().setWidth(littleEndianUnsignedShort).setHeight(littleEndianUnsignedShort2).build());
                }
                this.isOutputFormatSet = true;
            }
            int iBytesLeft = parsableByteArray.bytesLeft();
            this.trackOutput.sampleData(parsableByteArray, iBytesLeft);
            int i10 = this.fragmentedSampleSizeBytes;
            if (i10 == -1) {
                this.fragmentedSampleSizeBytes = iBytesLeft;
            } else {
                this.fragmentedSampleSizeBytes = i10 + iBytesLeft;
            }
            this.fragmentedSampleTimeUs = RtpReaderUtils.toSampleTimeUs(this.startTimeOffsetUs, j10, this.firstReceivedTimestamp, MEDIA_CLOCK_FREQUENCY);
            if (z7) {
                outputSampleMetadataForFragmentedPackets();
            }
            this.previousSequenceNumber = i6;
        }
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void createTracks(ExtractorOutput extractorOutput, int i6) {
        TrackOutput trackOutputTrack = extractorOutput.track(i6, 2);
        this.trackOutput = trackOutputTrack;
        trackOutputTrack.format(this.payloadFormat.format);
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void onReceivingFirstPacket(long j10, int i6) {
        Assertions.checkState(this.firstReceivedTimestamp == C.TIME_UNSET);
        this.firstReceivedTimestamp = j10;
    }

    @Override // androidx.media3.exoplayer.rtsp.reader.RtpPayloadReader
    public void seek(long j10, long j11) {
        this.firstReceivedTimestamp = j10;
        this.fragmentedSampleSizeBytes = -1;
        this.startTimeOffsetUs = j11;
    }
}
