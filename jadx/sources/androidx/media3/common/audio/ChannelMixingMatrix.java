package androidx.media3.common.audio;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import ea.q;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ChannelMixingMatrix {
    private final float[] coefficients;
    private final int inputChannelCount;
    private final boolean isDiagonal;
    private final boolean isIdentity;
    private final boolean isZero;
    private final int outputChannelCount;

    public ChannelMixingMatrix(int i6, int i10, float[] fArr) {
        boolean z7 = false;
        Assertions.checkArgument(i6 > 0, "Input channel count must be positive.");
        Assertions.checkArgument(i10 > 0, "Output channel count must be positive.");
        Assertions.checkArgument(fArr.length == i6 * i10, "Coefficient array length is invalid.");
        this.inputChannelCount = i6;
        this.outputChannelCount = i10;
        this.coefficients = checkCoefficientsValid(fArr);
        int i11 = 0;
        boolean z10 = true;
        boolean z11 = true;
        boolean z12 = true;
        while (i11 < i6) {
            int i12 = 0;
            while (i12 < i10) {
                float mixingCoefficient = getMixingCoefficient(i11, i12);
                boolean z13 = i11 == i12;
                if (mixingCoefficient != 1.0f && z13) {
                    z12 = false;
                }
                if (mixingCoefficient != 0.0f) {
                    z10 = false;
                    if (!z13) {
                        z11 = false;
                    }
                }
                i12++;
            }
            i11++;
        }
        this.isZero = z10;
        boolean z14 = isSquare() && z11;
        this.isDiagonal = z14;
        if (z14 && z12) {
            z7 = true;
        }
        this.isIdentity = z7;
    }

    private static float[] checkCoefficientsValid(float[] fArr) {
        for (int i6 = 0; i6 < fArr.length; i6++) {
            if (fArr[i6] < 0.0f) {
                throw new IllegalArgumentException(q.f(i6, "Coefficient at index ", " is negative."));
            }
        }
        return fArr;
    }

    public static ChannelMixingMatrix create(int i6, int i10) {
        return new ChannelMixingMatrix(i6, i10, createConstantGainMixingCoefficients(i6, i10));
    }

    private static float[] createConstantGainMixingCoefficients(int i6, int i10) {
        if (i6 == i10) {
            return initializeIdentityMatrix(i10);
        }
        if (i6 == 1 && i10 == 2) {
            return new float[]{1.0f, 1.0f};
        }
        if (i6 == 2 && i10 == 1) {
            return new float[]{0.5f, 0.5f};
        }
        throw new UnsupportedOperationException("Default channel mixing coefficients for " + i6 + "->" + i10 + " are not yet implemented.");
    }

    private static float[] createConstantPowerMixingCoefficients(int i6, int i10) {
        if (i10 == 1) {
            return getConstantPowerCoefficientsToMono(i6);
        }
        if (i10 == 2) {
            return getConstantPowerCoefficientsToStereo(i6);
        }
        if (i6 == i10) {
            return initializeIdentityMatrix(i10);
        }
        throw new UnsupportedOperationException("Default constant power channel mixing coefficients for " + i6 + "->" + i10 + " are not implemented.");
    }

    public static ChannelMixingMatrix createForConstantPower(int i6, int i10) {
        return new ChannelMixingMatrix(i6, i10, createConstantPowerMixingCoefficients(i6, i10));
    }

    private static float[] getConstantPowerCoefficientsToMono(int i6) {
        switch (i6) {
            case 1:
                return new float[]{1.0f};
            case 2:
                return new float[]{0.7071f, 0.7071f};
            case 3:
                return new float[]{0.7071f, 0.7071f, 1.0f};
            case 4:
                return new float[]{0.7071f, 0.7071f, 0.5f, 0.5f};
            case 5:
                return new float[]{0.7071f, 0.7071f, 1.0f, 0.5f, 0.5f};
            case 6:
                return new float[]{0.7071f, 0.7071f, 1.0f, 0.7071f, 0.5f, 0.5f};
            default:
                throw new UnsupportedOperationException(q.f(i6, "Default constant power channel mixing coefficients for ", "->1 are not implemented."));
        }
    }

    private static float[] getConstantPowerCoefficientsToStereo(int i6) {
        switch (i6) {
            case 1:
                return new float[]{0.7071f, 0.7071f};
            case 2:
                return new float[]{1.0f, 0.0f, 0.0f, 1.0f};
            case 3:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.0f, 1.0f, 0.7071f};
            case 4:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.0f, 0.0f, 1.0f, 0.0f, 0.7071f};
            case 5:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.7071f, 0.0f, 0.0f, 1.0f, 0.7071f, 0.0f, 0.7071f};
            case 6:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.5f, 0.7071f, 0.0f, 0.0f, 1.0f, 0.7071f, 0.5f, 0.0f, 0.7071f};
            default:
                throw new UnsupportedOperationException(q.f(i6, "Default constant power channel mixing coefficients for ", "->2 are not implemented."));
        }
    }

    private static float[] initializeIdentityMatrix(int i6) {
        float[] fArr = new float[i6 * i6];
        for (int i10 = 0; i10 < i6; i10++) {
            fArr[(i6 * i10) + i10] = 1.0f;
        }
        return fArr;
    }

    public int getInputChannelCount() {
        return this.inputChannelCount;
    }

    public float getMixingCoefficient(int i6, int i10) {
        return this.coefficients[(i6 * this.outputChannelCount) + i10];
    }

    public int getOutputChannelCount() {
        return this.outputChannelCount;
    }

    public boolean isDiagonal() {
        return this.isDiagonal;
    }

    public boolean isIdentity() {
        return this.isIdentity;
    }

    public boolean isSquare() {
        return this.inputChannelCount == this.outputChannelCount;
    }

    public boolean isZero() {
        return this.isZero;
    }

    public ChannelMixingMatrix scaleBy(float f) {
        float[] fArr = new float[this.coefficients.length];
        int i6 = 0;
        while (true) {
            float[] fArr2 = this.coefficients;
            if (i6 >= fArr2.length) {
                return new ChannelMixingMatrix(this.inputChannelCount, this.outputChannelCount, fArr);
            }
            fArr[i6] = fArr2[i6] * f;
            i6++;
        }
    }
}
