package okhttp3;

import ea.q;
import j9.i;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import okio.ByteString;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Credentials {
    public static final Credentials INSTANCE = new Credentials();

    private Credentials() {
    }

    public static final String basic(String str, String str2) {
        i.f(str, "username");
        i.f(str2, "password");
        return basic$default(str, str2, null, 4, null);
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset charset, int i6, Object obj) {
        if ((i6 & 4) != 0) {
            charset = StandardCharsets.ISO_8859_1;
            i.e(charset, "ISO_8859_1");
        }
        return basic(str, str2, charset);
    }

    public static final String basic(String str, String str2, Charset charset) {
        i.f(str, "username");
        i.f(str2, "password");
        i.f(charset, "charset");
        return q.p("Basic ", ByteString.Companion.encodeString(str + ':' + str2, charset).base64());
    }
}
