package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.LongArrayQueue;
import androidx.media3.common.util.SpeedProviderUtil;
import androidx.media3.common.util.TimestampConsumer;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.Queue;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class SpeedChangingAudioProcessor implements AudioProcessor {
    private float currentSpeed;
    private boolean endOfStreamQueuedToSonic;
    private long framesRead;
    private AudioProcessor.AudioFormat inputAudioFormat;
    private boolean inputEnded;
    private final Object lock;
    private final LongArrayQueue pendingCallbackInputTimesUs;
    private final Queue<TimestampConsumer> pendingCallbacks;
    private AudioProcessor.AudioFormat pendingInputAudioFormat;
    private AudioProcessor.AudioFormat pendingOutputAudioFormat;
    private final SynchronizedSonicAudioProcessor sonicAudioProcessor;
    private final SpeedProvider speedProvider;

    public SpeedChangingAudioProcessor(SpeedProvider speedProvider) {
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.pendingInputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputAudioFormat = audioFormat;
        this.speedProvider = speedProvider;
        Object obj = new Object();
        this.lock = obj;
        this.sonicAudioProcessor = new SynchronizedSonicAudioProcessor(obj, true);
        this.pendingCallbackInputTimesUs = new LongArrayQueue();
        this.pendingCallbacks = new ArrayDeque();
        resetInternalState(true);
    }

    private static long getDurationUsAfterProcessorApplied(SpeedProvider speedProvider, int i6, long j10) {
        return Util.sampleCountToDurationUs(getSampleCountAfterProcessorApplied(speedProvider, i6, Util.scaleLargeValue(j10, i6, 1000000L, RoundingMode.HALF_EVEN)), i6);
    }

    public static long getInputFrameCountForOutput(SpeedProvider speedProvider, int i6, long j10) {
        Assertions.checkArgument(i6 > 0);
        Assertions.checkArgument(j10 >= 0);
        long j11 = j10;
        long expectedInputFrameCountForOutputFrameCount = 0;
        while (j11 > 0) {
            long nextSpeedChangeSamplePosition = SpeedProviderUtil.getNextSpeedChangeSamplePosition(speedProvider, expectedInputFrameCountForOutputFrameCount, i6);
            float sampleAlignedSpeed = SpeedProviderUtil.getSampleAlignedSpeed(speedProvider, expectedInputFrameCountForOutputFrameCount, i6);
            long expectedFrameCountAfterProcessorApplied = Sonic.getExpectedFrameCountAfterProcessorApplied(i6, i6, sampleAlignedSpeed, sampleAlignedSpeed, nextSpeedChangeSamplePosition - expectedInputFrameCountForOutputFrameCount);
            if (nextSpeedChangeSamplePosition == -1 || expectedFrameCountAfterProcessorApplied > j11) {
                expectedInputFrameCountForOutputFrameCount += Sonic.getExpectedInputFrameCountForOutputFrameCount(i6, i6, sampleAlignedSpeed, sampleAlignedSpeed, j11);
                j11 = 0;
            } else {
                j11 -= expectedFrameCountAfterProcessorApplied;
                expectedInputFrameCountForOutputFrameCount = nextSpeedChangeSamplePosition;
            }
        }
        return expectedInputFrameCountForOutputFrameCount;
    }

    public static long getSampleCountAfterProcessorApplied(SpeedProvider speedProvider, int i6, long j10) {
        Assertions.checkArgument(speedProvider != null);
        Assertions.checkArgument(i6 > 0);
        long j11 = 0;
        Assertions.checkArgument(j10 >= 0);
        long expectedFrameCountAfterProcessorApplied = 0;
        while (j11 < j10) {
            long nextSpeedChangeSamplePosition = SpeedProviderUtil.getNextSpeedChangeSamplePosition(speedProvider, j11, i6);
            if (nextSpeedChangeSamplePosition == -1 || nextSpeedChangeSamplePosition > j10) {
                nextSpeedChangeSamplePosition = j10;
            }
            float sampleAlignedSpeed = SpeedProviderUtil.getSampleAlignedSpeed(speedProvider, j11, i6);
            expectedFrameCountAfterProcessorApplied += Sonic.getExpectedFrameCountAfterProcessorApplied(i6, i6, sampleAlignedSpeed, sampleAlignedSpeed, nextSpeedChangeSamplePosition - j11);
            j11 = nextSpeedChangeSamplePosition;
        }
        return expectedFrameCountAfterProcessorApplied;
    }

    private void processPendingCallbacks() {
        synchronized (this.lock) {
            try {
                if (this.inputAudioFormat.sampleRate == -1) {
                    return;
                }
                while (!this.pendingCallbacks.isEmpty()) {
                    this.pendingCallbacks.remove().onTimestamp(getDurationUsAfterProcessorApplied(this.speedProvider, this.inputAudioFormat.sampleRate, this.pendingCallbackInputTimesUs.remove()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void resetInternalState(boolean z7) {
        if (z7) {
            this.currentSpeed = 1.0f;
        }
        this.framesRead = 0L;
        this.endOfStreamQueuedToSonic = false;
    }

    private void updateSpeed(float f) {
        if (f != this.currentSpeed) {
            this.currentSpeed = f;
            this.sonicAudioProcessor.setSpeed(f);
            this.sonicAudioProcessor.setPitch(f);
            this.sonicAudioProcessor.flush();
            this.endOfStreamQueuedToSonic = false;
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public AudioProcessor.AudioFormat configure(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        this.pendingInputAudioFormat = audioFormat;
        AudioProcessor.AudioFormat audioFormatConfigure = this.sonicAudioProcessor.configure(audioFormat);
        this.pendingOutputAudioFormat = audioFormatConfigure;
        return audioFormatConfigure;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void flush() {
        this.inputEnded = false;
        resetInternalState(false);
        synchronized (this.lock) {
            this.inputAudioFormat = this.pendingInputAudioFormat;
            this.sonicAudioProcessor.flush();
            processPendingCallbacks();
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public long getDurationAfterProcessorApplied(long j10) {
        return SpeedProviderUtil.getDurationAfterSpeedProviderApplied(this.speedProvider, j10);
    }

    public long getMediaDurationUs(long j10) {
        int i6;
        synchronized (this.lock) {
            i6 = this.inputAudioFormat.sampleRate;
        }
        if (i6 == -1) {
            return j10;
        }
        return Util.sampleCountToDurationUs(getInputFrameCountForOutput(this.speedProvider, i6, Util.scaleLargeValue(j10, i6, 1000000L, RoundingMode.HALF_EVEN)), i6);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        return this.sonicAudioProcessor.getOutput();
    }

    public void getSpeedAdjustedTimeAsync(long j10, TimestampConsumer timestampConsumer) {
        synchronized (this.lock) {
            try {
                int i6 = this.inputAudioFormat.sampleRate;
                if (i6 != -1) {
                    timestampConsumer.onTimestamp(getDurationUsAfterProcessorApplied(this.speedProvider, i6, j10));
                } else {
                    this.pendingCallbackInputTimesUs.add(j10);
                    this.pendingCallbacks.add(timestampConsumer);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return !this.pendingOutputAudioFormat.equals(AudioProcessor.AudioFormat.NOT_SET);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        return this.inputEnded && this.sonicAudioProcessor.isEnded();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueEndOfStream() {
        this.inputEnded = true;
        if (this.endOfStreamQueuedToSonic) {
            return;
        }
        this.sonicAudioProcessor.queueEndOfStream();
        this.endOfStreamQueuedToSonic = true;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        AudioProcessor.AudioFormat audioFormat;
        int i6;
        synchronized (this.lock) {
            audioFormat = this.inputAudioFormat;
        }
        float sampleAlignedSpeed = SpeedProviderUtil.getSampleAlignedSpeed(this.speedProvider, this.framesRead, audioFormat.sampleRate);
        long nextSpeedChangeSamplePosition = SpeedProviderUtil.getNextSpeedChangeSamplePosition(this.speedProvider, this.framesRead, audioFormat.sampleRate);
        updateSpeed(sampleAlignedSpeed);
        int iLimit = byteBuffer.limit();
        if (nextSpeedChangeSamplePosition != -1) {
            i6 = (int) ((nextSpeedChangeSamplePosition - this.framesRead) * audioFormat.bytesPerFrame);
            byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + i6));
        } else {
            i6 = -1;
        }
        long jPosition = byteBuffer.position();
        this.sonicAudioProcessor.queueInput(byteBuffer);
        if (i6 != -1 && byteBuffer.position() - jPosition == i6) {
            this.sonicAudioProcessor.queueEndOfStream();
            this.endOfStreamQueuedToSonic = true;
        }
        long jPosition2 = byteBuffer.position() - jPosition;
        Assertions.checkState(jPosition2 % ((long) audioFormat.bytesPerFrame) == 0, "A frame was not queued completely.");
        this.framesRead = (jPosition2 / audioFormat.bytesPerFrame) + this.framesRead;
        byteBuffer.limit(iLimit);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void reset() {
        flush();
        AudioProcessor.AudioFormat audioFormat = AudioProcessor.AudioFormat.NOT_SET;
        this.pendingInputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        synchronized (this.lock) {
            this.inputAudioFormat = audioFormat;
            this.pendingCallbackInputTimesUs.clear();
            this.pendingCallbacks.clear();
        }
        resetInternalState(true);
        this.sonicAudioProcessor.reset();
    }
}
