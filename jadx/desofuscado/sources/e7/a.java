package e7;

import java.io.OutputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends OutputStream {
    public final String toString() {
        return "ByteStreams.nullOutputStream()";
    }

    @Override // java.io.OutputStream
    public final void write(int i6) {
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        bArr.getClass();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i6, int i10) {
        bArr.getClass();
        b7.b.l(i6, i10 + i6, bArr.length);
    }
}
