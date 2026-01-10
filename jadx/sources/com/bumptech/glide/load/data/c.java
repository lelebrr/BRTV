package com.bumptech.glide.load.data;

import androidx.media3.common.C;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public final FileOutputStream f3549a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f3550b;

    /* renamed from: c, reason: collision with root package name */
    public final y2.f f3551c;
    public int d;

    public c(FileOutputStream fileOutputStream, y2.f fVar) {
        this.f3549a = fileOutputStream;
        this.f3551c = fVar;
        this.f3550b = (byte[]) fVar.d(C.DEFAULT_BUFFER_SEGMENT_SIZE, byte[].class);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        FileOutputStream fileOutputStream = this.f3549a;
        try {
            flush();
            fileOutputStream.close();
            byte[] bArr = this.f3550b;
            if (bArr != null) {
                this.f3551c.h(bArr);
                this.f3550b = null;
            }
        } catch (Throwable th) {
            fileOutputStream.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        int i6 = this.d;
        FileOutputStream fileOutputStream = this.f3549a;
        if (i6 > 0) {
            fileOutputStream.write(this.f3550b, 0, i6);
            this.d = 0;
        }
        fileOutputStream.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i6) throws IOException {
        byte[] bArr = this.f3550b;
        int i10 = this.d;
        int i11 = i10 + 1;
        this.d = i11;
        bArr[i10] = (byte) i6;
        if (i11 != bArr.length || i11 <= 0) {
            return;
        }
        this.f3549a.write(bArr, 0, i11);
        this.d = 0;
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i6, int i10) throws IOException {
        int i11 = 0;
        do {
            int i12 = i10 - i11;
            int i13 = i6 + i11;
            int i14 = this.d;
            FileOutputStream fileOutputStream = this.f3549a;
            if (i14 == 0 && i12 >= this.f3550b.length) {
                fileOutputStream.write(bArr, i13, i12);
                return;
            }
            int iMin = Math.min(i12, this.f3550b.length - i14);
            System.arraycopy(bArr, i13, this.f3550b, this.d, iMin);
            int i15 = this.d + iMin;
            this.d = i15;
            i11 += iMin;
            byte[] bArr2 = this.f3550b;
            if (i15 == bArr2.length && i15 > 0) {
                fileOutputStream.write(bArr2, 0, i15);
                this.d = 0;
            }
        } while (i11 < i10);
    }
}
