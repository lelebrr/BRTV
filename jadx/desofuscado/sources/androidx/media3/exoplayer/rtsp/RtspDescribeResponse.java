package androidx.media3.exoplayer.rtsp;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspDescribeResponse {
    public final RtspHeaders headers;
    public final SessionDescription sessionDescription;
    public final int status;

    public RtspDescribeResponse(RtspHeaders rtspHeaders, int i6, SessionDescription sessionDescription) {
        this.headers = rtspHeaders;
        this.status = i6;
        this.sessionDescription = sessionDescription;
    }
}
