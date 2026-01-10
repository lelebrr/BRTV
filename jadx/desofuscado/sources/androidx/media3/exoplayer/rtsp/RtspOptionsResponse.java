package androidx.media3.exoplayer.rtsp;

import d7.u1;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspOptionsResponse {
    public final int status;
    public final u1 supportedMethods;

    public RtspOptionsResponse(int i6, List<Integer> list) {
        this.status = i6;
        this.supportedMethods = u1.n(list);
    }
}
