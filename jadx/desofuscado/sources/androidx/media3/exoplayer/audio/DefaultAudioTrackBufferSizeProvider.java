package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.OpusUtil;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class DefaultAudioTrackBufferSizeProvider implements DefaultAudioSink.AudioTrackBufferSizeProvider {
    private static final int AC3_BUFFER_MULTIPLICATION_FACTOR = 2;
    private static final int DTSHD_BUFFER_MULTIPLICATION_FACTOR = 4;
    private static final int MAX_PCM_BUFFER_DURATION_US = 750000;
    private static final int MIN_PCM_BUFFER_DURATION_US = 250000;
    private static final int OFFLOAD_BUFFER_DURATION_US = 50000000;
    private static final int PASSTHROUGH_BUFFER_DURATION_US = 250000;
    private static final int PCM_BUFFER_MULTIPLICATION_FACTOR = 4;
    public final int ac3BufferMultiplicationFactor;
    public final int dtshdBufferMultiplicationFactor;
    protected final int maxPcmBufferDurationUs;
    protected final int minPcmBufferDurationUs;
    protected final int offloadBufferDurationUs;
    protected final int passthroughBufferDurationUs;
    protected final int pcmBufferMultiplicationFactor;

    /* compiled from: MyApplication */
    public static class Builder {
        private int minPcmBufferDurationUs = 250000;
        private int maxPcmBufferDurationUs = DefaultAudioTrackBufferSizeProvider.MAX_PCM_BUFFER_DURATION_US;
        private int pcmBufferMultiplicationFactor = 4;
        private int passthroughBufferDurationUs = 250000;
        private int offloadBufferDurationUs = DefaultAudioTrackBufferSizeProvider.OFFLOAD_BUFFER_DURATION_US;
        private int ac3BufferMultiplicationFactor = 2;
        private int dtshdBufferMultiplicationFactor = 4;

        public DefaultAudioTrackBufferSizeProvider build() {
            return new DefaultAudioTrackBufferSizeProvider(this);
        }

        public Builder setAc3BufferMultiplicationFactor(int i6) {
            this.ac3BufferMultiplicationFactor = i6;
            return this;
        }

        public Builder setDtshdBufferMultiplicationFactor(int i6) {
            this.dtshdBufferMultiplicationFactor = i6;
            return this;
        }

        public Builder setMaxPcmBufferDurationUs(int i6) {
            this.maxPcmBufferDurationUs = i6;
            return this;
        }

        public Builder setMinPcmBufferDurationUs(int i6) {
            this.minPcmBufferDurationUs = i6;
            return this;
        }

        public Builder setOffloadBufferDurationUs(int i6) {
            this.offloadBufferDurationUs = i6;
            return this;
        }

        public Builder setPassthroughBufferDurationUs(int i6) {
            this.passthroughBufferDurationUs = i6;
            return this;
        }

        public Builder setPcmBufferMultiplicationFactor(int i6) {
            this.pcmBufferMultiplicationFactor = i6;
            return this;
        }
    }

    public DefaultAudioTrackBufferSizeProvider(Builder builder) {
        this.minPcmBufferDurationUs = builder.minPcmBufferDurationUs;
        this.maxPcmBufferDurationUs = builder.maxPcmBufferDurationUs;
        this.pcmBufferMultiplicationFactor = builder.pcmBufferMultiplicationFactor;
        this.passthroughBufferDurationUs = builder.passthroughBufferDurationUs;
        this.offloadBufferDurationUs = builder.offloadBufferDurationUs;
        this.ac3BufferMultiplicationFactor = builder.ac3BufferMultiplicationFactor;
        this.dtshdBufferMultiplicationFactor = builder.dtshdBufferMultiplicationFactor;
    }

    public static int durationUsToBytes(int i6, int i10, int i11) {
        return r4.b.c(((i6 * i10) * i11) / 1000000);
    }

    public static int getMaximumEncodedRateBytesPerSecond(int i6) {
        if (i6 == 20) {
            return OpusUtil.MAX_BYTES_PER_SECOND;
        }
        if (i6 == 30) {
            return DtsUtil.DTS_HD_MAX_RATE_BYTES_PER_SECOND;
        }
        switch (i6) {
            case 5:
                return Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND;
            case 6:
                return 768000;
            case 7:
                return DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND;
            case 8:
                return DtsUtil.DTS_HD_MAX_RATE_BYTES_PER_SECOND;
            case 9:
                return MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND;
            case 10:
                return 100000;
            case 11:
                return AacUtil.AAC_HE_V1_MAX_RATE_BYTES_PER_SECOND;
            case 12:
                return 7000;
            default:
                switch (i6) {
                    case 14:
                        return Ac3Util.TRUEHD_MAX_RATE_BYTES_PER_SECOND;
                    case 15:
                        return 8000;
                    case 16:
                        return AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND;
                    case 17:
                        return Ac4Util.MAX_RATE_BYTES_PER_SECOND;
                    case 18:
                        return 768000;
                    default:
                        throw new IllegalArgumentException();
                }
        }
    }

    public int get1xBufferSizeInBytes(int i6, int i10, int i11, int i12, int i13, int i14) {
        if (i11 == 0) {
            return getPcmBufferSizeInBytes(i6, i13, i12);
        }
        if (i11 == 1) {
            return getOffloadBufferSizeInBytes(i10);
        }
        if (i11 == 2) {
            return getPassthroughBufferSizeInBytes(i10, i14);
        }
        throw new IllegalArgumentException();
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioTrackBufferSizeProvider
    public int getBufferSizeInBytes(int i6, int i10, int i11, int i12, int i13, int i14, double d) {
        return (((Math.max(i6, (int) (get1xBufferSizeInBytes(i6, i10, i11, i12, i13, i14) * d)) + i12) - 1) / i12) * i12;
    }

    public int getOffloadBufferSizeInBytes(int i6) {
        return r4.b.c((this.offloadBufferDurationUs * getMaximumEncodedRateBytesPerSecond(i6)) / 1000000);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0014  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int getPassthroughBufferSizeInBytes(int r8, int r9) {
        /*
            r7 = this;
            int r0 = r7.passthroughBufferDurationUs
            r1 = 5
            r2 = 8
            if (r8 != r1) goto Lc
            int r1 = r7.ac3BufferMultiplicationFactor
        L9:
            int r0 = r0 * r1
            goto L11
        Lc:
            if (r8 != r2) goto L11
            int r1 = r7.dtshdBufferMultiplicationFactor
            goto L9
        L11:
            r1 = -1
            if (r9 == r1) goto L6c
            java.math.RoundingMode r8 = java.math.RoundingMode.CEILING
            r8.getClass()
            int r1 = r9 / 8
            int r3 = r2 * r1
            int r3 = r9 - r3
            if (r3 != 0) goto L22
            goto L70
        L22:
            r9 = r9 ^ r2
            int r9 = r9 >> 31
            r4 = 1
            r9 = r9 | r4
            int[] r5 = f7.c.f6796a
            int r6 = r8.ordinal()
            r5 = r5[r6]
            r6 = 0
            switch(r5) {
                case 1: goto L64;
                case 2: goto L70;
                case 3: goto L60;
                case 4: goto L62;
                case 5: goto L5d;
                case 6: goto L39;
                case 7: goto L39;
                case 8: goto L39;
                default: goto L33;
            }
        L33:
            java.lang.AssertionError r8 = new java.lang.AssertionError
            r8.<init>()
            throw r8
        L39:
            int r3 = java.lang.Math.abs(r3)
            int r2 = java.lang.Math.abs(r2)
            int r2 = r2 - r3
            int r3 = r3 - r2
            if (r3 != 0) goto L5a
            java.math.RoundingMode r2 = java.math.RoundingMode.HALF_UP
            if (r8 == r2) goto L62
            java.math.RoundingMode r2 = java.math.RoundingMode.HALF_EVEN
            if (r8 != r2) goto L4f
            r8 = 1
            goto L50
        L4f:
            r8 = 0
        L50:
            r2 = r1 & 1
            if (r2 == 0) goto L55
            goto L56
        L55:
            r4 = 0
        L56:
            r8 = r8 & r4
            if (r8 == 0) goto L70
            goto L62
        L5a:
            if (r3 <= 0) goto L70
            goto L62
        L5d:
            if (r9 <= 0) goto L70
            goto L62
        L60:
            if (r9 >= 0) goto L70
        L62:
            int r1 = r1 + r9
            goto L70
        L64:
            if (r3 != 0) goto L67
            goto L68
        L67:
            r4 = 0
        L68:
            com.bumptech.glide.c.d(r4)
            goto L70
        L6c:
            int r1 = getMaximumEncodedRateBytesPerSecond(r8)
        L70:
            long r8 = (long) r0
            long r0 = (long) r1
            long r8 = r8 * r0
            r0 = 1000000(0xf4240, double:4.940656E-318)
            long r8 = r8 / r0
            int r8 = r4.b.c(r8)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.audio.DefaultAudioTrackBufferSizeProvider.getPassthroughBufferSizeInBytes(int, int):int");
    }

    public int getPcmBufferSizeInBytes(int i6, int i10, int i11) {
        return Util.constrainValue(i6 * this.pcmBufferMultiplicationFactor, durationUsToBytes(this.minPcmBufferDurationUs, i10, i11), durationUsToBytes(this.maxPcmBufferDurationUs, i10, i11));
    }
}
