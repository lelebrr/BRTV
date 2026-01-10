package androidx.fragment.app;

import android.util.Log;
import java.io.Writer;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t0 extends Writer {

    /* renamed from: b, reason: collision with root package name */
    public final StringBuilder f1550b = new StringBuilder(128);

    /* renamed from: a, reason: collision with root package name */
    public final String f1549a = "FragmentManager";

    public final void a() {
        StringBuilder sb = this.f1550b;
        if (sb.length() > 0) {
            Log.d(this.f1549a, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        a();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i6, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            char c5 = cArr[i6 + i11];
            if (c5 == '\n') {
                a();
            } else {
                this.f1550b.append(c5);
            }
        }
    }
}
