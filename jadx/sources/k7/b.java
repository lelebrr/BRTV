package k7;

import java.io.OutputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f7739a;

    @Override // java.io.OutputStream
    public final void write(int i6) {
        this.f7739a++;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        this.f7739a += bArr.length;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i6, int i10) {
        int i11;
        if (i6 >= 0 && i6 <= bArr.length && i10 >= 0 && (i11 = i6 + i10) <= bArr.length && i11 >= 0) {
            this.f7739a += i10;
            return;
        }
        throw new IndexOutOfBoundsException();
    }
}
