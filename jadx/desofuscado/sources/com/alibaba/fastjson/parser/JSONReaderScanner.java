package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import java.io.CharArrayReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.math.BigDecimal;
import java.math.MathContext;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class JSONReaderScanner extends JSONLexerBase {
    private static final ThreadLocal<char[]> BUF_LOCAL = new ThreadLocal<>();
    private char[] buf;
    private int bufLength;
    private Reader reader;

    public JSONReaderScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String addSymbol(int i6, int i10, int i11, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.buf, i6, i10, i11);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void arrayCopy(int i6, char[] cArr, int i10, int i11) {
        System.arraycopy(this.buf, i6, cArr, i10, i11);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return IOUtils.decodeBase64(this.buf, this.np + 1, this.sp);
        }
        throw new JSONException("TODO");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        for (int i6 = 0; i6 < cArr.length; i6++) {
            if (charAt(this.bp + i6) != cArr[i6]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i6) throws IOException {
        int i10 = this.bufLength;
        if (i6 >= i10) {
            if (i10 == -1) {
                return i6 < this.sp ? this.buf[i6] : JSONLexer.EOI;
            }
            int i11 = this.bp;
            if (i11 == 0) {
                char[] cArr = this.buf;
                int length = (cArr.length * 3) / 2;
                char[] cArr2 = new char[length];
                System.arraycopy(cArr, i11, cArr2, 0, i10);
                int i12 = this.bufLength;
                try {
                    this.bufLength += this.reader.read(cArr2, i12, length - i12);
                    this.buf = cArr2;
                } catch (IOException e5) {
                    throw new JSONException(e5.getMessage(), e5);
                }
            } else {
                int i13 = i10 - i11;
                if (i13 > 0) {
                    char[] cArr3 = this.buf;
                    System.arraycopy(cArr3, i11, cArr3, 0, i13);
                }
                try {
                    Reader reader = this.reader;
                    char[] cArr4 = this.buf;
                    int i14 = reader.read(cArr4, i13, cArr4.length - i13);
                    this.bufLength = i14;
                    if (i14 == 0) {
                        throw new JSONException("illegal state, textLength is zero");
                    }
                    if (i14 == -1) {
                        return JSONLexer.EOI;
                    }
                    this.bufLength = i14 + i13;
                    int i15 = this.bp;
                    i6 -= i15;
                    this.np -= i15;
                    this.bp = 0;
                } catch (IOException e10) {
                    throw new JSONException(e10.getMessage(), e10);
                }
            }
        }
        return this.buf[i6];
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        char[] cArr = this.buf;
        if (cArr.length <= 65536) {
            BUF_LOCAL.set(cArr);
        }
        this.buf = null;
        IOUtils.close(this.reader);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void copyTo(int i6, int i10, char[] cArr) {
        System.arraycopy(this.buf, i6, cArr, 0, i10);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final BigDecimal decimalValue() throws IOException {
        int i6 = this.np;
        if (i6 == -1) {
            i6 = 0;
        }
        char cCharAt = charAt((this.sp + i6) - 1);
        int i10 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i10--;
        }
        if (i10 <= 65535) {
            return new BigDecimal(this.buf, i6, i10, MathContext.UNLIMITED);
        }
        throw new JSONException("decimal overflow");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c5, int i6) throws IOException {
        int i10 = i6 - this.bp;
        while (true) {
            char cCharAt = charAt(this.bp + i10);
            if (c5 == cCharAt) {
                return i10 + this.bp;
            }
            if (cCharAt == 26) {
                return -1;
            }
            i10++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final boolean isBlankInput() {
        int i6 = 0;
        while (true) {
            char c5 = this.buf[i6];
            if (c5 == 26) {
                this.token = 20;
                return true;
            }
            if (!JSONLexerBase.isWhitespace(c5)) {
                return false;
            }
            i6++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        if (this.bufLength == -1) {
            return true;
        }
        int i6 = this.bp;
        char[] cArr = this.buf;
        if (i6 != cArr.length) {
            return this.ch == 26 && i6 + 1 >= cArr.length;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() throws IOException {
        int i6 = this.bp + 1;
        this.bp = i6;
        int i10 = this.bufLength;
        if (i6 >= i10) {
            if (i10 == -1) {
                return JSONLexer.EOI;
            }
            int i11 = this.sp;
            if (i11 > 0) {
                int i12 = i10 - i11;
                if (this.ch == '\"' && i12 > 0) {
                    i12--;
                }
                char[] cArr = this.buf;
                System.arraycopy(cArr, i12, cArr, 0, i11);
            }
            this.np = -1;
            int i13 = this.sp;
            this.bp = i13;
            try {
                char[] cArr2 = this.buf;
                int length = cArr2.length - i13;
                if (length == 0) {
                    char[] cArr3 = new char[cArr2.length * 2];
                    System.arraycopy(cArr2, 0, cArr3, 0, cArr2.length);
                    this.buf = cArr3;
                    length = cArr3.length - i13;
                }
                int i14 = this.reader.read(this.buf, this.bp, length);
                this.bufLength = i14;
                if (i14 == 0) {
                    throw new JSONException("illegal stat, textLength is zero");
                }
                if (i14 == -1) {
                    this.ch = JSONLexer.EOI;
                    return JSONLexer.EOI;
                }
                this.bufLength = i14 + this.bp;
                i6 = i13;
            } catch (IOException e5) {
                throw new JSONException(e5.getMessage(), e5);
            }
        }
        char c5 = this.buf[i6];
        this.ch = c5;
        return c5;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String numberString() throws IOException {
        int i6 = this.np;
        if (i6 == -1) {
            i6 = 0;
        }
        char cCharAt = charAt((this.sp + i6) - 1);
        int i10 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i10--;
        }
        return new String(this.buf, i6, i10);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String stringVal() {
        if (this.hasSpecial) {
            return new String(this.sbuf, 0, this.sp);
        }
        int i6 = this.np + 1;
        if (i6 < 0) {
            throw new IllegalStateException();
        }
        char[] cArr = this.buf;
        int length = cArr.length;
        int i10 = this.sp;
        if (i6 <= length - i10) {
            return new String(cArr, i6, i10);
        }
        throw new IllegalStateException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String subString(int i6, int i10) {
        if (i10 >= 0) {
            return new String(this.buf, i6, i10);
        }
        throw new StringIndexOutOfBoundsException(i10);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i6, int i10) {
        if (i10 < 0) {
            throw new StringIndexOutOfBoundsException(i10);
        }
        if (i6 == 0) {
            return this.buf;
        }
        char[] cArr = new char[i10];
        System.arraycopy(this.buf, i6, cArr, 0, i10);
        return cArr;
    }

    public JSONReaderScanner(String str, int i6) {
        this(new StringReader(str), i6);
    }

    public JSONReaderScanner(char[] cArr, int i6) {
        this(cArr, i6, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(Reader reader) {
        this(reader, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(Reader reader, int i6) throws IOException {
        super(i6);
        this.reader = reader;
        ThreadLocal<char[]> threadLocal = BUF_LOCAL;
        char[] cArr = threadLocal.get();
        this.buf = cArr;
        if (cArr != null) {
            threadLocal.set(null);
        }
        if (this.buf == null) {
            this.buf = new char[16384];
        }
        try {
            this.bufLength = reader.read(this.buf);
            this.bp = -1;
            next();
            if (this.ch == 65279) {
                next();
            }
        } catch (IOException e5) {
            throw new JSONException(e5.getMessage(), e5);
        }
    }

    public JSONReaderScanner(char[] cArr, int i6, int i10) {
        this(new CharArrayReader(cArr, 0, i6), i10);
    }
}
