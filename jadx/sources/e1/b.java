package e1;

import android.util.Log;
import ea.q;
import java.io.ByteArrayInputStream;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class b extends InputStream implements DataInput {

    /* renamed from: a, reason: collision with root package name */
    public final DataInputStream f6408a;

    /* renamed from: b, reason: collision with root package name */
    public int f6409b;

    /* renamed from: c, reason: collision with root package name */
    public ByteOrder f6410c;
    public byte[] d;

    /* renamed from: e, reason: collision with root package name */
    public final int f6411e;

    public b(byte[] bArr) {
        this(new ByteArrayInputStream(bArr), ByteOrder.BIG_ENDIAN);
        this.f6411e = bArr.length;
    }

    public final void a(int i6) throws IOException {
        int i10 = 0;
        while (i10 < i6) {
            DataInputStream dataInputStream = this.f6408a;
            int i11 = i6 - i10;
            int iSkip = (int) dataInputStream.skip(i11);
            if (iSkip <= 0) {
                if (this.d == null) {
                    this.d = new byte[8192];
                }
                iSkip = dataInputStream.read(this.d, 0, Math.min(8192, i11));
                if (iSkip == -1) {
                    throw new EOFException(q.f(i6, "Reached EOF while skipping ", " bytes."));
                }
            }
            i10 += iSkip;
        }
        this.f6409b += i10;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f6408a.available();
    }

    @Override // java.io.InputStream
    public final void mark(int i6) {
        throw new UnsupportedOperationException("Mark is currently unsupported");
    }

    @Override // java.io.InputStream
    public final int read() {
        this.f6409b++;
        return this.f6408a.read();
    }

    @Override // java.io.DataInput
    public final boolean readBoolean() {
        this.f6409b++;
        return this.f6408a.readBoolean();
    }

    @Override // java.io.DataInput
    public final byte readByte() throws IOException {
        this.f6409b++;
        int i6 = this.f6408a.read();
        if (i6 >= 0) {
            return (byte) i6;
        }
        throw new EOFException();
    }

    @Override // java.io.DataInput
    public final char readChar() {
        this.f6409b += 2;
        return this.f6408a.readChar();
    }

    @Override // java.io.DataInput
    public final double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    @Override // java.io.DataInput
    public final float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr, int i6, int i10) throws IOException {
        this.f6409b += i10;
        this.f6408a.readFully(bArr, i6, i10);
    }

    @Override // java.io.DataInput
    public final int readInt() throws IOException {
        this.f6409b += 4;
        DataInputStream dataInputStream = this.f6408a;
        int i6 = dataInputStream.read();
        int i10 = dataInputStream.read();
        int i11 = dataInputStream.read();
        int i12 = dataInputStream.read();
        if ((i6 | i10 | i11 | i12) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f6410c;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return (i12 << 24) + (i11 << 16) + (i10 << 8) + i6;
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return (i6 << 24) + (i10 << 16) + (i11 << 8) + i12;
        }
        throw new IOException("Invalid byte order: " + this.f6410c);
    }

    @Override // java.io.DataInput
    public final String readLine() {
        Log.d("ExifInterface", "Currently unsupported");
        return null;
    }

    @Override // java.io.DataInput
    public final long readLong() throws IOException {
        this.f6409b += 8;
        DataInputStream dataInputStream = this.f6408a;
        int i6 = dataInputStream.read();
        int i10 = dataInputStream.read();
        int i11 = dataInputStream.read();
        int i12 = dataInputStream.read();
        int i13 = dataInputStream.read();
        int i14 = dataInputStream.read();
        int i15 = dataInputStream.read();
        int i16 = dataInputStream.read();
        if ((i6 | i10 | i11 | i12 | i13 | i14 | i15 | i16) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f6410c;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return (i16 << 56) + (i15 << 48) + (i14 << 40) + (i13 << 32) + (i12 << 24) + (i11 << 16) + (i10 << 8) + i6;
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return (i6 << 56) + (i10 << 48) + (i11 << 40) + (i12 << 32) + (i13 << 24) + (i14 << 16) + (i15 << 8) + i16;
        }
        throw new IOException("Invalid byte order: " + this.f6410c);
    }

    @Override // java.io.DataInput
    public final short readShort() throws IOException {
        this.f6409b += 2;
        DataInputStream dataInputStream = this.f6408a;
        int i6 = dataInputStream.read();
        int i10 = dataInputStream.read();
        if ((i6 | i10) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f6410c;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return (short) ((i10 << 8) + i6);
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return (short) ((i6 << 8) + i10);
        }
        throw new IOException("Invalid byte order: " + this.f6410c);
    }

    @Override // java.io.DataInput
    public final String readUTF() {
        this.f6409b += 2;
        return this.f6408a.readUTF();
    }

    @Override // java.io.DataInput
    public final int readUnsignedByte() {
        this.f6409b++;
        return this.f6408a.readUnsignedByte();
    }

    @Override // java.io.DataInput
    public final int readUnsignedShort() throws IOException {
        this.f6409b += 2;
        DataInputStream dataInputStream = this.f6408a;
        int i6 = dataInputStream.read();
        int i10 = dataInputStream.read();
        if ((i6 | i10) < 0) {
            throw new EOFException();
        }
        ByteOrder byteOrder = this.f6410c;
        if (byteOrder == ByteOrder.LITTLE_ENDIAN) {
            return (i10 << 8) + i6;
        }
        if (byteOrder == ByteOrder.BIG_ENDIAN) {
            return (i6 << 8) + i10;
        }
        throw new IOException("Invalid byte order: " + this.f6410c);
    }

    @Override // java.io.InputStream
    public final void reset() {
        throw new UnsupportedOperationException("Reset is currently unsupported");
    }

    @Override // java.io.DataInput
    public final int skipBytes(int i6) {
        throw new UnsupportedOperationException("skipBytes is currently unsupported");
    }

    public b(InputStream inputStream) {
        this(inputStream, ByteOrder.BIG_ENDIAN);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i6, int i10) throws IOException {
        int i11 = this.f6408a.read(bArr, i6, i10);
        this.f6409b += i11;
        return i11;
    }

    @Override // java.io.DataInput
    public final void readFully(byte[] bArr) throws IOException {
        this.f6409b += bArr.length;
        this.f6408a.readFully(bArr);
    }

    public b(InputStream inputStream, ByteOrder byteOrder) {
        DataInputStream dataInputStream = new DataInputStream(inputStream);
        this.f6408a = dataInputStream;
        dataInputStream.mark(0);
        this.f6409b = 0;
        this.f6410c = byteOrder;
        this.f6411e = inputStream instanceof b ? ((b) inputStream).f6411e : -1;
    }
}
