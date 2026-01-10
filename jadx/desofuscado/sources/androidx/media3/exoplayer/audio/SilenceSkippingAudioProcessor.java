package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SilenceSkippingAudioProcessor extends androidx.media3.common.audio.BaseAudioProcessor {
    private static final int AVOID_TRUNCATION_FACTOR = 1000;
    public static final long DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US = 2000000;
    public static final long DEFAULT_MINIMUM_SILENCE_DURATION_US = 100000;
    public static final int DEFAULT_MIN_VOLUME_TO_KEEP_PERCENTAGE = 10;

    @Deprecated
    public static final long DEFAULT_PADDING_SILENCE_US = 20000;
    public static final float DEFAULT_SILENCE_RETENTION_RATIO = 0.2f;
    public static final short DEFAULT_SILENCE_THRESHOLD_LEVEL = 1024;
    private static final int DO_NOT_CHANGE_VOLUME = 3;
    private static final int FADE_IN = 2;
    private static final int FADE_OUT = 0;
    private static final int MUTE = 1;
    private static final int STATE_NOISY = 0;
    private static final int STATE_SHORTENING_SILENCE = 1;
    private int bytesPerFrame;
    private byte[] contiguousOutputBuffer;
    private boolean enabled;
    private final long maxSilenceToKeepDurationUs;
    private byte[] maybeSilenceBuffer;
    private int maybeSilenceBufferContentsSize;
    private int maybeSilenceBufferStartIndex;
    private final int minVolumeToKeepPercentageWhenMuting;
    private final long minimumSilenceDurationUs;
    private int outputSilenceFramesSinceNoise;
    private final float silenceRetentionRatio;
    private final short silenceThresholdLevel;
    private long skippedFrames;
    private int state;

    public SilenceSkippingAudioProcessor() {
        this(DEFAULT_MINIMUM_SILENCE_DURATION_US, 0.2f, DEFAULT_MAX_SILENCE_TO_KEEP_DURATION_US, 10, DEFAULT_SILENCE_THRESHOLD_LEVEL);
    }

    private int alignToBytePerFrameBoundary(int i6) {
        int i10 = this.bytesPerFrame;
        return (i6 / i10) * i10;
    }

    private int calculateFadeInPercentage(int i6, int i10) {
        int i11 = this.minVolumeToKeepPercentageWhenMuting;
        return ((((i6 * 1000) * (100 - i11)) / i10) / 1000) + i11;
    }

    private int calculateFadeOutPercentage(int i6, int i10) {
        return ((((i6 * 1000) / i10) * (this.minVolumeToKeepPercentageWhenMuting - 100)) / 1000) + 100;
    }

    private int calculateShortenedSilenceLength(int i6) {
        int iDurationUsToFrames = ((durationUsToFrames(this.maxSilenceToKeepDurationUs) - this.outputSilenceFramesSinceNoise) * this.bytesPerFrame) - (this.maybeSilenceBuffer.length / 2);
        Assertions.checkState(iDurationUsToFrames >= 0);
        return alignToBytePerFrameBoundary(Math.min((i6 * this.silenceRetentionRatio) + 0.5f, iDurationUsToFrames));
    }

    private int durationUsToFrames(long j10) {
        return (int) ((j10 * this.inputAudioFormat.sampleRate) / 1000000);
    }

    private int findNoiseLimit(ByteBuffer byteBuffer) {
        for (int iLimit = byteBuffer.limit() - 1; iLimit >= byteBuffer.position(); iLimit -= 2) {
            if (isNoise(byteBuffer.get(iLimit), byteBuffer.get(iLimit - 1))) {
                int i6 = this.bytesPerFrame;
                return ((iLimit / i6) * i6) + i6;
            }
        }
        return byteBuffer.position();
    }

    private int findNoisePosition(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position() + 1; iPosition < byteBuffer.limit(); iPosition += 2) {
            if (isNoise(byteBuffer.get(iPosition), byteBuffer.get(iPosition - 1))) {
                int i6 = this.bytesPerFrame;
                return (iPosition / i6) * i6;
            }
        }
        return byteBuffer.limit();
    }

    private boolean isNoise(byte b8, byte b10) {
        return Math.abs(twoByteSampleToInt(b8, b10)) > this.silenceThresholdLevel;
    }

    private void modifyVolume(byte[] bArr, int i6, int i10) {
        if (i10 == 3) {
            return;
        }
        for (int i11 = 0; i11 < i6; i11 += 2) {
            sampleIntToTwoBigEndianBytes(bArr, i11, (twoByteSampleToInt(bArr[i11 + 1], bArr[i11]) * (i10 == 0 ? calculateFadeOutPercentage(i11, i6 - 1) : i10 == 2 ? calculateFadeInPercentage(i11, i6 - 1) : this.minVolumeToKeepPercentageWhenMuting)) / 100);
        }
    }

    private void output(ByteBuffer byteBuffer) {
        replaceOutputBuffer(byteBuffer.remaining()).put(byteBuffer).flip();
    }

    private void outputRange(byte[] bArr, int i6, int i10) {
        Assertions.checkArgument(i6 % this.bytesPerFrame == 0, "byteOutput size is not aligned to frame size " + i6);
        modifyVolume(bArr, i6, i10);
        replaceOutputBuffer(i6).put(bArr, 0, i6).flip();
    }

    private void outputShortenedSilenceBuffer(boolean z7) {
        int length;
        int iCalculateShortenedSilenceLength;
        int i6 = this.maybeSilenceBufferContentsSize;
        byte[] bArr = this.maybeSilenceBuffer;
        if (i6 == bArr.length || z7) {
            if (this.outputSilenceFramesSinceNoise == 0) {
                if (z7) {
                    outputSilence(i6, 3);
                    length = i6;
                } else {
                    Assertions.checkState(i6 >= bArr.length / 2);
                    length = this.maybeSilenceBuffer.length / 2;
                    outputSilence(length, 0);
                }
                iCalculateShortenedSilenceLength = length;
            } else if (z7) {
                int length2 = i6 - (bArr.length / 2);
                int length3 = (bArr.length / 2) + length2;
                int iCalculateShortenedSilenceLength2 = calculateShortenedSilenceLength(length2) + (this.maybeSilenceBuffer.length / 2);
                outputSilence(iCalculateShortenedSilenceLength2, 2);
                iCalculateShortenedSilenceLength = iCalculateShortenedSilenceLength2;
                length = length3;
            } else {
                length = i6 - (bArr.length / 2);
                iCalculateShortenedSilenceLength = calculateShortenedSilenceLength(length);
                outputSilence(iCalculateShortenedSilenceLength, 1);
            }
            Assertions.checkState(length % this.bytesPerFrame == 0, "bytesConsumed is not aligned to frame size: %s" + length);
            Assertions.checkState(i6 >= iCalculateShortenedSilenceLength);
            this.maybeSilenceBufferContentsSize -= length;
            int i10 = this.maybeSilenceBufferStartIndex + length;
            this.maybeSilenceBufferStartIndex = i10;
            this.maybeSilenceBufferStartIndex = i10 % this.maybeSilenceBuffer.length;
            this.outputSilenceFramesSinceNoise = (iCalculateShortenedSilenceLength / this.bytesPerFrame) + this.outputSilenceFramesSinceNoise;
            this.skippedFrames += (length - iCalculateShortenedSilenceLength) / r2;
        }
    }

    private void outputSilence(int i6, int i10) {
        if (i6 == 0) {
            return;
        }
        Assertions.checkArgument(this.maybeSilenceBufferContentsSize >= i6);
        if (i10 == 2) {
            int i11 = this.maybeSilenceBufferStartIndex;
            int i12 = this.maybeSilenceBufferContentsSize;
            int i13 = i11 + i12;
            byte[] bArr = this.maybeSilenceBuffer;
            if (i13 <= bArr.length) {
                System.arraycopy(bArr, (i11 + i12) - i6, this.contiguousOutputBuffer, 0, i6);
            } else {
                int length = i12 - (bArr.length - i11);
                if (length >= i6) {
                    System.arraycopy(bArr, length - i6, this.contiguousOutputBuffer, 0, i6);
                } else {
                    int i14 = i6 - length;
                    System.arraycopy(bArr, bArr.length - i14, this.contiguousOutputBuffer, 0, i14);
                    System.arraycopy(this.maybeSilenceBuffer, 0, this.contiguousOutputBuffer, i14, length);
                }
            }
        } else {
            int i15 = this.maybeSilenceBufferStartIndex;
            int i16 = i15 + i6;
            byte[] bArr2 = this.maybeSilenceBuffer;
            if (i16 <= bArr2.length) {
                System.arraycopy(bArr2, i15, this.contiguousOutputBuffer, 0, i6);
            } else {
                int length2 = bArr2.length - i15;
                System.arraycopy(bArr2, i15, this.contiguousOutputBuffer, 0, length2);
                System.arraycopy(this.maybeSilenceBuffer, 0, this.contiguousOutputBuffer, length2, i6 - length2);
            }
        }
        Assertions.checkArgument(i6 % this.bytesPerFrame == 0, "sizeToOutput is not aligned to frame size: " + i6);
        Assertions.checkState(this.maybeSilenceBufferStartIndex < this.maybeSilenceBuffer.length);
        outputRange(this.contiguousOutputBuffer, i6, i10);
    }

    private void processNoisy(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.maybeSilenceBuffer.length));
        int iFindNoiseLimit = findNoiseLimit(byteBuffer);
        if (iFindNoiseLimit == byteBuffer.position()) {
            this.state = 1;
        } else {
            byteBuffer.limit(Math.min(iFindNoiseLimit, byteBuffer.capacity()));
            output(byteBuffer);
        }
        byteBuffer.limit(iLimit);
    }

    private static void sampleIntToTwoBigEndianBytes(byte[] bArr, int i6, int i10) {
        if (i10 >= 32767) {
            bArr[i6] = -1;
            bArr[i6 + 1] = 127;
        } else if (i10 <= -32768) {
            bArr[i6] = 0;
            bArr[i6 + 1] = -128;
        } else {
            bArr[i6] = (byte) (i10 & 255);
            bArr[i6 + 1] = (byte) (i10 >> 8);
        }
    }

    private void shortenSilenceSilenceUntilNoise(ByteBuffer byteBuffer) {
        int length;
        int i6;
        Assertions.checkState(this.maybeSilenceBufferStartIndex < this.maybeSilenceBuffer.length);
        int iLimit = byteBuffer.limit();
        int iFindNoisePosition = findNoisePosition(byteBuffer);
        int iPosition = iFindNoisePosition - byteBuffer.position();
        int i10 = this.maybeSilenceBufferStartIndex;
        int i11 = this.maybeSilenceBufferContentsSize;
        int i12 = i10 + i11;
        byte[] bArr = this.maybeSilenceBuffer;
        if (i12 < bArr.length) {
            length = bArr.length - (i11 + i10);
            i6 = i10 + i11;
        } else {
            int length2 = i11 - (bArr.length - i10);
            length = i10 - length2;
            i6 = length2;
        }
        boolean z7 = iFindNoisePosition < iLimit;
        int iMin = Math.min(iPosition, length);
        byteBuffer.limit(byteBuffer.position() + iMin);
        byteBuffer.get(this.maybeSilenceBuffer, i6, iMin);
        int i13 = this.maybeSilenceBufferContentsSize + iMin;
        this.maybeSilenceBufferContentsSize = i13;
        Assertions.checkState(i13 <= this.maybeSilenceBuffer.length);
        boolean z10 = z7 && iPosition < length;
        outputShortenedSilenceBuffer(z10);
        if (z10) {
            this.state = 0;
            this.outputSilenceFramesSinceNoise = 0;
        }
        byteBuffer.limit(iLimit);
    }

    private static int twoByteSampleToInt(byte b8, byte b10) {
        return (b8 << 8) | (b10 & 255);
    }

    public long getSkippedFrames() {
        return this.skippedFrames;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return super.isActive() && this.enabled;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat onConfigure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding == 2) {
            return audioFormat.sampleRate == -1 ? AudioProcessor.AudioFormat.NOT_SET : audioFormat;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onFlush() {
        if (isActive()) {
            this.bytesPerFrame = this.inputAudioFormat.channelCount * 2;
            int iAlignToBytePerFrameBoundary = alignToBytePerFrameBoundary(durationUsToFrames(this.minimumSilenceDurationUs) / 2) * 2;
            if (this.maybeSilenceBuffer.length != iAlignToBytePerFrameBoundary) {
                this.maybeSilenceBuffer = new byte[iAlignToBytePerFrameBoundary];
                this.contiguousOutputBuffer = new byte[iAlignToBytePerFrameBoundary];
            }
        }
        this.state = 0;
        this.skippedFrames = 0L;
        this.outputSilenceFramesSinceNoise = 0;
        this.maybeSilenceBufferStartIndex = 0;
        this.maybeSilenceBufferContentsSize = 0;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onQueueEndOfStream() {
        if (this.maybeSilenceBufferContentsSize > 0) {
            outputShortenedSilenceBuffer(true);
            this.outputSilenceFramesSinceNoise = 0;
        }
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public void onReset() {
        this.enabled = false;
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        this.maybeSilenceBuffer = bArr;
        this.contiguousOutputBuffer = bArr;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !hasPendingOutput()) {
            int i6 = this.state;
            if (i6 == 0) {
                processNoisy(byteBuffer);
            } else {
                if (i6 != 1) {
                    throw new IllegalStateException();
                }
                shortenSilenceSilenceUntilNoise(byteBuffer);
            }
        }
    }

    public void setEnabled(boolean z7) {
        this.enabled = z7;
    }

    @Deprecated
    public SilenceSkippingAudioProcessor(long j10, long j11, short s10) {
        this(j10, j11 / j10, j10, 0, s10);
    }

    private int alignToBytePerFrameBoundary(float f) {
        return alignToBytePerFrameBoundary((int) f);
    }

    public SilenceSkippingAudioProcessor(long j10, float f, long j11, int i6, short s10) {
        boolean z7 = false;
        this.outputSilenceFramesSinceNoise = 0;
        this.maybeSilenceBufferStartIndex = 0;
        this.maybeSilenceBufferContentsSize = 0;
        if (f >= 0.0f && f <= 1.0f) {
            z7 = true;
        }
        Assertions.checkArgument(z7);
        this.minimumSilenceDurationUs = j10;
        this.silenceRetentionRatio = f;
        this.maxSilenceToKeepDurationUs = j11;
        this.minVolumeToKeepPercentageWhenMuting = i6;
        this.silenceThresholdLevel = s10;
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        this.maybeSilenceBuffer = bArr;
        this.contiguousOutputBuffer = bArr;
    }
}
