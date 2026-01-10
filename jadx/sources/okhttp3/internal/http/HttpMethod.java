package okhttp3.internal.http;

import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import j9.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    public static final boolean permitsRequestBody(String str) {
        i.f(str, "method");
        return (str.equals("GET") || str.equals("HEAD")) ? false : true;
    }

    public static final boolean requiresRequestBody(String str) {
        i.f(str, "method");
        return str.equals(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_POST) || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    public final boolean invalidatesCache(String str) {
        i.f(str, "method");
        return str.equals(HlsMediaPlaylist.Interstitial.CUE_TRIGGER_POST) || str.equals("PATCH") || str.equals("PUT") || str.equals("DELETE") || str.equals("MOVE");
    }

    public final boolean redirectsToGet(String str) {
        i.f(str, "method");
        return !str.equals("PROPFIND");
    }

    public final boolean redirectsWithBody(String str) {
        i.f(str, "method");
        return str.equals("PROPFIND");
    }
}
