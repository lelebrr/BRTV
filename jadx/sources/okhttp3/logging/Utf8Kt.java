package okhttp3.logging;

import j9.i;
import java.io.EOFException;
import okio.Buffer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class Utf8Kt {
    public static final boolean isProbablyUtf8(Buffer buffer) {
        i.f(buffer, "<this>");
        try {
            Buffer buffer2 = new Buffer();
            long size = buffer.size();
            buffer.copyTo(buffer2, 0L, size > 64 ? 64L : size);
            int i6 = 0;
            while (i6 < 16) {
                i6++;
                if (buffer2.exhausted()) {
                    return true;
                }
                int utf8CodePoint = buffer2.readUtf8CodePoint();
                if (Character.isISOControl(utf8CodePoint) && !Character.isWhitespace(utf8CodePoint)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }
}
