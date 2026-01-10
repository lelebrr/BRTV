package androidx.media3.exoplayer.rtsp;

import android.net.Uri;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UriUtil;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class RtspTrackTiming {
    public final long rtpTimestamp;
    public final int sequenceNumber;
    public final Uri uri;

    private RtspTrackTiming(long j10, int i6, Uri uri) {
        this.rtpTimestamp = j10;
        this.sequenceNumber = i6;
        this.uri = uri;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static d7.u1 parseTrackTiming(java.lang.String r19, android.net.Uri r20) throws androidx.media3.common.ParserException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 221
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.rtsp.RtspTrackTiming.parseTrackTiming(java.lang.String, android.net.Uri):d7.u1");
    }

    public static Uri resolveUri(String str, Uri uri) {
        Assertions.checkArgument(((String) Assertions.checkNotNull(uri.getScheme())).equals("rtsp"));
        Uri uri2 = Uri.parse(str);
        if (uri2.isAbsolute()) {
            return uri2;
        }
        Uri uri3 = Uri.parse("rtsp://" + str);
        String string = uri.toString();
        return ((String) Assertions.checkNotNull(uri3.getHost())).equals(uri.getHost()) ? uri3 : string.endsWith("/") ? UriUtil.resolveToUri(string, str) : UriUtil.resolveToUri(string.concat("/"), str);
    }
}
