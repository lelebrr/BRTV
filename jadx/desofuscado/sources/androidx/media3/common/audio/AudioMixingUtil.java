package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class AudioMixingUtil {
    private static final float FLOAT_PCM_MAX_VALUE = 1.0f;
    private static final float FLOAT_PCM_MIN_VALUE = -1.0f;

    private AudioMixingUtil() {
    }

    public static boolean canMix(AudioProcessor.AudioFormat audioFormat) {
        if (audioFormat.sampleRate == -1 || audioFormat.channelCount == -1) {
            return false;
        }
        int i6 = audioFormat.encoding;
        return i6 == 2 || i6 == 4;
    }

    private static float floatSampleToInt16Pcm(float f) {
        return Util.constrainValue(f * (f < 0.0f ? 32768 : 32767), -32768.0f, 32767.0f);
    }

    private static float getPcmSample(ByteBuffer byteBuffer, boolean z7, boolean z10) {
        return z10 ? z7 ? byteBuffer.getShort() : floatSampleToInt16Pcm(byteBuffer.getFloat()) : z7 ? int16SampleToFloatPcm(byteBuffer.getShort()) : byteBuffer.getFloat();
    }

    private static float int16SampleToFloatPcm(short s10) {
        return s10 / (s10 < 0 ? 32768 : 32767);
    }

    public static ByteBuffer mix(ByteBuffer byteBuffer, AudioProcessor.AudioFormat audioFormat, ByteBuffer byteBuffer2, AudioProcessor.AudioFormat audioFormat2, ChannelMixingMatrix channelMixingMatrix, int i6, boolean z7, boolean z10) {
        AudioProcessor.AudioFormat audioFormat3;
        boolean z11;
        if (audioFormat.encoding == 2) {
            audioFormat3 = audioFormat2;
            z11 = true;
        } else {
            audioFormat3 = audioFormat2;
            z11 = false;
        }
        boolean z12 = audioFormat3.encoding == 2;
        int inputChannelCount = channelMixingMatrix.getInputChannelCount();
        int outputChannelCount = channelMixingMatrix.getOutputChannelCount();
        float[] fArr = new float[inputChannelCount];
        float[] fArr2 = new float[outputChannelCount];
        for (int i10 = 0; i10 < i6; i10++) {
            if (z7) {
                int iPosition = byteBuffer2.position();
                for (int i11 = 0; i11 < outputChannelCount; i11++) {
                    fArr2[i11] = getPcmSample(byteBuffer2, z12, z12);
                }
                byteBuffer2.position(iPosition);
            }
            for (int i12 = 0; i12 < inputChannelCount; i12++) {
                fArr[i12] = getPcmSample(byteBuffer, z11, z12);
            }
            for (int i13 = 0; i13 < outputChannelCount; i13++) {
                for (int i14 = 0; i14 < inputChannelCount; i14++) {
                    fArr2[i13] = (channelMixingMatrix.getMixingCoefficient(i14, i13) * fArr[i14]) + fArr2[i13];
                }
                if (z12) {
                    byteBuffer2.putShort((short) Util.constrainValue(fArr2[i13], -32768.0f, 32767.0f));
                } else {
                    byteBuffer2.putFloat(z10 ? Util.constrainValue(fArr2[i13], FLOAT_PCM_MIN_VALUE, 1.0f) : fArr2[i13]);
                }
                fArr2[i13] = 0.0f;
            }
        }
        return byteBuffer2;
    }

    public static boolean canMix(AudioProcessor.AudioFormat audioFormat, AudioProcessor.AudioFormat audioFormat2) {
        return audioFormat.sampleRate == audioFormat2.sampleRate && canMix(audioFormat) && canMix(audioFormat2);
    }
}
