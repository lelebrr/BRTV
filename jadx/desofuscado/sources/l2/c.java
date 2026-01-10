package l2;

import android.graphics.Bitmap;
import j9.i;
import java.io.IOException;
import okhttp3.Headers;
import okhttp3.Response;
import okio.BufferedSink;
import okio.BufferedSource;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final Object f7953a = n5.d.B(new a(this));

    /* renamed from: b, reason: collision with root package name */
    public final Object f7954b = n5.d.B(new b(this));

    /* renamed from: c, reason: collision with root package name */
    public final long f7955c;
    public final long d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7956e;
    public final Headers f;

    public c(BufferedSource bufferedSource) throws NumberFormatException, IOException {
        this.f7955c = Long.parseLong(bufferedSource.readUtf8LineStrict());
        this.d = Long.parseLong(bufferedSource.readUtf8LineStrict());
        this.f7956e = Integer.parseInt(bufferedSource.readUtf8LineStrict()) > 0;
        int i6 = Integer.parseInt(bufferedSource.readUtf8LineStrict());
        Headers.Builder builder = new Headers.Builder();
        for (int i10 = 0; i10 < i6; i10++) {
            String utf8LineStrict = bufferedSource.readUtf8LineStrict();
            Bitmap.Config[] configArr = r2.f.f9467a;
            int iB0 = r9.f.b0(utf8LineStrict, ':', 0, false, 6);
            if (iB0 == -1) {
                throw new IllegalArgumentException("Unexpected header: ".concat(utf8LineStrict).toString());
            }
            String strSubstring = utf8LineStrict.substring(0, iB0);
            i.e(strSubstring, "substring(...)");
            String string = r9.f.n0(strSubstring).toString();
            String strSubstring2 = utf8LineStrict.substring(iB0 + 1);
            i.e(strSubstring2, "substring(...)");
            builder.addUnsafeNonAscii(string, strSubstring2);
        }
        this.f = builder.build();
    }

    public final void a(BufferedSink bufferedSink) throws IOException {
        bufferedSink.writeDecimalLong(this.f7955c).writeByte(10);
        bufferedSink.writeDecimalLong(this.d).writeByte(10);
        bufferedSink.writeDecimalLong(this.f7956e ? 1L : 0L).writeByte(10);
        Headers headers = this.f;
        bufferedSink.writeDecimalLong(headers.size()).writeByte(10);
        int size = headers.size();
        for (int i6 = 0; i6 < size; i6++) {
            bufferedSink.writeUtf8(headers.name(i6)).writeUtf8(": ").writeUtf8(headers.value(i6)).writeByte(10);
        }
    }

    public c(Response response) {
        this.f7955c = response.sentRequestAtMillis();
        this.d = response.receivedResponseAtMillis();
        this.f7956e = response.handshake() != null;
        this.f = response.headers();
    }
}
