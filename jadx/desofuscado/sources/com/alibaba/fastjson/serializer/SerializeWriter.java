package com.alibaba.fastjson.serializer;

import a.e;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.RyuDouble;
import com.alibaba.fastjson.util.RyuFloat;
import java.io.IOException;
import java.io.OutputStream;
import java.io.Writer;
import java.math.BigDecimal;
import java.nio.charset.Charset;
import java.util.List;
import okhttp3.HttpUrl;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class SerializeWriter extends Writer {
    private static int BUFFER_THRESHOLD;
    static final int nonDirectFeatures;
    protected boolean beanToArray;
    protected boolean browserSecure;
    protected char[] buf;
    protected int count;
    protected boolean disableCircularReferenceDetect;
    protected int features;
    protected char keySeperator;
    protected int maxBufSize;
    protected boolean notWriteDefaultValue;
    protected boolean quoteFieldNames;
    protected long sepcialBits;
    protected boolean sortField;
    protected boolean useSingleQuotes;
    protected boolean writeDirect;
    protected boolean writeEnumUsingName;
    protected boolean writeEnumUsingToString;
    protected boolean writeNonStringValueAsString;
    private final Writer writer;
    private static final ThreadLocal<char[]> bufLocal = new ThreadLocal<>();
    private static final ThreadLocal<byte[]> bytesBufLocal = new ThreadLocal<>();
    private static final char[] VALUE_TRUE = ":true".toCharArray();
    private static final char[] VALUE_FALSE = ":false".toCharArray();

    static {
        int i6;
        BUFFER_THRESHOLD = 131072;
        try {
            String stringProperty = IOUtils.getStringProperty("fastjson.serializer_buffer_threshold");
            if (stringProperty != null && stringProperty.length() > 0 && (i6 = Integer.parseInt(stringProperty)) >= 64 && i6 <= 65536) {
                BUFFER_THRESHOLD = i6 * 1024;
            }
        } catch (Throwable unused) {
        }
        nonDirectFeatures = SerializerFeature.UseSingleQuotes.mask | SerializerFeature.BrowserCompatible.mask | SerializerFeature.PrettyFormat.mask | SerializerFeature.WriteEnumUsingToString.mask | SerializerFeature.WriteNonStringValueAsString.mask | SerializerFeature.WriteSlashAsSpecial.mask | SerializerFeature.IgnoreErrorGetter.mask | SerializerFeature.WriteClassName.mask | SerializerFeature.NotWriteDefaultValue.mask;
    }

    public SerializeWriter() {
        this((Writer) null);
    }

    private int encodeToUTF8(OutputStream outputStream) throws IOException {
        int i6 = (int) (this.count * 3.0d);
        ThreadLocal<byte[]> threadLocal = bytesBufLocal;
        byte[] bArr = threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i6 ? new byte[i6] : bArr;
        int iEncodeUTF8 = IOUtils.encodeUTF8(this.buf, 0, this.count, bArr2);
        outputStream.write(bArr2, 0, iEncodeUTF8);
        if (bArr2 != bArr && bArr2.length <= BUFFER_THRESHOLD) {
            threadLocal.set(bArr2);
        }
        return iEncodeUTF8;
    }

    private byte[] encodeToUTF8Bytes() {
        int i6 = (int) (this.count * 3.0d);
        ThreadLocal<byte[]> threadLocal = bytesBufLocal;
        byte[] bArr = threadLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            threadLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i6 ? new byte[i6] : bArr;
        int iEncodeUTF8 = IOUtils.encodeUTF8(this.buf, 0, this.count, bArr2);
        byte[] bArr3 = new byte[iEncodeUTF8];
        System.arraycopy(bArr2, 0, bArr3, 0, iEncodeUTF8);
        if (bArr2 != bArr && bArr2.length <= BUFFER_THRESHOLD) {
            threadLocal.set(bArr2);
        }
        return bArr3;
    }

    private void writeEnumFieldValue(char c5, String str, String str2) {
        if (this.useSingleQuotes) {
            writeFieldValue(c5, str, str2);
        } else {
            writeFieldValueStringWithDoubleQuote(c5, str, str2);
        }
    }

    private void writeKeyWithSingleQuoteIfHasSpecial(String str) {
        byte[] bArr = IOUtils.specicalFlags_singleQuotes;
        int length = str.length();
        boolean z7 = true;
        int i6 = this.count + length + 1;
        int i10 = 0;
        if (i6 > this.buf.length) {
            if (this.writer != null) {
                if (length == 0) {
                    write(39);
                    write(39);
                    write(58);
                    return;
                }
                int i11 = 0;
                while (true) {
                    if (i11 < length) {
                        char cCharAt = str.charAt(i11);
                        if (cCharAt < bArr.length && bArr[cCharAt] != 0) {
                            break;
                        } else {
                            i11++;
                        }
                    } else {
                        z7 = false;
                        break;
                    }
                }
                if (z7) {
                    write(39);
                }
                while (i10 < length) {
                    char cCharAt2 = str.charAt(i10);
                    if (cCharAt2 >= bArr.length || bArr[cCharAt2] == 0) {
                        write(cCharAt2);
                    } else {
                        write(92);
                        write(IOUtils.replaceChars[cCharAt2]);
                    }
                    i10++;
                }
                if (z7) {
                    write(39);
                }
                write(58);
                return;
            }
            expandCapacity(i6);
        }
        if (length == 0) {
            int i12 = this.count;
            if (i12 + 3 > this.buf.length) {
                expandCapacity(i12 + 3);
            }
            char[] cArr = this.buf;
            int i13 = this.count;
            int i14 = i13 + 1;
            this.count = i14;
            cArr[i13] = '\'';
            int i15 = i13 + 2;
            this.count = i15;
            cArr[i14] = '\'';
            this.count = i13 + 3;
            cArr[i15] = ':';
            return;
        }
        int i16 = this.count;
        int i17 = i16 + length;
        str.getChars(0, length, this.buf, i16);
        this.count = i6;
        int i18 = i16;
        boolean z10 = false;
        while (i18 < i17) {
            char[] cArr2 = this.buf;
            char c5 = cArr2[i18];
            if (c5 < bArr.length && bArr[c5] != 0) {
                if (z10) {
                    i6++;
                    if (i6 > cArr2.length) {
                        expandCapacity(i6);
                    }
                    this.count = i6;
                    char[] cArr3 = this.buf;
                    int i19 = i18 + 1;
                    System.arraycopy(cArr3, i19, cArr3, i18 + 2, i17 - i18);
                    char[] cArr4 = this.buf;
                    cArr4[i18] = '\\';
                    cArr4[i19] = IOUtils.replaceChars[c5];
                    i17++;
                    i18 = i19;
                } else {
                    i6 += 3;
                    if (i6 > cArr2.length) {
                        expandCapacity(i6);
                    }
                    this.count = i6;
                    char[] cArr5 = this.buf;
                    int i20 = i18 + 1;
                    System.arraycopy(cArr5, i20, cArr5, i18 + 3, (i17 - i18) - 1);
                    char[] cArr6 = this.buf;
                    System.arraycopy(cArr6, i10, cArr6, 1, i18);
                    char[] cArr7 = this.buf;
                    cArr7[i16] = '\'';
                    cArr7[i20] = '\\';
                    i18 += 2;
                    cArr7[i18] = IOUtils.replaceChars[c5];
                    i17 += 2;
                    cArr7[this.count - 2] = '\'';
                    z10 = true;
                }
            }
            i18++;
            i10 = 0;
        }
        this.buf[i6 - 1] = ':';
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.writer != null && this.count > 0) {
            flush();
        }
        char[] cArr = this.buf;
        if (cArr.length <= BUFFER_THRESHOLD) {
            bufLocal.set(cArr);
        }
        this.buf = null;
    }

    public void computeFeatures() {
        int i6 = this.features;
        boolean z7 = (SerializerFeature.QuoteFieldNames.mask & i6) != 0;
        this.quoteFieldNames = z7;
        boolean z10 = (SerializerFeature.UseSingleQuotes.mask & i6) != 0;
        this.useSingleQuotes = z10;
        this.sortField = (SerializerFeature.SortField.mask & i6) != 0;
        this.disableCircularReferenceDetect = (SerializerFeature.DisableCircularReferenceDetect.mask & i6) != 0;
        boolean z11 = (SerializerFeature.BeanToArray.mask & i6) != 0;
        this.beanToArray = z11;
        this.writeNonStringValueAsString = (SerializerFeature.WriteNonStringValueAsString.mask & i6) != 0;
        this.notWriteDefaultValue = (SerializerFeature.NotWriteDefaultValue.mask & i6) != 0;
        boolean z12 = (SerializerFeature.WriteEnumUsingName.mask & i6) != 0;
        this.writeEnumUsingName = z12;
        this.writeEnumUsingToString = (SerializerFeature.WriteEnumUsingToString.mask & i6) != 0;
        this.writeDirect = z7 && (nonDirectFeatures & i6) == 0 && (z11 || z12);
        this.keySeperator = z10 ? '\'' : '\"';
        boolean z13 = (SerializerFeature.BrowserSecure.mask & i6) != 0;
        this.browserSecure = z13;
        this.sepcialBits = z13 ? 5764610843043954687L : (i6 & SerializerFeature.WriteSlashAsSpecial.mask) != 0 ? 140758963191807L : 21474836479L;
    }

    public void config(SerializerFeature serializerFeature, boolean z7) {
        if (z7) {
            int mask = this.features | serializerFeature.getMask();
            this.features = mask;
            SerializerFeature serializerFeature2 = SerializerFeature.WriteEnumUsingToString;
            if (serializerFeature == serializerFeature2) {
                this.features = (~SerializerFeature.WriteEnumUsingName.getMask()) & mask;
            } else if (serializerFeature == SerializerFeature.WriteEnumUsingName) {
                this.features = (~serializerFeature2.getMask()) & mask;
            }
        } else {
            this.features = (~serializerFeature.getMask()) & this.features;
        }
        computeFeatures();
    }

    public void expandCapacity(int i6) {
        ThreadLocal<char[]> threadLocal;
        char[] cArr;
        int i10 = this.maxBufSize;
        if (i10 != -1 && i6 >= i10) {
            throw new JSONException("serialize exceeded MAX_OUTPUT_LENGTH=" + this.maxBufSize + ", minimumCapacity=" + i6);
        }
        char[] cArr2 = this.buf;
        int length = cArr2.length + (cArr2.length >> 1) + 1;
        if (length >= i6) {
            i6 = length;
        }
        char[] cArr3 = new char[i6];
        System.arraycopy(cArr2, 0, cArr3, 0, this.count);
        if (this.buf.length < BUFFER_THRESHOLD && ((cArr = (threadLocal = bufLocal).get()) == null || cArr.length < this.buf.length)) {
            threadLocal.set(this.buf);
        }
        this.buf = cArr3;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        Writer writer = this.writer;
        if (writer == null) {
            return;
        }
        try {
            writer.write(this.buf, 0, this.count);
            this.writer.flush();
            this.count = 0;
        } catch (IOException e5) {
            throw new JSONException(e5.getMessage(), e5);
        }
    }

    public int getBufferLength() {
        return this.buf.length;
    }

    public int getMaxBufSize() {
        return this.maxBufSize;
    }

    public boolean isEnabled(SerializerFeature serializerFeature) {
        return (serializerFeature.mask & this.features) != 0;
    }

    public boolean isNotWriteDefaultValue() {
        return this.notWriteDefaultValue;
    }

    public boolean isSortField() {
        return this.sortField;
    }

    public void reset() {
        this.count = 0;
    }

    public void setMaxBufSize(int i6) {
        if (i6 >= this.buf.length) {
            this.maxBufSize = i6;
        } else {
            throw new JSONException("must > " + this.buf.length);
        }
    }

    public int size() {
        return this.count;
    }

    public byte[] toBytes(String str) {
        return toBytes((str == null || "UTF-8".equals(str)) ? IOUtils.UTF8 : Charset.forName(str));
    }

    public char[] toCharArray() {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        int i6 = this.count;
        char[] cArr = new char[i6];
        System.arraycopy(this.buf, 0, cArr, 0, i6);
        return cArr;
    }

    public char[] toCharArrayForSpringWebSocket() {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        int i6 = this.count;
        char[] cArr = new char[i6 - 2];
        System.arraycopy(this.buf, 1, cArr, 0, i6 - 2);
        return cArr;
    }

    public String toString() {
        return new String(this.buf, 0, this.count);
    }

    @Override // java.io.Writer
    public void write(int i6) {
        int i10 = 1;
        int i11 = this.count + 1;
        if (i11 <= this.buf.length) {
            i10 = i11;
        } else if (this.writer == null) {
            expandCapacity(i11);
            i10 = i11;
        } else {
            flush();
        }
        this.buf[this.count] = (char) i6;
        this.count = i10;
    }

    public void writeByteArray(byte[] bArr) {
        if (isEnabled(SerializerFeature.WriteClassName.mask)) {
            writeHex(bArr);
            return;
        }
        int length = bArr.length;
        boolean z7 = this.useSingleQuotes;
        char c5 = z7 ? '\'' : '\"';
        if (length == 0) {
            write(z7 ? "''" : "\"\"");
            return;
        }
        char[] cArr = IOUtils.CA;
        int i6 = (length / 3) * 3;
        int i10 = length - 1;
        int i11 = this.count;
        int i12 = (((i10 / 3) + 1) << 2) + i11;
        int i13 = i12 + 2;
        if (i13 > this.buf.length) {
            if (this.writer != null) {
                write(c5);
                int i14 = 0;
                while (i14 < i6) {
                    int i15 = i14 + 2;
                    int i16 = ((bArr[i14 + 1] & 255) << 8) | ((bArr[i14] & 255) << 16);
                    i14 += 3;
                    int i17 = i16 | (bArr[i15] & 255);
                    write(cArr[(i17 >>> 18) & 63]);
                    write(cArr[(i17 >>> 12) & 63]);
                    write(cArr[(i17 >>> 6) & 63]);
                    write(cArr[i17 & 63]);
                }
                int i18 = length - i6;
                if (i18 > 0) {
                    int i19 = ((bArr[i6] & 255) << 10) | (i18 == 2 ? (bArr[i10] & 255) << 2 : 0);
                    write(cArr[i19 >> 12]);
                    write(cArr[(i19 >>> 6) & 63]);
                    write(i18 == 2 ? cArr[i19 & 63] : '=');
                    write(61);
                }
                write(c5);
                return;
            }
            expandCapacity(i13);
        }
        this.count = i13;
        int i20 = i11 + 1;
        this.buf[i11] = c5;
        int i21 = 0;
        while (i21 < i6) {
            int i22 = i21 + 2;
            int i23 = ((bArr[i21 + 1] & 255) << 8) | ((bArr[i21] & 255) << 16);
            i21 += 3;
            int i24 = i23 | (bArr[i22] & 255);
            char[] cArr2 = this.buf;
            cArr2[i20] = cArr[(i24 >>> 18) & 63];
            cArr2[i20 + 1] = cArr[(i24 >>> 12) & 63];
            int i25 = i20 + 3;
            cArr2[i20 + 2] = cArr[(i24 >>> 6) & 63];
            i20 += 4;
            cArr2[i25] = cArr[i24 & 63];
        }
        int i26 = length - i6;
        if (i26 > 0) {
            int i27 = ((bArr[i6] & 255) << 10) | (i26 == 2 ? (bArr[i10] & 255) << 2 : 0);
            char[] cArr3 = this.buf;
            cArr3[i12 - 3] = cArr[i27 >> 12];
            cArr3[i12 - 2] = cArr[(i27 >>> 6) & 63];
            cArr3[i12 - 1] = i26 == 2 ? cArr[i27 & 63] : '=';
            cArr3[i12] = '=';
        }
        this.buf[i12 + 1] = c5;
    }

    public void writeDouble(double d, boolean z7) throws IOException {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            writeNull();
            return;
        }
        int i6 = this.count + 24;
        if (i6 > this.buf.length) {
            if (this.writer != null) {
                String string = RyuDouble.toString(d);
                write(string, 0, string.length());
                if (z7 && isEnabled(SerializerFeature.WriteClassName)) {
                    write(68);
                    return;
                }
                return;
            }
            expandCapacity(i6);
        }
        this.count += RyuDouble.toString(d, this.buf, this.count);
        if (z7 && isEnabled(SerializerFeature.WriteClassName)) {
            write(68);
        }
    }

    public void writeEnum(Enum<?> r22) {
        if (r22 == null) {
            writeNull();
            return;
        }
        String string = (!this.writeEnumUsingName || this.writeEnumUsingToString) ? this.writeEnumUsingToString ? r22.toString() : null : r22.name();
        if (string == null) {
            writeInt(r22.ordinal());
            return;
        }
        int i6 = isEnabled(SerializerFeature.UseSingleQuotes) ? 39 : 34;
        write(i6);
        write(string);
        write(i6);
    }

    public void writeFieldName(String str) {
        writeFieldName(str, false);
    }

    public void writeFieldNameDirect(String str) {
        int length = str.length();
        int i6 = this.count + length;
        int i10 = i6 + 3;
        if (i10 > this.buf.length) {
            expandCapacity(i10);
        }
        int i11 = this.count;
        char[] cArr = this.buf;
        cArr[i11] = '\"';
        str.getChars(0, length, cArr, i11 + 1);
        this.count = i10;
        char[] cArr2 = this.buf;
        cArr2[i6 + 1] = '\"';
        cArr2[i6 + 2] = ':';
    }

    public void writeFieldValue(char c5, String str, char c8) {
        write(c5);
        writeFieldName(str);
        if (c8 == 0) {
            writeString("\u0000");
        } else {
            writeString(Character.toString(c8));
        }
    }

    public void writeFieldValueStringWithDoubleQuote(char c5, String str, String str2) {
        int length = str.length();
        int i6 = this.count;
        int length2 = str2.length();
        int i10 = length + length2 + 6 + i6;
        if (i10 > this.buf.length) {
            if (this.writer != null) {
                write(c5);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            expandCapacity(i10);
        }
        char[] cArr = this.buf;
        int i11 = this.count;
        cArr[i11] = c5;
        int i12 = i11 + 2;
        int i13 = i12 + length;
        cArr[i11 + 1] = '\"';
        str.getChars(0, length, cArr, i12);
        this.count = i10;
        char[] cArr2 = this.buf;
        cArr2[i13] = '\"';
        cArr2[i13 + 1] = ':';
        cArr2[i13 + 2] = '\"';
        str2.getChars(0, length2, cArr2, i13 + 3);
        this.buf[this.count - 1] = '\"';
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a2 A[PHI: r1 r4 r6 r9 r10
  0x00a2: PHI (r1v49 int) = (r1v41 int), (r1v3 int) binds: [B:53:0x00db, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]
  0x00a2: PHI (r4v17 char) = (r4v16 char), (r4v19 char) binds: [B:53:0x00db, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]
  0x00a2: PHI (r6v21 int) = (r6v20 int), (r6v23 int) binds: [B:53:0x00db, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]
  0x00a2: PHI (r9v11 int) = (r9v10 int), (r9v13 int) binds: [B:53:0x00db, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]
  0x00a2: PHI (r10v13 int) = (r10v3 int), (r10v15 int) binds: [B:53:0x00db, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void writeFieldValueStringWithDoubleQuoteCheck(char r23, java.lang.String r24, java.lang.String r25) {
        /*
            Method dump skipped, instructions count: 788
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeFieldValueStringWithDoubleQuoteCheck(char, java.lang.String, java.lang.String):void");
    }

    public void writeFloat(float f, boolean z7) throws IOException {
        if (f != f || f == Float.POSITIVE_INFINITY || f == Float.NEGATIVE_INFINITY) {
            writeNull();
            return;
        }
        int i6 = this.count + 15;
        if (i6 > this.buf.length) {
            if (this.writer != null) {
                String string = RyuFloat.toString(f);
                write(string, 0, string.length());
                if (z7 && isEnabled(SerializerFeature.WriteClassName)) {
                    write(70);
                    return;
                }
                return;
            }
            expandCapacity(i6);
        }
        this.count += RyuFloat.toString(f, this.buf, this.count);
        if (z7 && isEnabled(SerializerFeature.WriteClassName)) {
            write(70);
        }
    }

    public void writeHex(byte[] bArr) {
        int length = (bArr.length * 2) + this.count + 3;
        if (length > this.buf.length) {
            expandCapacity(length);
        }
        char[] cArr = this.buf;
        int i6 = this.count;
        int i10 = i6 + 1;
        this.count = i10;
        cArr[i6] = 'x';
        this.count = i6 + 2;
        cArr[i10] = '\'';
        for (byte b8 : bArr) {
            int i11 = (b8 & 255) >> 4;
            int i12 = b8 & 15;
            char[] cArr2 = this.buf;
            int i13 = this.count;
            int i14 = i13 + 1;
            this.count = i14;
            int i15 = 55;
            cArr2[i13] = (char) (i11 + (i11 < 10 ? 48 : 55));
            this.count = i13 + 2;
            if (i12 < 10) {
                i15 = 48;
            }
            cArr2[i14] = (char) (i12 + i15);
        }
        char[] cArr3 = this.buf;
        int i16 = this.count;
        this.count = i16 + 1;
        cArr3[i16] = '\'';
    }

    public void writeInt(int i6) {
        if (i6 == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int iStringSize = i6 < 0 ? IOUtils.stringSize(-i6) + 1 : IOUtils.stringSize(i6);
        int i10 = this.count + iStringSize;
        if (i10 > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[iStringSize];
                IOUtils.getChars(i6, iStringSize, cArr);
                write(cArr, 0, iStringSize);
                return;
            }
            expandCapacity(i10);
        }
        IOUtils.getChars(i6, i10, this.buf);
        this.count = i10;
    }

    public void writeLong(long j10) {
        boolean z7 = isEnabled(SerializerFeature.BrowserCompatible) && !isEnabled(SerializerFeature.WriteClassName) && (j10 > 9007199254740991L || j10 < -9007199254740991L);
        if (j10 == Long.MIN_VALUE) {
            if (z7) {
                write("\"-9223372036854775808\"");
                return;
            } else {
                write("-9223372036854775808");
                return;
            }
        }
        int iStringSize = j10 < 0 ? IOUtils.stringSize(-j10) + 1 : IOUtils.stringSize(j10);
        int i6 = this.count + iStringSize;
        if (z7) {
            i6 += 2;
        }
        if (i6 > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[iStringSize];
                IOUtils.getChars(j10, iStringSize, cArr);
                if (!z7) {
                    write(cArr, 0, iStringSize);
                    return;
                }
                write(34);
                write(cArr, 0, iStringSize);
                write(34);
                return;
            }
            expandCapacity(i6);
        }
        if (z7) {
            char[] cArr2 = this.buf;
            cArr2[this.count] = '\"';
            int i10 = i6 - 1;
            IOUtils.getChars(j10, i10, cArr2);
            this.buf[i10] = '\"';
        } else {
            IOUtils.getChars(j10, i6, this.buf);
        }
        this.count = i6;
    }

    public void writeLongAndChar(long j10, char c5) throws IOException {
        writeLong(j10);
        write(c5);
    }

    public void writeNull() {
        write("null");
    }

    public void writeString(String str, char c5) {
        if (!this.useSingleQuotes) {
            writeStringWithDoubleQuote(str, c5);
        } else {
            writeStringWithSingleQuote(str);
            write(c5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x02b3 A[PHI: r5 r9 r11 r15
  0x02b3: PHI (r5v29 int) = (r5v27 int), (r5v31 int) binds: [B:166:0x02ed, B:143:0x02af] A[DONT_GENERATE, DONT_INLINE]
  0x02b3: PHI (r9v21 int) = (r9v15 int), (r9v3 int) binds: [B:166:0x02ed, B:143:0x02af] A[DONT_GENERATE, DONT_INLINE]
  0x02b3: PHI (r11v14 int) = (r11v12 int), (r11v16 int) binds: [B:166:0x02ed, B:143:0x02af] A[DONT_GENERATE, DONT_INLINE]
  0x02b3: PHI (r15v13 int) = (r15v2 int), (r15v15 int) binds: [B:166:0x02ed, B:143:0x02af] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void writeStringWithDoubleQuote(java.lang.String r24, char r25) {
        /*
            Method dump skipped, instructions count: 1345
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeStringWithDoubleQuote(java.lang.String, char):void");
    }

    public void writeStringWithSingleQuote(String str) {
        int i6 = 0;
        if (str == null) {
            int i10 = this.count + 4;
            if (i10 > this.buf.length) {
                expandCapacity(i10);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = i10;
            return;
        }
        int length = str.length();
        int i11 = this.count + length + 2;
        if (i11 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (i6 < str.length()) {
                    char cCharAt = str.charAt(i6);
                    if (cCharAt <= '\r' || cCharAt == '\\' || cCharAt == '\'' || (cCharAt == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        write(IOUtils.replaceChars[cCharAt]);
                    } else {
                        write(cCharAt);
                    }
                    i6++;
                }
                write(39);
                return;
            }
            expandCapacity(i11);
        }
        int i12 = this.count;
        int i13 = i12 + 1;
        int i14 = i13 + length;
        char[] cArr = this.buf;
        cArr[i12] = '\'';
        str.getChars(0, length, cArr, i13);
        this.count = i11;
        char c5 = 0;
        int i15 = -1;
        for (int i16 = i13; i16 < i14; i16++) {
            char c8 = this.buf[i16];
            if (c8 <= '\r' || c8 == '\\' || c8 == '\'' || (c8 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                i6++;
                i15 = i16;
                c5 = c8;
            }
        }
        int i17 = i11 + i6;
        if (i17 > this.buf.length) {
            expandCapacity(i17);
        }
        this.count = i17;
        if (i6 == 1) {
            char[] cArr2 = this.buf;
            int i18 = i15 + 1;
            System.arraycopy(cArr2, i18, cArr2, i15 + 2, (i14 - i15) - 1);
            char[] cArr3 = this.buf;
            cArr3[i15] = '\\';
            cArr3[i18] = IOUtils.replaceChars[c5];
        } else if (i6 > 1) {
            char[] cArr4 = this.buf;
            int i19 = i15 + 1;
            System.arraycopy(cArr4, i19, cArr4, i15 + 2, (i14 - i15) - 1);
            char[] cArr5 = this.buf;
            cArr5[i15] = '\\';
            cArr5[i19] = IOUtils.replaceChars[c5];
            int i20 = i14 + 1;
            for (int i21 = i15 - 1; i21 >= i13; i21--) {
                char c10 = this.buf[i21];
                if (c10 <= '\r' || c10 == '\\' || c10 == '\'' || (c10 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr6 = this.buf;
                    int i22 = i21 + 1;
                    System.arraycopy(cArr6, i22, cArr6, i21 + 2, (i20 - i21) - 1);
                    char[] cArr7 = this.buf;
                    cArr7[i21] = '\\';
                    cArr7[i22] = IOUtils.replaceChars[c10];
                    i20++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    public void writeTo(Writer writer) throws IOException {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        writer.write(this.buf, 0, this.count);
    }

    public int writeToEx(OutputStream outputStream, Charset charset) throws IOException {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        if (charset == IOUtils.UTF8) {
            return encodeToUTF8(outputStream);
        }
        byte[] bytes = new String(this.buf, 0, this.count).getBytes(charset);
        outputStream.write(bytes);
        return bytes.length;
    }

    public SerializeWriter(Writer writer) {
        this(writer, JSON.DEFAULT_GENERATE_FEATURE, SerializerFeature.EMPTY);
    }

    public boolean isEnabled(int i6) {
        return (i6 & this.features) != 0;
    }

    public void writeFieldName(String str, boolean z7) {
        if (str == null) {
            write("null:");
            return;
        }
        if (this.useSingleQuotes) {
            if (!this.quoteFieldNames) {
                writeKeyWithSingleQuoteIfHasSpecial(str);
                return;
            } else {
                writeStringWithSingleQuote(str);
                write(58);
                return;
            }
        }
        if (this.quoteFieldNames) {
            writeStringWithDoubleQuote(str, ':');
            return;
        }
        int i6 = 0;
        boolean z10 = true;
        boolean z11 = str.length() == 0;
        while (true) {
            if (i6 >= str.length()) {
                z10 = z11;
                break;
            }
            char cCharAt = str.charAt(i6);
            if ((cCharAt < '@' && (this.sepcialBits & (1 << cCharAt)) != 0) || cCharAt == '\\') {
                break;
            } else {
                i6++;
            }
        }
        if (z10) {
            writeStringWithDoubleQuote(str, ':');
        } else {
            write(str);
            write(58);
        }
    }

    public void writeNull(SerializerFeature serializerFeature) {
        writeNull(0, serializerFeature.mask);
    }

    public SerializeWriter(SerializerFeature... serializerFeatureArr) {
        this((Writer) null, serializerFeatureArr);
    }

    public void writeNull(int i6, int i10) {
        if ((i6 & i10) == 0 && (this.features & i10) == 0) {
            writeNull();
            return;
        }
        int i11 = SerializerFeature.WriteMapNullValue.mask;
        if ((i6 & i11) != 0 && (i6 & (~i11) & SerializerFeature.WRITE_MAP_NULL_FEATURES) == 0) {
            writeNull();
            return;
        }
        if (i10 == SerializerFeature.WriteNullListAsEmpty.mask) {
            write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        if (i10 == SerializerFeature.WriteNullStringAsEmpty.mask) {
            writeString("");
            return;
        }
        if (i10 == SerializerFeature.WriteNullBooleanAsFalse.mask) {
            write("false");
        } else if (i10 == SerializerFeature.WriteNullNumberAsZero.mask) {
            write(48);
        } else {
            writeNull();
        }
    }

    public SerializeWriter(Writer writer, SerializerFeature... serializerFeatureArr) {
        this(writer, 0, serializerFeatureArr);
    }

    public byte[] toBytes(Charset charset) {
        if (this.writer == null) {
            if (charset == IOUtils.UTF8) {
                return encodeToUTF8Bytes();
            }
            return new String(this.buf, 0, this.count).getBytes(charset);
        }
        throw new UnsupportedOperationException("writer not null");
    }

    public void writeTo(OutputStream outputStream, String str) throws IOException {
        writeTo(outputStream, Charset.forName(str));
    }

    public SerializeWriter(Writer writer, int i6, SerializerFeature... serializerFeatureArr) {
        this.maxBufSize = -1;
        this.writer = writer;
        ThreadLocal<char[]> threadLocal = bufLocal;
        char[] cArr = threadLocal.get();
        this.buf = cArr;
        if (cArr != null) {
            threadLocal.set(null);
        } else {
            this.buf = new char[2048];
        }
        for (SerializerFeature serializerFeature : serializerFeatureArr) {
            i6 |= serializerFeature.getMask();
        }
        this.features = i6;
        computeFeatures();
    }

    public void writeFieldValue(char c5, String str, boolean z7) {
        if (!this.quoteFieldNames) {
            write(c5);
            writeFieldName(str);
            write(z7);
            return;
        }
        int i6 = z7 ? 4 : 5;
        int length = str.length();
        int i10 = this.count + length + 4 + i6;
        if (i10 > this.buf.length) {
            if (this.writer != null) {
                write(c5);
                writeString(str);
                write(58);
                write(z7);
                return;
            }
            expandCapacity(i10);
        }
        int i11 = this.count;
        this.count = i10;
        char[] cArr = this.buf;
        cArr[i11] = c5;
        int i12 = i11 + length;
        cArr[i11 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, i11 + 2);
        char[] cArr2 = this.buf;
        cArr2[i12 + 2] = this.keySeperator;
        if (z7) {
            System.arraycopy(VALUE_TRUE, 0, cArr2, i12 + 3, 5);
        } else {
            System.arraycopy(VALUE_FALSE, 0, cArr2, i12 + 3, 6);
        }
    }

    public void writeString(String str) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(str);
        } else {
            writeStringWithDoubleQuote(str, (char) 0);
        }
    }

    public void writeTo(OutputStream outputStream, Charset charset) throws IOException {
        writeToEx(outputStream, charset);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public SerializeWriter append(CharSequence charSequence) throws IOException {
        String string = charSequence == null ? "null" : charSequence.toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i6, int i10) throws IOException {
        int i11;
        if (i6 < 0 || i6 > cArr.length || i10 < 0 || (i11 = i6 + i10) > cArr.length || i11 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i10 == 0) {
            return;
        }
        int i12 = this.count + i10;
        if (i12 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i12);
            } else {
                do {
                    char[] cArr2 = this.buf;
                    int length = cArr2.length;
                    int i13 = this.count;
                    int i14 = length - i13;
                    System.arraycopy(cArr, i6, cArr2, i13, i14);
                    this.count = this.buf.length;
                    flush();
                    i10 -= i14;
                    i6 += i14;
                } while (i10 > this.buf.length);
                i12 = i10;
            }
        }
        System.arraycopy(cArr, i6, this.buf, this.count, i10);
        this.count = i12;
    }

    public void writeString(char[] cArr) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(cArr);
        } else {
            writeStringWithDoubleQuote(new String(cArr), (char) 0);
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public SerializeWriter append(CharSequence charSequence, int i6, int i10) throws IOException {
        if (charSequence == null) {
            charSequence = "null";
        }
        String string = charSequence.subSequence(i6, i10).toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public SerializeWriter append(char c5) {
        write(c5);
        return this;
    }

    public SerializeWriter(int i6) {
        this((Writer) null, i6);
    }

    public SerializeWriter(Writer writer, int i6) {
        this.maxBufSize = -1;
        this.writer = writer;
        if (i6 > 0) {
            this.buf = new char[i6];
            computeFeatures();
            return;
        }
        throw new IllegalArgumentException(e.n(i6, "Negative initial size: "));
    }

    @Override // java.io.Writer
    public void write(String str, int i6, int i10) throws IOException {
        int i11;
        int i12 = this.count + i10;
        if (i12 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i12);
            } else {
                while (true) {
                    char[] cArr = this.buf;
                    int length = cArr.length;
                    int i13 = this.count;
                    int i14 = length - i13;
                    i11 = i6 + i14;
                    str.getChars(i6, i11, cArr, i13);
                    this.count = this.buf.length;
                    flush();
                    i10 -= i14;
                    if (i10 <= this.buf.length) {
                        break;
                    } else {
                        i6 = i11;
                    }
                }
                i12 = i10;
                i6 = i11;
            }
        }
        str.getChars(i6, i10 + i6, this.buf, this.count);
        this.count = i12;
    }

    public void writeFieldValue(char c5, String str, int i6) {
        if (i6 != Integer.MIN_VALUE && this.quoteFieldNames) {
            int iStringSize = i6 < 0 ? IOUtils.stringSize(-i6) + 1 : IOUtils.stringSize(i6);
            int length = str.length();
            int i10 = this.count + length + 4 + iStringSize;
            if (i10 > this.buf.length) {
                if (this.writer != null) {
                    write(c5);
                    writeFieldName(str);
                    writeInt(i6);
                    return;
                }
                expandCapacity(i10);
            }
            int i11 = this.count;
            this.count = i10;
            char[] cArr = this.buf;
            cArr[i11] = c5;
            int i12 = i11 + length;
            cArr[i11 + 1] = this.keySeperator;
            str.getChars(0, length, cArr, i11 + 2);
            char[] cArr2 = this.buf;
            cArr2[i12 + 2] = this.keySeperator;
            cArr2[i12 + 3] = ':';
            IOUtils.getChars(i6, this.count, cArr2);
            return;
        }
        write(c5);
        writeFieldName(str);
        writeInt(i6);
    }

    @Override // java.io.Writer
    public void write(String str) {
        if (str == null) {
            writeNull();
        } else {
            write(str, 0, str.length());
        }
    }

    public void write(List<String> list) {
        boolean z7;
        int i6;
        if (list.isEmpty()) {
            write(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
            return;
        }
        int i10 = this.count;
        int size = list.size();
        int i11 = i10;
        int i12 = 0;
        while (i12 < size) {
            String str = list.get(i12);
            if (str == null) {
                z7 = true;
            } else {
                int length = str.length();
                z7 = false;
                for (int i13 = 0; i13 < length; i13++) {
                    char cCharAt = str.charAt(i13);
                    z7 = cCharAt < ' ' || cCharAt > '~' || cCharAt == '\"' || cCharAt == '\\';
                    if (z7) {
                        break;
                    }
                }
            }
            if (z7) {
                this.count = i10;
                write(91);
                for (int i14 = 0; i14 < list.size(); i14++) {
                    String str2 = list.get(i14);
                    if (i14 != 0) {
                        write(44);
                    }
                    if (str2 == null) {
                        write("null");
                    } else {
                        writeStringWithDoubleQuote(str2, (char) 0);
                    }
                }
                write(93);
                return;
            }
            int length2 = str.length() + i11;
            int i15 = length2 + 3;
            if (i12 == list.size() - 1) {
                i15 = length2 + 4;
            }
            if (i15 > this.buf.length) {
                this.count = i11;
                expandCapacity(i15);
            }
            if (i12 == 0) {
                i6 = i11 + 1;
                this.buf[i11] = '[';
            } else {
                i6 = i11 + 1;
                this.buf[i11] = ',';
            }
            int i16 = i6 + 1;
            this.buf[i6] = '\"';
            str.getChars(0, str.length(), this.buf, i16);
            int length3 = str.length() + i16;
            this.buf[length3] = '\"';
            i12++;
            i11 = length3 + 1;
        }
        this.buf[i11] = ']';
        this.count = i11 + 1;
    }

    public void writeStringWithSingleQuote(char[] cArr) {
        int i6 = 0;
        if (cArr == null) {
            int i10 = this.count + 4;
            if (i10 > this.buf.length) {
                expandCapacity(i10);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = i10;
            return;
        }
        int length = cArr.length;
        int i11 = this.count + length + 2;
        if (i11 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (i6 < cArr.length) {
                    char c5 = cArr[i6];
                    if (c5 > '\r' && c5 != '\\' && c5 != '\'' && (c5 != '/' || !isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                        write(c5);
                    } else {
                        write(92);
                        write(IOUtils.replaceChars[c5]);
                    }
                    i6++;
                }
                write(39);
                return;
            }
            expandCapacity(i11);
        }
        int i12 = this.count;
        int i13 = i12 + 1;
        int i14 = length + i13;
        char[] cArr2 = this.buf;
        cArr2[i12] = '\'';
        System.arraycopy(cArr, 0, cArr2, i13, cArr.length);
        this.count = i11;
        char c8 = 0;
        int i15 = -1;
        for (int i16 = i13; i16 < i14; i16++) {
            char c10 = this.buf[i16];
            if (c10 <= '\r' || c10 == '\\' || c10 == '\'' || (c10 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                i6++;
                i15 = i16;
                c8 = c10;
            }
        }
        int i17 = i11 + i6;
        if (i17 > this.buf.length) {
            expandCapacity(i17);
        }
        this.count = i17;
        if (i6 == 1) {
            char[] cArr3 = this.buf;
            int i18 = i15 + 1;
            System.arraycopy(cArr3, i18, cArr3, i15 + 2, (i14 - i15) - 1);
            char[] cArr4 = this.buf;
            cArr4[i15] = '\\';
            cArr4[i18] = IOUtils.replaceChars[c8];
        } else if (i6 > 1) {
            char[] cArr5 = this.buf;
            int i19 = i15 + 1;
            System.arraycopy(cArr5, i19, cArr5, i15 + 2, (i14 - i15) - 1);
            char[] cArr6 = this.buf;
            cArr6[i15] = '\\';
            cArr6[i19] = IOUtils.replaceChars[c8];
            int i20 = i14 + 1;
            for (int i21 = i15 - 1; i21 >= i13; i21--) {
                char c11 = this.buf[i21];
                if (c11 <= '\r' || c11 == '\\' || c11 == '\'' || (c11 == '/' && isEnabled(SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr7 = this.buf;
                    int i22 = i21 + 1;
                    System.arraycopy(cArr7, i22, cArr7, i21 + 2, (i20 - i21) - 1);
                    char[] cArr8 = this.buf;
                    cArr8[i21] = '\\';
                    cArr8[i22] = IOUtils.replaceChars[c11];
                    i20++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    public void writeFieldValue(char c5, String str, long j10) {
        if (j10 != Long.MIN_VALUE && this.quoteFieldNames && !isEnabled(SerializerFeature.BrowserCompatible.mask)) {
            int iStringSize = j10 < 0 ? IOUtils.stringSize(-j10) + 1 : IOUtils.stringSize(j10);
            int length = str.length();
            int i6 = this.count + length + 4 + iStringSize;
            if (i6 > this.buf.length) {
                if (this.writer != null) {
                    write(c5);
                    writeFieldName(str);
                    writeLong(j10);
                    return;
                }
                expandCapacity(i6);
            }
            int i10 = this.count;
            this.count = i6;
            char[] cArr = this.buf;
            cArr[i10] = c5;
            int i11 = i10 + length;
            cArr[i10 + 1] = this.keySeperator;
            str.getChars(0, length, cArr, i10 + 2);
            char[] cArr2 = this.buf;
            cArr2[i11 + 2] = this.keySeperator;
            cArr2[i11 + 3] = ':';
            IOUtils.getChars(j10, this.count, cArr2);
            return;
        }
        write(c5);
        writeFieldName(str);
        writeLong(j10);
    }

    public void write(boolean z7) {
        if (z7) {
            write("true");
        } else {
            write("false");
        }
    }

    public void writeFieldValue(char c5, String str, float f) throws IOException {
        write(c5);
        writeFieldName(str);
        writeFloat(f, false);
    }

    public void writeFieldValue(char c5, String str, double d) throws IOException {
        write(c5);
        writeFieldName(str);
        writeDouble(d, false);
    }

    public void writeFieldValue(char c5, String str, String str2) {
        if (this.quoteFieldNames) {
            if (this.useSingleQuotes) {
                write(c5);
                writeFieldName(str);
                if (str2 == null) {
                    writeNull();
                    return;
                } else {
                    writeString(str2);
                    return;
                }
            }
            if (isEnabled(SerializerFeature.BrowserCompatible)) {
                write(c5);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            writeFieldValueStringWithDoubleQuoteCheck(c5, str, str2);
            return;
        }
        write(c5);
        writeFieldName(str);
        if (str2 == null) {
            writeNull();
        } else {
            writeString(str2);
        }
    }

    public void writeFieldValue(char c5, String str, Enum<?> r42) {
        if (r42 == null) {
            write(c5);
            writeFieldName(str);
            writeNull();
        } else if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            writeEnumFieldValue(c5, str, r42.name());
        } else if (this.writeEnumUsingToString) {
            writeEnumFieldValue(c5, str, r42.toString());
        } else {
            writeFieldValue(c5, str, r42.ordinal());
        }
    }

    public void writeFieldValue(char c5, String str, BigDecimal bigDecimal) {
        String string;
        write(c5);
        writeFieldName(str);
        if (bigDecimal == null) {
            writeNull();
            return;
        }
        int iScale = bigDecimal.scale();
        if (isEnabled(SerializerFeature.WriteBigDecimalAsPlain) && iScale >= -100 && iScale < 100) {
            string = bigDecimal.toPlainString();
        } else {
            string = bigDecimal.toString();
        }
        write(string);
    }

    /* JADX WARN: Removed duplicated region for block: B:166:0x02e8  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0147  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void writeStringWithDoubleQuote(char[] r24, char r25) {
        /*
            Method dump skipped, instructions count: 1340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeStringWithDoubleQuote(char[], char):void");
    }
}
