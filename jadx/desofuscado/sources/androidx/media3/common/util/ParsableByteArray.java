package androidx.media3.common.util;

import d7.k2;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import okio.Utf8;

/* compiled from: MyApplication */
@UnstableApi
/* loaded from: classes.dex */
public final class ParsableByteArray {
    private static final char[] CR_AND_LF = {'\r', '\n'};
    private static final char[] LF = {'\n'};
    private static final k2 SUPPORTED_CHARSETS_FOR_READLINE = k2.k(new Object[]{StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE}, 5);
    private byte[] data;
    private int limit;
    private int position;

    public ParsableByteArray() {
        this.data = Util.EMPTY_BYTE_ARRAY;
    }

    private int findNextLineTerminator(Charset charset) {
        int i6;
        if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
            i6 = 1;
        } else {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                throw new IllegalArgumentException("Unsupported charset: " + charset);
            }
            i6 = 2;
        }
        int i10 = this.position;
        while (true) {
            int i11 = this.limit;
            if (i10 >= i11 - (i6 - 1)) {
                return i11;
            }
            if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && Util.isLinebreak(this.data[i10])) {
                return i10;
            }
            if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                byte[] bArr = this.data;
                if (bArr[i10] == 0 && Util.isLinebreak(bArr[i10 + 1])) {
                    return i10;
                }
            }
            if (charset.equals(StandardCharsets.UTF_16LE)) {
                byte[] bArr2 = this.data;
                if (bArr2[i10 + 1] == 0 && Util.isLinebreak(bArr2[i10])) {
                    return i10;
                }
            }
            i10 += i6;
        }
    }

    private int peekCharacterAndSize(Charset charset) {
        byte b8;
        byte b10 = 0;
        int i6 = 1;
        if ((charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) && bytesLeft() >= 1) {
            b8 = this.data[this.position];
        } else {
            if ((charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) && bytesLeft() >= 2) {
                byte[] bArr = this.data;
                int i10 = this.position;
                b10 = bArr[i10];
                b8 = bArr[i10 + 1];
            } else {
                if (!charset.equals(StandardCharsets.UTF_16LE) || bytesLeft() < 2) {
                    return 0;
                }
                byte[] bArr2 = this.data;
                int i11 = this.position;
                b10 = bArr2[i11 + 1];
                b8 = bArr2[i11];
            }
            i6 = 2;
        }
        return ((b8 & 255) << 16) | (b10 << 24) | (i6 & 255);
    }

    private char readCharacterIfInList(Charset charset, char[] cArr) {
        int iPeekCharacterAndSize = peekCharacterAndSize(charset);
        if (iPeekCharacterAndSize != 0) {
            char c5 = (char) (iPeekCharacterAndSize >> 16);
            for (char c8 : cArr) {
                if (c8 == c5) {
                    this.position += iPeekCharacterAndSize & 65535;
                    return c5;
                }
            }
        }
        return (char) 0;
    }

    private void skipLineTerminator(Charset charset) {
        if (readCharacterIfInList(charset, CR_AND_LF) == '\r') {
            readCharacterIfInList(charset, LF);
        }
    }

    public int bytesLeft() {
        return this.limit - this.position;
    }

    public int capacity() {
        return this.data.length;
    }

    public void ensureCapacity(int i6) {
        if (i6 > capacity()) {
            this.data = Arrays.copyOf(this.data, i6);
        }
    }

    public byte[] getData() {
        return this.data;
    }

    public int getPosition() {
        return this.position;
    }

    public int limit() {
        return this.limit;
    }

    public char peekChar() {
        byte[] bArr = this.data;
        int i6 = this.position;
        return (char) ((bArr[i6 + 1] & 255) | ((bArr[i6] & 255) << 8));
    }

    public int peekUnsignedByte() {
        return this.data[this.position] & 255;
    }

    public void readBytes(ParsableBitArray parsableBitArray, int i6) {
        readBytes(parsableBitArray.data, 0, i6);
        parsableBitArray.setPosition(0);
    }

    public String readDelimiterTerminatedString(char c5) {
        if (bytesLeft() == 0) {
            return null;
        }
        int i6 = this.position;
        while (i6 < this.limit && this.data[i6] != c5) {
            i6++;
        }
        byte[] bArr = this.data;
        int i10 = this.position;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(bArr, i10, i6 - i10);
        this.position = i6;
        if (i6 < this.limit) {
            this.position = i6 + 1;
        }
        return strFromUtf8Bytes;
    }

    public double readDouble() {
        return Double.longBitsToDouble(readLong());
    }

    public float readFloat() {
        return Float.intBitsToFloat(readInt());
    }

    public int readInt() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = (bArr[i6] & 255) << 24;
        int i12 = i6 + 2;
        this.position = i12;
        int i13 = ((bArr[i10] & 255) << 16) | i11;
        int i14 = i6 + 3;
        this.position = i14;
        int i15 = i13 | ((bArr[i12] & 255) << 8);
        this.position = i6 + 4;
        return (bArr[i14] & 255) | i15;
    }

    public int readInt24() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = ((bArr[i6] & 255) << 24) >> 8;
        int i12 = i6 + 2;
        this.position = i12;
        int i13 = ((bArr[i10] & 255) << 8) | i11;
        this.position = i6 + 3;
        return (bArr[i12] & 255) | i13;
    }

    public String readLine() {
        return readLine(StandardCharsets.UTF_8);
    }

    public int readLittleEndianInt() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = bArr[i6] & 255;
        int i12 = i6 + 2;
        this.position = i12;
        int i13 = ((bArr[i10] & 255) << 8) | i11;
        int i14 = i6 + 3;
        this.position = i14;
        int i15 = i13 | ((bArr[i12] & 255) << 16);
        this.position = i6 + 4;
        return ((bArr[i14] & 255) << 24) | i15;
    }

    public int readLittleEndianInt24() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = bArr[i6] & 255;
        int i12 = i6 + 2;
        this.position = i12;
        int i13 = ((bArr[i10] & 255) << 8) | i11;
        this.position = i6 + 3;
        return ((bArr[i12] & 255) << 16) | i13;
    }

    public long readLittleEndianLong() {
        byte[] bArr = this.data;
        int i6 = this.position;
        this.position = i6 + 1;
        this.position = i6 + 2;
        this.position = i6 + 3;
        long j10 = (bArr[i6] & 255) | ((bArr[r2] & 255) << 8) | ((bArr[r7] & 255) << 16);
        this.position = i6 + 4;
        long j11 = j10 | ((bArr[r8] & 255) << 24);
        this.position = i6 + 5;
        long j12 = j11 | ((bArr[r7] & 255) << 32);
        this.position = i6 + 6;
        long j13 = j12 | ((bArr[r8] & 255) << 40);
        this.position = i6 + 7;
        long j14 = j13 | ((bArr[r7] & 255) << 48);
        this.position = i6 + 8;
        return ((bArr[r8] & 255) << 56) | j14;
    }

    public short readLittleEndianShort() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = bArr[i6] & 255;
        this.position = i6 + 2;
        return (short) (((bArr[i10] & 255) << 8) | i11);
    }

    public long readLittleEndianUnsignedInt() {
        byte[] bArr = this.data;
        int i6 = this.position;
        this.position = i6 + 1;
        this.position = i6 + 2;
        this.position = i6 + 3;
        long j10 = (bArr[i6] & 255) | ((bArr[r2] & 255) << 8) | ((bArr[r7] & 255) << 16);
        this.position = i6 + 4;
        return ((bArr[r4] & 255) << 24) | j10;
    }

    public int readLittleEndianUnsignedInt24() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = bArr[i6] & 255;
        int i12 = i6 + 2;
        this.position = i12;
        int i13 = ((bArr[i10] & 255) << 8) | i11;
        this.position = i6 + 3;
        return ((bArr[i12] & 255) << 16) | i13;
    }

    public int readLittleEndianUnsignedIntToInt() {
        int littleEndianInt = readLittleEndianInt();
        if (littleEndianInt >= 0) {
            return littleEndianInt;
        }
        throw new IllegalStateException(a.e.n(littleEndianInt, "Top bit not zero: "));
    }

    public int readLittleEndianUnsignedShort() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = bArr[i6] & 255;
        this.position = i6 + 2;
        return ((bArr[i10] & 255) << 8) | i11;
    }

    public long readLong() {
        byte[] bArr = this.data;
        int i6 = this.position;
        this.position = i6 + 1;
        this.position = i6 + 2;
        this.position = i6 + 3;
        long j10 = ((bArr[i6] & 255) << 56) | ((bArr[r2] & 255) << 48) | ((bArr[r7] & 255) << 40);
        this.position = i6 + 4;
        long j11 = j10 | ((bArr[r4] & 255) << 32);
        this.position = i6 + 5;
        long j12 = j11 | ((bArr[r7] & 255) << 24);
        this.position = i6 + 6;
        long j13 = j12 | ((bArr[r4] & 255) << 16);
        this.position = i6 + 7;
        long j14 = j13 | ((bArr[r7] & 255) << 8);
        this.position = i6 + 8;
        return (bArr[r4] & 255) | j14;
    }

    public String readNullTerminatedString(int i6) {
        if (i6 == 0) {
            return "";
        }
        int i10 = this.position;
        int i11 = (i10 + i6) - 1;
        String strFromUtf8Bytes = Util.fromUtf8Bytes(this.data, i10, (i11 >= this.limit || this.data[i11] != 0) ? i6 : i6 - 1);
        this.position += i6;
        return strFromUtf8Bytes;
    }

    public short readShort() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = (bArr[i6] & 255) << 8;
        this.position = i6 + 2;
        return (short) ((bArr[i10] & 255) | i11);
    }

    public String readString(int i6) {
        return readString(i6, StandardCharsets.UTF_8);
    }

    public int readSynchSafeInt() {
        return (readUnsignedByte() << 21) | (readUnsignedByte() << 14) | (readUnsignedByte() << 7) | readUnsignedByte();
    }

    public int readUnsignedByte() {
        byte[] bArr = this.data;
        int i6 = this.position;
        this.position = i6 + 1;
        return bArr[i6] & 255;
    }

    public int readUnsignedFixedPoint1616() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = (bArr[i6] & 255) << 8;
        this.position = i6 + 2;
        int i12 = (bArr[i10] & 255) | i11;
        this.position = i6 + 4;
        return i12;
    }

    public long readUnsignedInt() {
        byte[] bArr = this.data;
        int i6 = this.position;
        this.position = i6 + 1;
        this.position = i6 + 2;
        this.position = i6 + 3;
        long j10 = ((bArr[i6] & 255) << 24) | ((bArr[r2] & 255) << 16) | ((bArr[r7] & 255) << 8);
        this.position = i6 + 4;
        return (bArr[r4] & 255) | j10;
    }

    public int readUnsignedInt24() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = (bArr[i6] & 255) << 16;
        int i12 = i6 + 2;
        this.position = i12;
        int i13 = ((bArr[i10] & 255) << 8) | i11;
        this.position = i6 + 3;
        return (bArr[i12] & 255) | i13;
    }

    public int readUnsignedIntToInt() {
        int i6 = readInt();
        if (i6 >= 0) {
            return i6;
        }
        throw new IllegalStateException(a.e.n(i6, "Top bit not zero: "));
    }

    public int readUnsignedLeb128ToInt() {
        return r4.b.c(readUnsignedLeb128ToLong());
    }

    public long readUnsignedLeb128ToLong() {
        long j10 = 0;
        for (int i6 = 0; i6 < 9; i6++) {
            if (this.position == this.limit) {
                throw new IllegalStateException("Attempting to read a byte over the limit.");
            }
            long unsignedByte = readUnsignedByte();
            j10 |= (127 & unsignedByte) << (i6 * 7);
            if ((unsignedByte & 128) == 0) {
                break;
            }
        }
        return j10;
    }

    public long readUnsignedLongToLong() {
        long j10 = readLong();
        if (j10 >= 0) {
            return j10;
        }
        throw new IllegalStateException(a.e.o(j10, "Top bit not zero: "));
    }

    public int readUnsignedShort() {
        byte[] bArr = this.data;
        int i6 = this.position;
        int i10 = i6 + 1;
        this.position = i10;
        int i11 = (bArr[i6] & 255) << 8;
        this.position = i6 + 2;
        return (bArr[i10] & 255) | i11;
    }

    public long readUtf8EncodedLong() {
        int i6;
        int i10;
        long j10 = this.data[this.position];
        int i11 = 7;
        while (true) {
            if (i11 < 0) {
                break;
            }
            if (((1 << i11) & j10) != 0) {
                i11--;
            } else if (i11 < 6) {
                j10 &= r6 - 1;
                i10 = 7 - i11;
            } else if (i11 == 7) {
                i10 = 1;
            }
        }
        i10 = 0;
        if (i10 == 0) {
            throw new NumberFormatException(a.e.o(j10, "Invalid UTF-8 sequence first byte: "));
        }
        for (i6 = 1; i6 < i10; i6++) {
            if ((this.data[this.position + i6] & 192) != 128) {
                throw new NumberFormatException(a.e.o(j10, "Invalid UTF-8 sequence continuation byte: "));
            }
            j10 = (j10 << 6) | (r3 & Utf8.REPLACEMENT_BYTE);
        }
        this.position += i10;
        return j10;
    }

    public Charset readUtfCharsetFromBom() {
        if (bytesLeft() >= 3) {
            byte[] bArr = this.data;
            int i6 = this.position;
            if (bArr[i6] == -17 && bArr[i6 + 1] == -69 && bArr[i6 + 2] == -65) {
                this.position = i6 + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (bytesLeft() < 2) {
            return null;
        }
        byte[] bArr2 = this.data;
        int i10 = this.position;
        byte b8 = bArr2[i10];
        if (b8 == -2 && bArr2[i10 + 1] == -1) {
            this.position = i10 + 2;
            return StandardCharsets.UTF_16BE;
        }
        if (b8 != -1 || bArr2[i10 + 1] != -2) {
            return null;
        }
        this.position = i10 + 2;
        return StandardCharsets.UTF_16LE;
    }

    public void reset(int i6) {
        reset(capacity() < i6 ? new byte[i6] : this.data, i6);
    }

    public void setLimit(int i6) {
        Assertions.checkArgument(i6 >= 0 && i6 <= this.data.length);
        this.limit = i6;
    }

    public void setPosition(int i6) {
        Assertions.checkArgument(i6 >= 0 && i6 <= this.limit);
        this.position = i6;
    }

    public void skipBytes(int i6) {
        setPosition(this.position + i6);
    }

    public char peekChar(Charset charset) {
        Assertions.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: " + charset);
        return (char) (peekCharacterAndSize(charset) >> 16);
    }

    public String readLine(Charset charset) {
        Assertions.checkArgument(SUPPORTED_CHARSETS_FOR_READLINE.contains(charset), "Unsupported charset: " + charset);
        if (bytesLeft() == 0) {
            return null;
        }
        if (!charset.equals(StandardCharsets.US_ASCII)) {
            readUtfCharsetFromBom();
        }
        String string = readString(findNextLineTerminator(charset) - this.position, charset);
        if (this.position == this.limit) {
            return string;
        }
        skipLineTerminator(charset);
        return string;
    }

    public String readString(int i6, Charset charset) {
        String str = new String(this.data, this.position, i6, charset);
        this.position += i6;
        return str;
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public ParsableByteArray(int i6) {
        this.data = new byte[i6];
        this.limit = i6;
    }

    public void readBytes(byte[] bArr, int i6, int i10) {
        System.arraycopy(this.data, this.position, bArr, i6, i10);
        this.position += i10;
    }

    public void reset(byte[] bArr, int i6) {
        this.data = bArr;
        this.limit = i6;
        this.position = 0;
    }

    public void readBytes(ByteBuffer byteBuffer, int i6) {
        byteBuffer.put(this.data, this.position, i6);
        this.position += i6;
    }

    public ParsableByteArray(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public String readNullTerminatedString() {
        return readDelimiterTerminatedString((char) 0);
    }

    public ParsableByteArray(byte[] bArr, int i6) {
        this.data = bArr;
        this.limit = i6;
    }
}
