package androidx.media3.exoplayer.rtsp;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspResponse {
    public final RtspHeaders headers;
    public final String messageBody;
    public final int status;

    public RtspResponse(int i6, RtspHeaders rtspHeaders, String str) {
        this.status = i6;
        this.headers = rtspHeaders;
        this.messageBody = str;
    }

    public RtspResponse(int i6, RtspHeaders rtspHeaders) {
        this(i6, rtspHeaders, "");
    }
}
