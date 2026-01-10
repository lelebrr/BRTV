package androidx.media3.common.util;

import androidx.media3.common.C;
import androidx.media3.common.audio.SpeedProvider;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public class SpeedProviderUtil {
    private SpeedProviderUtil() {
    }

    public static long getDurationAfterSpeedProviderApplied(SpeedProvider speedProvider, long j10) {
        long j11 = 0;
        double dMin = 0.0d;
        while (j11 < j10) {
            long nextSpeedChangeTimeUs = speedProvider.getNextSpeedChangeTimeUs(j11);
            if (nextSpeedChangeTimeUs == C.TIME_UNSET) {
                nextSpeedChangeTimeUs = Long.MAX_VALUE;
            }
            dMin += (Math.min(nextSpeedChangeTimeUs, j10) - j11) / speedProvider.getSpeed(j11);
            j11 = nextSpeedChangeTimeUs;
        }
        return (long) Math.floor(dMin);
    }

    public static long getNextSpeedChangeSamplePosition(SpeedProvider speedProvider, long j10, int i6) {
        Assertions.checkArgument(j10 >= 0);
        Assertions.checkArgument(i6 > 0);
        long nextSpeedChangeTimeUs = speedProvider.getNextSpeedChangeTimeUs(Util.sampleCountToDurationUs(j10, i6));
        if (nextSpeedChangeTimeUs == C.TIME_UNSET) {
            return -1L;
        }
        return Util.durationUsToSampleCount(nextSpeedChangeTimeUs, i6);
    }

    public static float getSampleAlignedSpeed(SpeedProvider speedProvider, long j10, int i6) {
        Assertions.checkArgument(j10 >= 0);
        Assertions.checkArgument(i6 > 0);
        return speedProvider.getSpeed(Util.sampleCountToDurationUs(j10, i6));
    }
}
