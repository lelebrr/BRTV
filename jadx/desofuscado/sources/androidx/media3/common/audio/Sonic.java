package androidx.media3.common.audio;

import androidx.media3.common.util.Assertions;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class Sonic {
    private static final int AMDF_FREQUENCY = 4000;
    private static final int BYTES_PER_SAMPLE = 2;
    private static final int MAXIMUM_PITCH = 400;
    private static final int MINIMUM_PITCH = 65;
    private static final float MINIMUM_SLOWDOWN_RATE = 0.99999f;
    private static final float MINIMUM_SPEEDUP_RATE = 1.00001f;
    private double accumulatedSpeedAdjustmentError;
    private final int channelCount;
    private final short[] downSampleBuffer;
    private short[] inputBuffer;
    private int inputFrameCount;
    private final int inputSampleRateHz;
    private int maxDiff;
    private final int maxPeriod;
    private final int maxRequiredFrameCount;
    private int minDiff;
    private final int minPeriod;
    private int newRatePosition;
    private int oldRatePosition;
    private short[] outputBuffer;
    private int outputFrameCount;
    private final float pitch;
    private short[] pitchBuffer;
    private int pitchFrameCount;
    private int prevMinDiff;
    private int prevPeriod;
    private final float rate;
    private int remainingInputToCopyFrameCount;
    private final float speed;

    public Sonic(int i6, int i10, float f, float f3, int i11) {
        this.inputSampleRateHz = i6;
        this.channelCount = i10;
        this.speed = f;
        this.pitch = f3;
        this.rate = i6 / i11;
        this.minPeriod = i6 / MAXIMUM_PITCH;
        int i12 = i6 / MINIMUM_PITCH;
        this.maxPeriod = i12;
        int i13 = i12 * 2;
        this.maxRequiredFrameCount = i13;
        this.downSampleBuffer = new short[i13];
        this.inputBuffer = new short[i13 * i10];
        this.outputBuffer = new short[i13 * i10];
        this.pitchBuffer = new short[i13 * i10];
    }

    private void adjustRate(float f, int i6) {
        int i10;
        int i11;
        if (this.outputFrameCount == i6) {
            return;
        }
        int i12 = this.inputSampleRateHz;
        long j10 = (long) (i12 / f);
        long j11 = i12;
        while (j10 != 0 && j11 != 0 && j10 % 2 == 0 && j11 % 2 == 0) {
            j10 /= 2;
            j11 /= 2;
        }
        moveNewSamplesToPitchBuffer(i6);
        int i13 = 0;
        while (true) {
            int i14 = this.pitchFrameCount;
            if (i13 >= i14 - 1) {
                removePitchFrames(i14 - 1);
                return;
            }
            while (true) {
                i10 = this.oldRatePosition;
                long j12 = (i10 + 1) * j10;
                i11 = this.newRatePosition;
                if (j12 <= i11 * j11) {
                    break;
                }
                this.outputBuffer = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, 1);
                int i15 = 0;
                while (true) {
                    int i16 = this.channelCount;
                    if (i15 < i16) {
                        this.outputBuffer[(this.outputFrameCount * i16) + i15] = interpolate(this.pitchBuffer, (i16 * i13) + i15, j11, j10);
                        i15++;
                    }
                }
                this.newRatePosition++;
                this.outputFrameCount++;
            }
            int i17 = i10 + 1;
            this.oldRatePosition = i17;
            if (i17 == j11) {
                this.oldRatePosition = 0;
                Assertions.checkState(((long) i11) == j10);
                this.newRatePosition = 0;
            }
            i13++;
        }
    }

    public static long calculateAccumulatedTruncationErrorForResampling(BigDecimal bigDecimal, BigDecimal bigDecimal2, BigDecimal bigDecimal3) {
        RoundingMode roundingMode = RoundingMode.HALF_EVEN;
        BigDecimal bigDecimalDivide = bigDecimal.divide(bigDecimal2, 20, roundingMode);
        BigDecimal bigDecimalDivide2 = bigDecimal2.divide(bigDecimal3, 20, roundingMode);
        RoundingMode roundingMode2 = RoundingMode.FLOOR;
        return bigDecimalDivide.multiply(bigDecimalDivide2.subtract(bigDecimalDivide2.setScale(0, roundingMode2))).setScale(0, roundingMode2).longValueExact();
    }

    private void changeSpeed(double d) {
        int iInsertPitchPeriod;
        int i6 = this.inputFrameCount;
        if (i6 < this.maxRequiredFrameCount) {
            return;
        }
        int iSkipPitchPeriod = 0;
        do {
            if (this.remainingInputToCopyFrameCount > 0) {
                iInsertPitchPeriod = copyInputToOutput(iSkipPitchPeriod);
            } else {
                int iFindPitchPeriod = findPitchPeriod(this.inputBuffer, iSkipPitchPeriod);
                if (d > 1.0d) {
                    iSkipPitchPeriod = iFindPitchPeriod + skipPitchPeriod(this.inputBuffer, iSkipPitchPeriod, d, iFindPitchPeriod) + iSkipPitchPeriod;
                } else {
                    iInsertPitchPeriod = insertPitchPeriod(this.inputBuffer, iSkipPitchPeriod, d, iFindPitchPeriod);
                }
            }
            iSkipPitchPeriod += iInsertPitchPeriod;
        } while (this.maxRequiredFrameCount + iSkipPitchPeriod <= i6);
        removeProcessedInputFrames(iSkipPitchPeriod);
    }

    private int copyInputToOutput(int i6) {
        int iMin = Math.min(this.maxRequiredFrameCount, this.remainingInputToCopyFrameCount);
        copyToOutput(this.inputBuffer, i6, iMin);
        this.remainingInputToCopyFrameCount -= iMin;
        return iMin;
    }

    private void copyToOutput(short[] sArr, int i6, int i10) {
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i10);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        int i11 = this.channelCount;
        System.arraycopy(sArr, i6 * i11, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount * i11, i11 * i10);
        this.outputFrameCount += i10;
    }

    private void downSampleInput(short[] sArr, int i6, int i10) {
        int i11 = this.maxRequiredFrameCount / i10;
        int i12 = this.channelCount;
        int i13 = i10 * i12;
        int i14 = i6 * i12;
        for (int i15 = 0; i15 < i11; i15++) {
            int i16 = 0;
            for (int i17 = 0; i17 < i13; i17++) {
                i16 += sArr[(i15 * i13) + i14 + i17];
            }
            this.downSampleBuffer[i15] = (short) (i16 / i13);
        }
    }

    private short[] ensureSpaceForAdditionalFrames(short[] sArr, int i6, int i10) {
        int length = sArr.length;
        int i11 = this.channelCount;
        int i12 = length / i11;
        return i6 + i10 <= i12 ? sArr : Arrays.copyOf(sArr, (((i12 * 3) / 2) + i10) * i11);
    }

    private int findPitchPeriod(short[] sArr, int i6) {
        int iFindPitchPeriodInRange;
        int i10 = this.inputSampleRateHz;
        int i11 = i10 > AMDF_FREQUENCY ? i10 / AMDF_FREQUENCY : 1;
        if (this.channelCount == 1 && i11 == 1) {
            iFindPitchPeriodInRange = findPitchPeriodInRange(sArr, i6, this.minPeriod, this.maxPeriod);
        } else {
            downSampleInput(sArr, i6, i11);
            int iFindPitchPeriodInRange2 = findPitchPeriodInRange(this.downSampleBuffer, 0, this.minPeriod / i11, this.maxPeriod / i11);
            if (i11 != 1) {
                int i12 = iFindPitchPeriodInRange2 * i11;
                int i13 = i11 * 4;
                int i14 = i12 - i13;
                int i15 = i12 + i13;
                int i16 = this.minPeriod;
                if (i14 < i16) {
                    i14 = i16;
                }
                int i17 = this.maxPeriod;
                if (i15 > i17) {
                    i15 = i17;
                }
                if (this.channelCount == 1) {
                    iFindPitchPeriodInRange = findPitchPeriodInRange(sArr, i6, i14, i15);
                } else {
                    downSampleInput(sArr, i6, 1);
                    iFindPitchPeriodInRange = findPitchPeriodInRange(this.downSampleBuffer, 0, i14, i15);
                }
            } else {
                iFindPitchPeriodInRange = iFindPitchPeriodInRange2;
            }
        }
        int i18 = previousPeriodBetter(this.minDiff, this.maxDiff) ? this.prevPeriod : iFindPitchPeriodInRange;
        this.prevMinDiff = this.minDiff;
        this.prevPeriod = iFindPitchPeriodInRange;
        return i18;
    }

    private int findPitchPeriodInRange(short[] sArr, int i6, int i10, int i11) {
        int i12 = i6 * this.channelCount;
        int i13 = 255;
        int i14 = 1;
        int i15 = 0;
        int i16 = 0;
        while (i10 <= i11) {
            int iAbs = 0;
            for (int i17 = 0; i17 < i10; i17++) {
                iAbs += Math.abs(sArr[i12 + i17] - sArr[(i12 + i10) + i17]);
            }
            if (iAbs * i15 < i14 * i10) {
                i15 = i10;
                i14 = iAbs;
            }
            if (iAbs * i13 > i16 * i10) {
                i13 = i10;
                i16 = iAbs;
            }
            i10++;
        }
        this.minDiff = i14 / i15;
        this.maxDiff = i16 / i13;
        return i15;
    }

    public static long getExpectedFrameCountAfterProcessorApplied(int i6, int i10, float f, float f3, long j10) {
        float f4 = (i6 / i10) * f3;
        double d = f / f3;
        BigDecimal bigDecimal = new BigDecimal(String.valueOf(f4));
        BigDecimal bigDecimalValueOf = BigDecimal.valueOf(j10);
        if (d > 1.0000100135803223d || d < 0.9999899864196777d) {
            bigDecimalValueOf = bigDecimalValueOf.divide(BigDecimal.valueOf(d), RoundingMode.HALF_EVEN);
        }
        return f4 == 1.0f ? bigDecimalValueOf.longValueExact() : bigDecimalValueOf.divide(bigDecimal, RoundingMode.HALF_EVEN).longValueExact() - calculateAccumulatedTruncationErrorForResampling(bigDecimalValueOf, BigDecimal.valueOf(i6), bigDecimal);
    }

    public static long getExpectedInputFrameCountForOutputFrameCount(int i6, int i10, float f, float f3, long j10) {
        long frameCountBeforeResamplingForOutputCount = getFrameCountBeforeResamplingForOutputCount(BigDecimal.valueOf(i6), new BigDecimal(String.valueOf((i6 / i10) * f3)), BigDecimal.valueOf(j10));
        double d = f / f3;
        return (d > 1.0000100135803223d || d < 0.9999899864196777d) ? BigDecimal.valueOf(frameCountBeforeResamplingForOutputCount).multiply(BigDecimal.valueOf(d)).setScale(0, RoundingMode.FLOOR).longValueExact() : frameCountBeforeResamplingForOutputCount;
    }

    private static long getFrameCountBeforeResamplingForOutputCount(BigDecimal bigDecimal, BigDecimal bigDecimal2, BigDecimal bigDecimal3) {
        RoundingMode roundingMode = RoundingMode.FLOOR;
        return bigDecimal.multiply(bigDecimal3).divide(bigDecimal.divide(bigDecimal2, 0, roundingMode), 0, roundingMode).longValueExact();
    }

    private int insertPitchPeriod(short[] sArr, int i6, double d, int i10) {
        int i11;
        if (d < 0.5d) {
            double d10 = ((i10 * d) / (1.0d - d)) + this.accumulatedSpeedAdjustmentError;
            int iRound = (int) Math.round(d10);
            this.accumulatedSpeedAdjustmentError = d10 - iRound;
            i11 = iRound;
        } else {
            double d11 = ((((2.0d * d) - 1.0d) * i10) / (1.0d - d)) + this.accumulatedSpeedAdjustmentError;
            int iRound2 = (int) Math.round(d11);
            this.remainingInputToCopyFrameCount = iRound2;
            this.accumulatedSpeedAdjustmentError = d11 - iRound2;
            i11 = i10;
        }
        int i12 = i10 + i11;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, i12);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        int i13 = this.channelCount;
        System.arraycopy(sArr, i6 * i13, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount * i13, i13 * i10);
        overlapAdd(i11, this.channelCount, this.outputBuffer, this.outputFrameCount + i10, sArr, i6 + i10, sArr, i6);
        this.outputFrameCount += i12;
        return i11;
    }

    private short interpolate(short[] sArr, int i6, long j10, long j11) {
        short s10 = sArr[i6];
        short s11 = sArr[i6 + this.channelCount];
        long j12 = this.newRatePosition * j10;
        long j13 = this.oldRatePosition * j11;
        long j14 = (r7 + 1) * j11;
        long j15 = j14 - j12;
        long j16 = j14 - j13;
        return (short) ((((j16 - j15) * s11) + (s10 * j15)) / j16);
    }

    private void moveNewSamplesToPitchBuffer(int i6) {
        int i10 = this.outputFrameCount - i6;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.pitchBuffer, this.pitchFrameCount, i10);
        this.pitchBuffer = sArrEnsureSpaceForAdditionalFrames;
        short[] sArr = this.outputBuffer;
        int i11 = this.channelCount;
        System.arraycopy(sArr, i6 * i11, sArrEnsureSpaceForAdditionalFrames, this.pitchFrameCount * i11, i11 * i10);
        this.outputFrameCount = i6;
        this.pitchFrameCount += i10;
    }

    private static void overlapAdd(int i6, int i10, short[] sArr, int i11, short[] sArr2, int i12, short[] sArr3, int i13) {
        for (int i14 = 0; i14 < i10; i14++) {
            int i15 = (i11 * i10) + i14;
            int i16 = (i13 * i10) + i14;
            int i17 = (i12 * i10) + i14;
            for (int i18 = 0; i18 < i6; i18++) {
                sArr[i15] = (short) (((sArr3[i16] * i18) + ((i6 - i18) * sArr2[i17])) / i6);
                i15 += i10;
                i17 += i10;
                i16 += i10;
            }
        }
    }

    private boolean previousPeriodBetter(int i6, int i10) {
        return i6 != 0 && this.prevPeriod != 0 && i10 <= i6 * 3 && i6 * 2 > this.prevMinDiff * 3;
    }

    private void processStreamInput() {
        int i6 = this.outputFrameCount;
        float f = this.speed;
        float f3 = this.pitch;
        double d = f / f3;
        float f4 = this.rate * f3;
        if (d > 1.0000100135803223d || d < 0.9999899864196777d) {
            changeSpeed(d);
        } else {
            copyToOutput(this.inputBuffer, 0, this.inputFrameCount);
            this.inputFrameCount = 0;
        }
        if (f4 != 1.0f) {
            adjustRate(f4, i6);
        }
    }

    private void removePitchFrames(int i6) {
        if (i6 == 0) {
            return;
        }
        short[] sArr = this.pitchBuffer;
        int i10 = this.channelCount;
        System.arraycopy(sArr, i6 * i10, sArr, 0, (this.pitchFrameCount - i6) * i10);
        this.pitchFrameCount -= i6;
    }

    private void removeProcessedInputFrames(int i6) {
        int i10 = this.inputFrameCount - i6;
        short[] sArr = this.inputBuffer;
        int i11 = this.channelCount;
        System.arraycopy(sArr, i6 * i11, sArr, 0, i11 * i10);
        this.inputFrameCount = i10;
    }

    private int skipPitchPeriod(short[] sArr, int i6, double d, int i10) {
        int iRound;
        if (d >= 2.0d) {
            double d10 = (i10 / (d - 1.0d)) + this.accumulatedSpeedAdjustmentError;
            iRound = (int) Math.round(d10);
            this.accumulatedSpeedAdjustmentError = d10 - iRound;
        } else {
            double d11 = (((2.0d - d) * i10) / (d - 1.0d)) + this.accumulatedSpeedAdjustmentError;
            int iRound2 = (int) Math.round(d11);
            this.remainingInputToCopyFrameCount = iRound2;
            this.accumulatedSpeedAdjustmentError = d11 - iRound2;
            iRound = i10;
        }
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.outputBuffer, this.outputFrameCount, iRound);
        this.outputBuffer = sArrEnsureSpaceForAdditionalFrames;
        overlapAdd(iRound, this.channelCount, sArrEnsureSpaceForAdditionalFrames, this.outputFrameCount, sArr, i6, sArr, i6 + i10);
        this.outputFrameCount += iRound;
        return iRound;
    }

    public void flush() {
        this.inputFrameCount = 0;
        this.outputFrameCount = 0;
        this.pitchFrameCount = 0;
        this.oldRatePosition = 0;
        this.newRatePosition = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.prevPeriod = 0;
        this.prevMinDiff = 0;
        this.minDiff = 0;
        this.maxDiff = 0;
        this.accumulatedSpeedAdjustmentError = 0.0d;
    }

    public void getOutput(ShortBuffer shortBuffer) {
        Assertions.checkState(this.outputFrameCount >= 0);
        int iMin = Math.min(shortBuffer.remaining() / this.channelCount, this.outputFrameCount);
        shortBuffer.put(this.outputBuffer, 0, this.channelCount * iMin);
        int i6 = this.outputFrameCount - iMin;
        this.outputFrameCount = i6;
        short[] sArr = this.outputBuffer;
        int i10 = this.channelCount;
        System.arraycopy(sArr, iMin * i10, sArr, 0, i6 * i10);
    }

    public int getOutputSize() {
        Assertions.checkState(this.outputFrameCount >= 0);
        return this.outputFrameCount * this.channelCount * 2;
    }

    public int getPendingInputBytes() {
        return this.inputFrameCount * this.channelCount * 2;
    }

    public void queueEndOfStream() {
        int i6;
        int i10 = this.inputFrameCount;
        float f = this.speed;
        float f3 = this.pitch;
        double d = f / f3;
        int i11 = this.outputFrameCount + ((int) (((((((i10 - r5) / d) + this.remainingInputToCopyFrameCount) + this.accumulatedSpeedAdjustmentError) + this.pitchFrameCount) / (this.rate * f3)) + 0.5d));
        this.accumulatedSpeedAdjustmentError = 0.0d;
        this.inputBuffer = ensureSpaceForAdditionalFrames(this.inputBuffer, i10, (this.maxRequiredFrameCount * 2) + i10);
        int i12 = 0;
        while (true) {
            i6 = this.maxRequiredFrameCount;
            int i13 = this.channelCount;
            if (i12 >= i6 * 2 * i13) {
                break;
            }
            this.inputBuffer[(i13 * i10) + i12] = 0;
            i12++;
        }
        this.inputFrameCount = (i6 * 2) + this.inputFrameCount;
        processStreamInput();
        if (this.outputFrameCount > i11) {
            this.outputFrameCount = Math.max(i11, 0);
        }
        this.inputFrameCount = 0;
        this.remainingInputToCopyFrameCount = 0;
        this.pitchFrameCount = 0;
    }

    public void queueInput(ShortBuffer shortBuffer) {
        int iRemaining = shortBuffer.remaining();
        int i6 = this.channelCount;
        int i10 = iRemaining / i6;
        short[] sArrEnsureSpaceForAdditionalFrames = ensureSpaceForAdditionalFrames(this.inputBuffer, this.inputFrameCount, i10);
        this.inputBuffer = sArrEnsureSpaceForAdditionalFrames;
        shortBuffer.get(sArrEnsureSpaceForAdditionalFrames, this.inputFrameCount * this.channelCount, ((i6 * i10) * 2) / 2);
        this.inputFrameCount += i10;
        processStreamInput();
    }
}
