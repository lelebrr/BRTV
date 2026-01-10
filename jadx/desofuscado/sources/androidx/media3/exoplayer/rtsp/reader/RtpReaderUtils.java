package androidx.media3.exoplayer.rtsp.reader;

import androidx.media3.common.util.Util;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class RtpReaderUtils {
    private RtpReaderUtils() {
    }

    public static long toSampleTimeUs(long j10, long j11, long j12, int i6) {
        return j10 + Util.scaleLargeTimestamp(j11 - j12, 1000000L, i6);
    }
}
