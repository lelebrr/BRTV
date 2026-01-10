package androidx.media3.exoplayer.rtsp;

import androidx.media3.exoplayer.rtsp.RtspMessageUtil;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspSetupResponse {
    public final RtspMessageUtil.RtspSessionHeader sessionHeader;
    public final int status;
    public final String transport;

    public RtspSetupResponse(int i6, RtspMessageUtil.RtspSessionHeader rtspSessionHeader, String str) {
        this.status = i6;
        this.sessionHeader = rtspSessionHeader;
        this.transport = str;
    }
}
