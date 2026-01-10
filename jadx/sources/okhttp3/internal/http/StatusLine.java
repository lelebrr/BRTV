package okhttp3.internal.http;

import j9.f;
import j9.i;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.Protocol;
import okhttp3.Response;
import r9.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class StatusLine {
    public static final Companion Companion = new Companion(null);
    public static final int HTTP_CONTINUE = 100;
    public static final int HTTP_MISDIRECTED_REQUEST = 421;
    public static final int HTTP_PERM_REDIRECT = 308;
    public static final int HTTP_TEMP_REDIRECT = 307;
    public final int code;
    public final String message;
    public final Protocol protocol;

    /* compiled from: MyApplication */
    public static final class Companion {
        public /* synthetic */ Companion(f fVar) {
            this();
        }

        public final StatusLine get(Response response) {
            i.f(response, "response");
            return new StatusLine(response.protocol(), response.code(), response.message());
        }

        public final StatusLine parse(String str) throws NumberFormatException, IOException {
            Protocol protocol;
            int i6;
            String strSubstring;
            i.f(str, "statusLine");
            if (n.V(str, "HTTP/1.", false)) {
                i6 = 9;
                if (str.length() < 9 || str.charAt(8) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                int iCharAt = str.charAt(7) - '0';
                if (iCharAt == 0) {
                    protocol = Protocol.HTTP_1_0;
                } else {
                    if (iCharAt != 1) {
                        throw new ProtocolException("Unexpected status line: ".concat(str));
                    }
                    protocol = Protocol.HTTP_1_1;
                }
            } else {
                if (!n.V(str, "ICY ", false)) {
                    throw new ProtocolException("Unexpected status line: ".concat(str));
                }
                protocol = Protocol.HTTP_1_0;
                i6 = 4;
            }
            int i10 = i6 + 3;
            if (str.length() < i10) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
            try {
                String strSubstring2 = str.substring(i6, i10);
                i.e(strSubstring2, "this as java.lang.String…ing(startIndex, endIndex)");
                int i11 = Integer.parseInt(strSubstring2);
                if (str.length() <= i10) {
                    strSubstring = "";
                } else {
                    if (str.charAt(i10) != ' ') {
                        throw new ProtocolException("Unexpected status line: ".concat(str));
                    }
                    strSubstring = str.substring(i6 + 4);
                    i.e(strSubstring, "this as java.lang.String).substring(startIndex)");
                }
                return new StatusLine(protocol, i11, strSubstring);
            } catch (NumberFormatException unused) {
                throw new ProtocolException("Unexpected status line: ".concat(str));
            }
        }

        private Companion() {
        }
    }

    public StatusLine(Protocol protocol, int i6, String str) {
        i.f(protocol, "protocol");
        i.f(str, "message");
        this.protocol = protocol;
        this.code = i6;
        this.message = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.protocol == Protocol.HTTP_1_0) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.code);
        sb.append(' ');
        sb.append(this.message);
        String string = sb.toString();
        i.e(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
