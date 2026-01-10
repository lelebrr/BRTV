package androidx.media3.exoplayer.rtsp;

import androidx.media3.common.C;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Util;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspSessionTiming {
    private static final long LIVE_START_TIME = 0;
    private static final String START_TIMING_NTP_FORMAT = "npt=%.3f-";
    public final long startTimeMs;
    public final long stopTimeMs;
    public static final RtspSessionTiming DEFAULT = new RtspSessionTiming(0, C.TIME_UNSET);
    private static final Pattern NPT_RANGE_PATTERN = Pattern.compile("npt[:=]([.\\d]+|now)\\s?-\\s?([.\\d]+)?");

    private RtspSessionTiming(long j10, long j11) {
        this.startTimeMs = j10;
        this.stopTimeMs = j11;
    }

    public static String getOffsetStartTimeTiming(long j10) {
        return Util.formatInvariant(START_TIMING_NTP_FORMAT, Double.valueOf(j10 / 1000.0d));
    }

    public static RtspSessionTiming parseTiming(String str) throws ParserException {
        long j10;
        Matcher matcher = NPT_RANGE_PATTERN.matcher(str);
        RtspMessageUtil.checkManifestExpression(matcher.matches(), str);
        String strGroup = matcher.group(1);
        RtspMessageUtil.checkManifestExpression(strGroup != null, str);
        long j11 = ((String) Util.castNonNull(strGroup)).equals("now") ? 0L : (long) (Float.parseFloat(strGroup) * 1000.0f);
        String strGroup2 = matcher.group(2);
        if (strGroup2 != null) {
            try {
                j10 = (long) (Float.parseFloat(strGroup2) * 1000.0f);
                RtspMessageUtil.checkManifestExpression(j10 >= j11, str);
            } catch (NumberFormatException e5) {
                throw ParserException.createForMalformedManifest(strGroup2, e5);
            }
        } else {
            j10 = C.TIME_UNSET;
        }
        return new RtspSessionTiming(j11, j10);
    }

    public long getDurationMs() {
        return this.stopTimeMs - this.startTimeMs;
    }

    public boolean isLive() {
        return this.stopTimeMs == C.TIME_UNSET;
    }
}
