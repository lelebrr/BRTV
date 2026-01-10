package l2;

import androidx.media3.exoplayer.rtsp.RtspHeaders;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import okhttp3.Headers;
import r9.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class d {
    public static Headers a(Headers headers, Headers headers2) {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i6 = 0; i6 < size; i6++) {
            String strName = headers.name(i6);
            String strValue = headers.value(i6);
            if ((!"Warning".equalsIgnoreCase(strName) || !n.V(strValue, IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE, false)) && ("Content-Length".equalsIgnoreCase(strName) || "Content-Encoding".equalsIgnoreCase(strName) || "Content-Type".equalsIgnoreCase(strName) || !b(strName) || headers2.get(strName) == null)) {
                builder.addUnsafeNonAscii(strName, strValue);
            }
        }
        int size2 = headers2.size();
        for (int i10 = 0; i10 < size2; i10++) {
            String strName2 = headers2.name(i10);
            if (!"Content-Length".equalsIgnoreCase(strName2) && !"Content-Encoding".equalsIgnoreCase(strName2) && !"Content-Type".equalsIgnoreCase(strName2) && b(strName2)) {
                builder.addUnsafeNonAscii(strName2, headers2.value(i10));
            }
        }
        return builder.build();
    }

    public static boolean b(String str) {
        return ("Connection".equalsIgnoreCase(str) || "Keep-Alive".equalsIgnoreCase(str) || RtspHeaders.PROXY_AUTHENTICATE.equalsIgnoreCase(str) || "Proxy-Authorization".equalsIgnoreCase(str) || "TE".equalsIgnoreCase(str) || "Trailers".equalsIgnoreCase(str) || "Transfer-Encoding".equalsIgnoreCase(str) || "Upgrade".equalsIgnoreCase(str)) ? false : true;
    }
}
