package androidx.media3.exoplayer.rtsp;

import d7.u1;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspPlayResponse {
    public final RtspSessionTiming sessionTiming;
    public final int status;
    public final u1 trackTimingList;

    public RtspPlayResponse(int i6, RtspSessionTiming rtspSessionTiming, List<RtspTrackTiming> list) {
        this.status = i6;
        this.sessionTiming = rtspSessionTiming;
        this.trackTimingList = u1.n(list);
    }
}
