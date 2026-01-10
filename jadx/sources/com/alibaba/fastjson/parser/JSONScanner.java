package com.alibaba.fastjson.parser;

import a.e;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.IOUtils;
import com.alibaba.fastjson.util.TypeUtils;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class JSONScanner extends JSONLexerBase {
    private final int len;
    private final String text;

    public JSONScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    public static boolean charArrayCompare(String str, int i6, char[] cArr) {
        int length = cArr.length;
        if (length + i6 > str.length()) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (cArr[i10] != str.charAt(i6 + i10)) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkDate(char c5, char c8, char c10, char c11, char c12, char c13, int i6, int i10) {
        if (c5 >= '0' && c5 <= '9' && c8 >= '0' && c8 <= '9' && c10 >= '0' && c10 <= '9' && c11 >= '0' && c11 <= '9') {
            if (c12 == '0') {
                if (c13 < '1' || c13 > '9') {
                    return false;
                }
            } else if (c12 != '1' || (c13 != '0' && c13 != '1' && c13 != '2')) {
                return false;
            }
            if (i6 == 48) {
                return i10 >= 49 && i10 <= 57;
            }
            if (i6 != 49 && i6 != 50) {
                return i6 == 51 && (i10 == 48 || i10 == 49);
            }
            if (i10 >= 48 && i10 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean checkTime(char c5, char c8, char c10, char c11, char c12, char c13) {
        if (c5 == '0') {
            if (c8 < '0' || c8 > '9') {
                return false;
            }
        } else {
            if (c5 != '1') {
                if (c5 == '2' && c8 >= '0' && c8 <= '4') {
                }
                return false;
            }
            if (c8 < '0' || c8 > '9') {
                return false;
            }
        }
        if (c10 < '0' || c10 > '5') {
            if (c10 != '6' || c11 != '0') {
                return false;
            }
        } else if (c11 < '0' || c11 > '9') {
            return false;
        }
        return (c12 < '0' || c12 > '5') ? c12 == '6' && c13 == '0' : c13 >= '0' && c13 <= '9';
    }

    private void setCalendar(char c5, char c8, char c10, char c11, char c12, char c13, char c14, char c15) {
        Calendar calendar = Calendar.getInstance(this.timeZone, this.locale);
        this.calendar = calendar;
        int i6 = c11 - '0';
        calendar.set(1, i6 + ((c10 - '0') * 10) + ((c8 - '0') * 100) + ((c5 - '0') * 1000));
        this.calendar.set(2, ((c13 - '0') + ((c12 - '0') * 10)) - 1);
        this.calendar.set(5, (c15 - '0') + ((c14 - '0') * 10));
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String addSymbol(int i6, int i10, int i11, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, i6, i10, i11);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void arrayCopy(int i6, char[] cArr, int i10, int i11) {
        this.text.getChars(i6, i11 + i6, cArr, i10);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return !this.hasSpecial ? IOUtils.decodeBase64(this.text, this.np + 1, this.sp) : IOUtils.decodeBase64(new String(this.sbuf, 0, this.sp));
        }
        int i6 = this.np + 1;
        int i10 = this.sp;
        if (i10 % 2 != 0) {
            throw new JSONException(e.n(i10, "illegal state. "));
        }
        int i11 = i10 / 2;
        byte[] bArr = new byte[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = (i12 * 2) + i6;
            char cCharAt = this.text.charAt(i13);
            char cCharAt2 = this.text.charAt(i13 + 1);
            char c5 = '7';
            int i14 = cCharAt - (cCharAt <= '9' ? '0' : '7');
            if (cCharAt2 <= '9') {
                c5 = '0';
            }
            bArr[i12] = (byte) ((i14 << 4) | (cCharAt2 - c5));
        }
        return bArr;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i6) {
        return i6 >= this.len ? JSONLexer.EOI : this.text.charAt(i6);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void copyTo(int i6, int i10, char[] cArr) {
        this.text.getChars(i6, i10 + i6, cArr, 0);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final BigDecimal decimalValue() {
        char cCharAt = charAt((this.np + this.sp) - 1);
        int i6 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i6--;
        }
        if (i6 > 65535) {
            throw new JSONException("decimal overflow");
        }
        int i10 = this.np;
        char[] cArr = this.sbuf;
        if (i6 < cArr.length) {
            this.text.getChars(i10, i10 + i6, cArr, 0);
            return new BigDecimal(this.sbuf, 0, i6, MathContext.UNLIMITED);
        }
        char[] cArr2 = new char[i6];
        this.text.getChars(i10, i10 + i6, cArr2, 0);
        return new BigDecimal(cArr2, 0, i6, MathContext.UNLIMITED);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c5, int i6) {
        return this.text.indexOf(c5, i6);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        StringBuilder sb = new StringBuilder();
        int i6 = 0;
        int i10 = 1;
        int i11 = 1;
        while (i6 < this.bp) {
            if (this.text.charAt(i6) == '\n') {
                i10++;
                i11 = 1;
            }
            i6++;
            i11++;
        }
        sb.append("pos ");
        sb.append(this.bp);
        sb.append(", line ");
        sb.append(i10);
        sb.append(", column ");
        sb.append(i11);
        if (this.text.length() < 65535) {
            sb.append(this.text);
        } else {
            sb.append(this.text.substring(0, 65535));
        }
        return sb.toString();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        int i6 = this.bp;
        int i10 = this.len;
        if (i6 != i10) {
            return this.ch == 26 && i6 + 1 >= i10;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean matchField2(char[] cArr) {
        while (JSONLexerBase.isWhitespace(this.ch)) {
            next();
        }
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = this.bp + cArr.length;
        int i6 = length + 1;
        char cCharAt = this.text.charAt(length);
        while (JSONLexerBase.isWhitespace(cCharAt)) {
            cCharAt = this.text.charAt(i6);
            i6++;
        }
        if (cCharAt != ':') {
            this.matchStat = -2;
            return false;
        }
        this.bp = i6;
        this.ch = charAt(i6);
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() {
        int i6 = this.bp + 1;
        this.bp = i6;
        char cCharAt = i6 >= this.len ? JSONLexer.EOI : this.text.charAt(i6);
        this.ch = cCharAt;
        return cCharAt;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String numberString() {
        char cCharAt = charAt((this.np + this.sp) - 1);
        int i6 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i6--;
        }
        return subString(this.np, i6);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Date scanDate(char c5) {
        char cCharAt;
        long j10;
        Date date;
        char cCharAt2;
        boolean z7 = false;
        this.matchStat = 0;
        int i6 = this.bp;
        char c8 = this.ch;
        int i10 = i6 + 1;
        char cCharAt3 = charAt(i6);
        if (cCharAt3 == '\"') {
            int iIndexOf = indexOf('\"', i10);
            if (iIndexOf == -1) {
                throw new JSONException("unclosed str");
            }
            this.bp = i10;
            if (!scanISO8601DateIfMatch(false, iIndexOf - i10)) {
                this.bp = i6;
                this.ch = c8;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            cCharAt = charAt(iIndexOf + 1);
            this.bp = i6;
            while (cCharAt != ',' && cCharAt != ']') {
                if (!JSONLexerBase.isWhitespace(cCharAt)) {
                    this.bp = i6;
                    this.ch = c8;
                    this.matchStat = -1;
                    return null;
                }
                int i11 = iIndexOf + 1;
                char cCharAt4 = charAt(iIndexOf + 2);
                iIndexOf = i11;
                cCharAt = cCharAt4;
            }
            this.bp = iIndexOf + 1;
            this.ch = cCharAt;
        } else {
            char c10 = '9';
            char c11 = '0';
            if (cCharAt3 != '-' && (cCharAt3 < '0' || cCharAt3 > '9')) {
                if (cCharAt3 == 'n') {
                    int i12 = i6 + 2;
                    if (charAt(i10) == 'u') {
                        int i13 = i6 + 3;
                        if (charAt(i12) == 'l') {
                            int i14 = i6 + 4;
                            if (charAt(i13) == 'l') {
                                cCharAt = charAt(i14);
                                this.bp = i14;
                                date = null;
                            }
                        }
                    }
                }
                this.bp = i6;
                this.ch = c8;
                this.matchStat = -1;
                return null;
            }
            if (cCharAt3 == '-') {
                cCharAt3 = charAt(i10);
                i10 = i6 + 2;
                z7 = true;
            }
            if (cCharAt3 < '0' || cCharAt3 > '9') {
                cCharAt = cCharAt3;
                j10 = 0;
            } else {
                j10 = cCharAt3 - '0';
                while (true) {
                    int i15 = i10 + 1;
                    cCharAt2 = charAt(i10);
                    if (cCharAt2 < c11 || cCharAt2 > c10) {
                        break;
                    }
                    j10 = (j10 * 10) + (cCharAt2 - '0');
                    i10 = i15;
                    c10 = '9';
                    c11 = '0';
                }
                if (cCharAt2 == ',' || cCharAt2 == ']') {
                    this.bp = i10;
                }
                cCharAt = cCharAt2;
            }
            if (j10 < 0) {
                this.bp = i6;
                this.ch = c8;
                this.matchStat = -1;
                return null;
            }
            if (z7) {
                j10 = -j10;
            }
            date = new Date(j10);
        }
        if (cCharAt == ',') {
            int i16 = this.bp + 1;
            this.bp = i16;
            this.ch = charAt(i16);
            this.matchStat = 3;
            return date;
        }
        int i17 = this.bp + 1;
        this.bp = i17;
        char cCharAt5 = charAt(i17);
        if (cCharAt5 == ',') {
            this.token = 16;
            int i18 = this.bp + 1;
            this.bp = i18;
            this.ch = charAt(i18);
        } else if (cCharAt5 == ']') {
            this.token = 15;
            int i19 = this.bp + 1;
            this.bp = i19;
            this.ch = charAt(i19);
        } else if (cCharAt5 == '}') {
            this.token = 13;
            int i20 = this.bp + 1;
            this.bp = i20;
            this.ch = charAt(i20);
        } else {
            if (cCharAt5 != 26) {
                this.bp = i6;
                this.ch = c8;
                this.matchStat = -1;
                return null;
            }
            this.ch = JSONLexer.EOI;
            this.token = 20;
        }
        this.matchStat = 4;
        return date;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public double scanDouble(char c5) throws NumberFormatException {
        int i6;
        char cCharAt;
        long j10;
        int i10;
        int i11;
        double d;
        char cCharAt2;
        this.matchStat = 0;
        int i12 = this.bp;
        int i13 = i12 + 1;
        char cCharAt3 = charAt(i12);
        boolean z7 = cCharAt3 == '\"';
        if (z7) {
            cCharAt3 = charAt(i13);
            i13 = i12 + 2;
        }
        boolean z10 = cCharAt3 == '-';
        if (z10) {
            cCharAt3 = charAt(i13);
            i13++;
        }
        if (cCharAt3 >= '0') {
            char c8 = '9';
            if (cCharAt3 <= '9') {
                long j11 = cCharAt3 - '0';
                while (true) {
                    i6 = i13 + 1;
                    cCharAt = charAt(i13);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j11 = (j11 * 10) + (cCharAt - '0');
                    i13 = i6;
                }
                if (cCharAt == '.') {
                    int i14 = i13 + 2;
                    char cCharAt4 = charAt(i6);
                    if (cCharAt4 < '0' || cCharAt4 > '9') {
                        this.matchStat = -1;
                        return 0.0d;
                    }
                    j11 = (j11 * 10) + (cCharAt4 - '0');
                    long j12 = 10;
                    while (true) {
                        i6 = i14 + 1;
                        cCharAt2 = charAt(i14);
                        if (cCharAt2 < '0' || cCharAt2 > c8) {
                            break;
                        }
                        j11 = (j11 * 10) + (cCharAt2 - '0');
                        j12 *= 10;
                        i14 = i6;
                        c8 = '9';
                    }
                    long j13 = j12;
                    cCharAt = cCharAt2;
                    j10 = j13;
                } else {
                    j10 = 1;
                }
                boolean z11 = cCharAt == 'e' || cCharAt == 'E';
                if (z11) {
                    int i15 = i6 + 1;
                    char cCharAt5 = charAt(i6);
                    if (cCharAt5 == '+' || cCharAt5 == '-') {
                        i6 += 2;
                        cCharAt = charAt(i15);
                    } else {
                        i6 = i15;
                        cCharAt = cCharAt5;
                    }
                    while (cCharAt >= '0' && cCharAt <= '9') {
                        int i16 = i6 + 1;
                        char cCharAt6 = charAt(i6);
                        i6 = i16;
                        cCharAt = cCharAt6;
                    }
                }
                if (!z7) {
                    i10 = this.bp;
                    i11 = (i6 - i10) - 1;
                } else {
                    if (cCharAt != '\"') {
                        this.matchStat = -1;
                        return 0.0d;
                    }
                    int i17 = i6 + 1;
                    char cCharAt7 = charAt(i6);
                    i10 = this.bp + 1;
                    i11 = (i17 - i10) - 2;
                    i6 = i17;
                    cCharAt = cCharAt7;
                }
                if (z11 || i11 >= 18) {
                    d = Double.parseDouble(subString(i10, i11));
                } else {
                    d = j11 / j10;
                    if (z10) {
                        d = -d;
                    }
                }
                if (cCharAt != c5) {
                    this.matchStat = -1;
                    return d;
                }
                this.bp = i6;
                this.ch = charAt(i6);
                this.matchStat = 3;
                this.token = 16;
                return d;
            }
        }
        if (cCharAt3 == 'n') {
            int i18 = i13 + 1;
            if (charAt(i13) == 'u') {
                int i19 = i13 + 2;
                if (charAt(i18) == 'l') {
                    int i20 = i13 + 3;
                    if (charAt(i19) == 'l') {
                        this.matchStat = 5;
                        int i21 = i13 + 4;
                        char cCharAt8 = charAt(i20);
                        if (z7 && cCharAt8 == '\"') {
                            cCharAt8 = charAt(i21);
                            i21 = i13 + 5;
                        }
                        while (cCharAt8 != ',') {
                            if (cCharAt8 == ']') {
                                this.bp = i21;
                                this.ch = charAt(i21);
                                this.matchStat = 5;
                                this.token = 15;
                                return 0.0d;
                            }
                            if (!JSONLexerBase.isWhitespace(cCharAt8)) {
                                this.matchStat = -1;
                                return 0.0d;
                            }
                            char cCharAt9 = charAt(i21);
                            i21++;
                            cCharAt8 = cCharAt9;
                        }
                        this.bp = i21;
                        this.ch = charAt(i21);
                        this.matchStat = 5;
                        this.token = 16;
                        return 0.0d;
                    }
                }
            }
        }
        this.matchStat = -1;
        return 0.0d;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x00f3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0104  */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean scanFieldBoolean(char[] r12) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldBoolean(char[]):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Date scanFieldDate(char[] cArr) {
        long j10;
        Date date;
        char cCharAt;
        char cCharAt2;
        boolean z7 = false;
        this.matchStat = 0;
        int i6 = this.bp;
        char c5 = this.ch;
        if (!charArrayCompare(this.text, i6, cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = this.bp + cArr.length;
        int i10 = length + 1;
        char cCharAt3 = charAt(length);
        if (cCharAt3 == '\"') {
            int iIndexOf = indexOf('\"', i10);
            if (iIndexOf == -1) {
                throw new JSONException("unclosed str");
            }
            this.bp = i10;
            if (!scanISO8601DateIfMatch(false, iIndexOf - i10)) {
                this.bp = i6;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            cCharAt = charAt(iIndexOf + 1);
            this.bp = i6;
            while (cCharAt != ',' && cCharAt != '}') {
                if (!JSONLexerBase.isWhitespace(cCharAt)) {
                    this.matchStat = -1;
                    return null;
                }
                int i11 = iIndexOf + 1;
                char cCharAt4 = charAt(iIndexOf + 2);
                iIndexOf = i11;
                cCharAt = cCharAt4;
            }
            this.bp = iIndexOf + 1;
            this.ch = cCharAt;
        } else {
            char c8 = '9';
            char c10 = '0';
            if (cCharAt3 != '-' && (cCharAt3 < '0' || cCharAt3 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (cCharAt3 == '-') {
                cCharAt3 = charAt(i10);
                i10 = length + 2;
                z7 = true;
            }
            if (cCharAt3 < '0' || cCharAt3 > '9') {
                j10 = 0;
            } else {
                long j11 = cCharAt3 - '0';
                while (true) {
                    int i12 = i10 + 1;
                    cCharAt2 = charAt(i10);
                    if (cCharAt2 < c10 || cCharAt2 > c8) {
                        break;
                    }
                    j11 = (j11 * 10) + (cCharAt2 - '0');
                    i10 = i12;
                    c8 = '9';
                    c10 = '0';
                }
                if (cCharAt2 == ',' || cCharAt2 == '}') {
                    this.bp = i10;
                }
                long j12 = j11;
                cCharAt3 = cCharAt2;
                j10 = j12;
            }
            if (j10 < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z7) {
                j10 = -j10;
            }
            date = new Date(j10);
            cCharAt = cCharAt3;
        }
        if (cCharAt == ',') {
            int i13 = this.bp + 1;
            this.bp = i13;
            this.ch = charAt(i13);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        int i14 = this.bp + 1;
        this.bp = i14;
        char cCharAt5 = charAt(i14);
        if (cCharAt5 == ',') {
            this.token = 16;
            int i15 = this.bp + 1;
            this.bp = i15;
            this.ch = charAt(i15);
        } else if (cCharAt5 == ']') {
            this.token = 15;
            int i16 = this.bp + 1;
            this.bp = i16;
            this.ch = charAt(i16);
        } else if (cCharAt5 == '}') {
            this.token = 13;
            int i17 = this.bp + 1;
            this.bp = i17;
            this.ch = charAt(i17);
        } else {
            if (cCharAt5 != 26) {
                this.bp = i6;
                this.ch = c5;
                this.matchStat = -1;
                return null;
            }
            this.token = 20;
        }
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0063, code lost:
    
        if (r12 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0065, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0067, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0068, code lost:
    
        if (r4 >= 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006a, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006c, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006d, code lost:
    
        if (r7 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006f, code lost:
    
        if (r12 == '\"') goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0071, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0073, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0074, code lost:
    
        r15 = r15 + 2;
        r12 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007a, code lost:
    
        r11 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x007f, code lost:
    
        if (r12 == ',') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0081, code lost:
    
        if (r12 != '}') goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0088, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r12) == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008a, code lost:
    
        r15 = r11 + 1;
        r12 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0091, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0093, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0094, code lost:
    
        r14.bp = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009a, code lost:
    
        if (r12 != ',') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x009c, code lost:
    
        r14.bp = r11;
        r14.ch = charAt(r11);
        r14.matchStat = 3;
        r14.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00a9, code lost:
    
        if (r3 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ac, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ad, code lost:
    
        if (r12 != '}') goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00af, code lost:
    
        r14.bp = r11;
        r8 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b5, code lost:
    
        if (r8 != ',') goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b7, code lost:
    
        r14.token = 16;
        r15 = r14.bp + 1;
        r14.bp = r15;
        r14.ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c7, code lost:
    
        if (r8 != ']') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c9, code lost:
    
        r14.token = 15;
        r15 = r14.bp + 1;
        r14.bp = r15;
        r14.ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00d9, code lost:
    
        if (r8 != '}') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00db, code lost:
    
        r14.token = 13;
        r15 = r14.bp + 1;
        r14.bp = r15;
        r14.ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00ed, code lost:
    
        if (r8 != 26) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ef, code lost:
    
        r14.token = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00f3, code lost:
    
        r14.matchStat = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00fb, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r8) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00fd, code lost:
    
        r8 = r14.bp + 1;
        r14.bp = r8;
        r8 = charAt(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0107, code lost:
    
        r14.bp = r1;
        r14.ch = r2;
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x010d, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x010e, code lost:
    
        if (r3 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0111, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x007a, code lost:
    
        r11 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:?, code lost:
    
        return r4;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public int scanFieldInt(char[] r15) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldInt(char[]):int");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldLong(char[] cArr) {
        int i6;
        char cCharAt;
        boolean z7 = false;
        this.matchStat = 0;
        int i10 = this.bp;
        char c5 = this.ch;
        if (!charArrayCompare(this.text, i10, cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = this.bp + cArr.length;
        int i11 = length + 1;
        char cCharAt2 = charAt(length);
        boolean z10 = cCharAt2 == '\"';
        if (z10) {
            cCharAt2 = charAt(i11);
            i11 = length + 2;
        }
        if (cCharAt2 == '-') {
            cCharAt2 = charAt(i11);
            i11++;
            z7 = true;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.bp = i10;
            this.ch = c5;
            this.matchStat = -1;
            return 0L;
        }
        long j10 = cCharAt2 - '0';
        while (true) {
            i6 = i11 + 1;
            cCharAt = charAt(i11);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j10 = (j10 * 10) + (cCharAt - '0');
            i11 = i6;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0L;
        }
        if (z10) {
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0L;
            }
            cCharAt = charAt(i6);
            i6 = i11 + 2;
        }
        if (cCharAt == ',' || cCharAt == '}') {
            this.bp = i6 - 1;
        }
        if (j10 < 0 && (j10 != Long.MIN_VALUE || !z7)) {
            this.bp = i10;
            this.ch = c5;
            this.matchStat = -1;
            return 0L;
        }
        while (cCharAt != ',') {
            if (cCharAt == '}') {
                int i12 = 1;
                int i13 = this.bp + 1;
                this.bp = i13;
                char cCharAt3 = charAt(i13);
                while (true) {
                    if (cCharAt3 == ',') {
                        this.token = 16;
                        int i14 = this.bp + i12;
                        this.bp = i14;
                        this.ch = charAt(i14);
                        break;
                    }
                    if (cCharAt3 == ']') {
                        this.token = 15;
                        int i15 = this.bp + i12;
                        this.bp = i15;
                        this.ch = charAt(i15);
                        break;
                    }
                    if (cCharAt3 == '}') {
                        this.token = 13;
                        int i16 = this.bp + i12;
                        this.bp = i16;
                        this.ch = charAt(i16);
                        break;
                    }
                    if (cCharAt3 == 26) {
                        this.token = 20;
                        break;
                    }
                    if (!JSONLexerBase.isWhitespace(cCharAt3)) {
                        this.bp = i10;
                        this.ch = c5;
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i17 = this.bp + 1;
                    this.bp = i17;
                    cCharAt3 = charAt(i17);
                    i12 = 1;
                }
                this.matchStat = 4;
                return z7 ? -j10 : j10;
            }
            if (!JSONLexerBase.isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return 0L;
            }
            this.bp = i6;
            cCharAt = charAt(i6);
            i6++;
        }
        int i18 = this.bp + 1;
        this.bp = i18;
        this.ch = charAt(i18);
        this.matchStat = 3;
        this.token = 16;
        return z7 ? -j10 : j10;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        int i6 = this.bp;
        char c5 = this.ch;
        while (!charArrayCompare(this.text, this.bp, cArr)) {
            if (!JSONLexerBase.isWhitespace(this.ch)) {
                this.matchStat = -2;
                return stringDefaultValue();
            }
            next();
            while (JSONLexerBase.isWhitespace(this.ch)) {
                next();
            }
        }
        int length = this.bp + cArr.length;
        int i10 = length + 1;
        char cCharAt = charAt(length);
        int i11 = 0;
        if (cCharAt != '\"') {
            while (JSONLexerBase.isWhitespace(cCharAt)) {
                i11++;
                int i12 = i10 + 1;
                char cCharAt2 = charAt(i10);
                i10 = i12;
                cCharAt = cCharAt2;
            }
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int iIndexOf = indexOf('\"', i10);
        if (iIndexOf == -1) {
            throw new JSONException("unclosed str");
        }
        String strSubString = subString(i10, iIndexOf - i10);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int i13 = 0;
                for (int i14 = iIndexOf - 1; i14 >= 0 && charAt(i14) == '\\'; i14--) {
                    i13++;
                }
                if (i13 % 2 == 0) {
                    break;
                }
                iIndexOf = indexOf('\"', iIndexOf + 1);
            }
            int i15 = this.bp;
            int length2 = iIndexOf - (((cArr.length + i15) + 1) + i11);
            strSubString = JSONLexerBase.readString(sub_chars(i15 + cArr.length + 1 + i11, length2), length2);
        }
        if ((this.features & Feature.TrimStringFieldValue.mask) != 0) {
            strSubString = strSubString.trim();
        }
        char cCharAt3 = charAt(iIndexOf + 1);
        while (cCharAt3 != ',' && cCharAt3 != '}') {
            if (!JSONLexerBase.isWhitespace(cCharAt3)) {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            char cCharAt4 = charAt(iIndexOf + 2);
            iIndexOf++;
            cCharAt3 = cCharAt4;
        }
        this.bp = iIndexOf + 1;
        this.ch = cCharAt3;
        if (cCharAt3 == ',') {
            int i16 = iIndexOf + 2;
            this.bp = i16;
            this.ch = charAt(i16);
            this.matchStat = 3;
            return strSubString;
        }
        int i17 = iIndexOf + 2;
        this.bp = i17;
        char cCharAt5 = charAt(i17);
        if (cCharAt5 == ',') {
            this.token = 16;
            int i18 = this.bp + 1;
            this.bp = i18;
            this.ch = charAt(i18);
        } else if (cCharAt5 == ']') {
            this.token = 15;
            int i19 = this.bp + 1;
            this.bp = i19;
            this.ch = charAt(i19);
        } else if (cCharAt5 == '}') {
            this.token = 13;
            int i20 = this.bp + 1;
            this.bp = i20;
            this.ch = charAt(i20);
        } else {
            if (cCharAt5 != 26) {
                this.bp = i6;
                this.ch = c5;
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.token = 20;
        }
        this.matchStat = 4;
        return strSubString;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d9, code lost:
    
        if (r9 != ']') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00df, code lost:
    
        if (r3.size() != 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e1, code lost:
    
        r2 = charAt(r1);
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ed, code lost:
    
        r17.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ef, code lost:
    
        return null;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r18, java.lang.Class<?> r19) {
        /*
            Method dump skipped, instructions count: 411
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        while (!charArrayCompare(this.text, this.bp, cArr)) {
            if (!JSONLexerBase.isWhitespace(this.ch)) {
                this.matchStat = -2;
                return 0L;
            }
            next();
            while (JSONLexerBase.isWhitespace(this.ch)) {
                next();
            }
        }
        int length = this.bp + cArr.length;
        int i6 = length + 1;
        char cCharAt = charAt(length);
        if (cCharAt != '\"') {
            while (JSONLexerBase.isWhitespace(cCharAt)) {
                cCharAt = charAt(i6);
                i6++;
            }
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0L;
            }
        }
        long j10 = TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i10 = i6 + 1;
            char cCharAt2 = charAt(i6);
            if (cCharAt2 == '\"') {
                this.bp = i10;
                char cCharAt3 = charAt(i10);
                this.ch = cCharAt3;
                while (cCharAt3 != ',') {
                    if (cCharAt3 == '}') {
                        next();
                        skipWhitespace();
                        char current = getCurrent();
                        if (current == ',') {
                            this.token = 16;
                            int i11 = this.bp + 1;
                            this.bp = i11;
                            this.ch = charAt(i11);
                        } else if (current == ']') {
                            this.token = 15;
                            int i12 = this.bp + 1;
                            this.bp = i12;
                            this.ch = charAt(i12);
                        } else if (current == '}') {
                            this.token = 13;
                            int i13 = this.bp + 1;
                            this.bp = i13;
                            this.ch = charAt(i13);
                        } else {
                            if (current != 26) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            this.token = 20;
                        }
                        this.matchStat = 4;
                        return j10;
                    }
                    if (!JSONLexerBase.isWhitespace(cCharAt3)) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i14 = this.bp + 1;
                    this.bp = i14;
                    cCharAt3 = charAt(i14);
                }
                int i15 = this.bp + 1;
                this.bp = i15;
                this.ch = charAt(i15);
                this.matchStat = 3;
                return j10;
            }
            if (i10 > this.len) {
                this.matchStat = -1;
                return 0L;
            }
            j10 = (j10 ^ cCharAt2) * TypeUtils.fnv1a_64_magic_prime;
            i6 = i10;
        }
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x007b, code lost:
    
        if (r13 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007d, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007f, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0080, code lost:
    
        if (r7 == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
    
        if (r13 == '\"') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0084, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0086, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0087, code lost:
    
        r13 = charAt(r12);
        r12 = r3 + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008e, code lost:
    
        if (r4 >= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0090, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0092, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0095, code lost:
    
        if (r13 != r17) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0097, code lost:
    
        r16.bp = r12;
        r16.ch = charAt(r12);
        r16.matchStat = 3;
        r16.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a4, code lost:
    
        if (r6 == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a7, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ac, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r13) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ae, code lost:
    
        r13 = charAt(r12);
        r12 = r12 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b6, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b8, code lost:
    
        if (r6 == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00bb, code lost:
    
        return -r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:?, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:?, code lost:
    
        return r4;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int scanInt(char r17) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanInt(char):int");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c5) {
        int i6;
        char cCharAt;
        this.matchStat = 0;
        int i10 = this.bp;
        int i11 = i10 + 1;
        char cCharAt2 = charAt(i10);
        boolean z7 = cCharAt2 == '\"';
        if (z7) {
            cCharAt2 = charAt(i11);
            i11 = i10 + 2;
        }
        boolean z10 = cCharAt2 == '-';
        if (z10) {
            cCharAt2 = charAt(i11);
            i11++;
        }
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            long j10 = cCharAt2 - '0';
            while (true) {
                i6 = i11 + 1;
                cCharAt = charAt(i11);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                j10 = (j10 * 10) + (cCharAt - '0');
                i11 = i6;
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (z7) {
                if (cCharAt != '\"') {
                    this.matchStat = -1;
                    return 0L;
                }
                cCharAt = charAt(i6);
                i6 = i11 + 2;
            }
            if (j10 < 0 && (j10 != Long.MIN_VALUE || !z10)) {
                this.matchStat = -1;
                return 0L;
            }
            while (cCharAt != c5) {
                if (!JSONLexerBase.isWhitespace(cCharAt)) {
                    this.matchStat = -1;
                    return j10;
                }
                cCharAt = charAt(i6);
                i6++;
            }
            this.bp = i6;
            this.ch = charAt(i6);
            this.matchStat = 3;
            this.token = 16;
            return z10 ? -j10 : j10;
        }
        if (cCharAt2 == 'n') {
            int i12 = i11 + 1;
            if (charAt(i11) == 'u') {
                int i13 = i11 + 2;
                if (charAt(i12) == 'l') {
                    int i14 = i11 + 3;
                    if (charAt(i13) == 'l') {
                        this.matchStat = 5;
                        int i15 = i11 + 4;
                        char cCharAt3 = charAt(i14);
                        if (z7 && cCharAt3 == '\"') {
                            cCharAt3 = charAt(i15);
                            i15 = i11 + 5;
                        }
                        while (cCharAt3 != ',') {
                            if (cCharAt3 == ']') {
                                this.bp = i15;
                                this.ch = charAt(i15);
                                this.matchStat = 5;
                                this.token = 15;
                                return 0L;
                            }
                            if (!JSONLexerBase.isWhitespace(cCharAt3)) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            char cCharAt4 = charAt(i15);
                            i15++;
                            cCharAt3 = cCharAt4;
                        }
                        this.bp = i15;
                        this.ch = charAt(i15);
                        this.matchStat = 5;
                        this.token = 16;
                        return 0L;
                    }
                }
            }
        }
        this.matchStat = -1;
        return 0L;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public String scanTypeName(SymbolTable symbolTable) {
        int iIndexOf;
        if (!this.text.startsWith("\"@type\":\"", this.bp) || (iIndexOf = this.text.indexOf(34, this.bp + 9)) == -1) {
            return null;
        }
        int i6 = this.bp + 9;
        this.bp = i6;
        int iCharAt = 0;
        while (i6 < iIndexOf) {
            iCharAt = (iCharAt * 31) + this.text.charAt(i6);
            i6++;
        }
        int i10 = this.bp;
        String strAddSymbol = addSymbol(i10, iIndexOf - i10, iCharAt, symbolTable);
        char cCharAt = this.text.charAt(iIndexOf + 1);
        if (cCharAt != ',' && cCharAt != ']') {
            return null;
        }
        int i11 = iIndexOf + 2;
        this.bp = i11;
        this.ch = this.text.charAt(i11);
        return strAddSymbol;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean seekArrayToItem(int i6) {
        if (i6 < 0) {
            throw new IllegalArgumentException(e.n(i6, "index must > 0, but "));
        }
        int i10 = this.token;
        if (i10 == 20) {
            return false;
        }
        if (i10 != 14) {
            throw new UnsupportedOperationException();
        }
        for (int i11 = 0; i11 < i6; i11++) {
            skipWhitespace();
            char c5 = this.ch;
            if (c5 == '\"' || c5 == '\'') {
                skipString();
                char c8 = this.ch;
                if (c8 != ',') {
                    if (c8 != ']') {
                        throw new JSONException("illegal json.");
                    }
                    next();
                    nextToken(16);
                    return false;
                }
                next();
            } else {
                if (c5 == '{') {
                    next();
                    this.token = 12;
                    skipObject(false);
                } else {
                    if (c5 != '[') {
                        for (int i12 = this.bp + 1; i12 < this.text.length(); i12++) {
                            char cCharAt = this.text.charAt(i12);
                            if (cCharAt == ',') {
                                int i13 = i12 + 1;
                                this.bp = i13;
                                this.ch = charAt(i13);
                            } else {
                                if (cCharAt == ']') {
                                    int i14 = i12 + 1;
                                    this.bp = i14;
                                    this.ch = charAt(i14);
                                    nextToken();
                                    return false;
                                }
                            }
                        }
                        throw new JSONException("illegal json.");
                    }
                    next();
                    this.token = 14;
                    skipArray(false);
                }
                int i15 = this.token;
                if (i15 != 16) {
                    if (i15 == 15) {
                        return false;
                    }
                    throw new UnsupportedOperationException();
                }
            }
        }
        nextToken();
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int seekObjectToField(long j10, boolean z7) {
        char c5;
        int i6 = this.token;
        int i10 = -1;
        if (i6 == 20) {
            return -1;
        }
        if (i6 != 13) {
            int i11 = 15;
            if (i6 != 15) {
                int i12 = 16;
                if (i6 != 12 && i6 != 16) {
                    throw new UnsupportedOperationException(JSONToken.name(this.token));
                }
                while (true) {
                    char c8 = this.ch;
                    if (c8 == '}') {
                        next();
                        nextToken();
                        return i10;
                    }
                    if (c8 == 26) {
                        return i10;
                    }
                    if (c8 != '\"') {
                        skipWhitespace();
                    }
                    if (this.ch != '\"') {
                        throw new UnsupportedOperationException();
                    }
                    int i13 = this.bp + 1;
                    long j11 = TypeUtils.fnv1a_64_magic_hashcode;
                    while (true) {
                        if (i13 >= this.text.length()) {
                            break;
                        }
                        char cCharAt = this.text.charAt(i13);
                        if (cCharAt == '\\') {
                            i13++;
                            if (i13 == this.text.length()) {
                                throw new JSONException("unclosed str, " + info());
                            }
                            cCharAt = this.text.charAt(i13);
                        }
                        if (cCharAt == '\"') {
                            int i14 = i13 + 1;
                            this.bp = i14;
                            this.ch = i14 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(this.bp);
                        } else {
                            j11 = (j11 ^ cCharAt) * TypeUtils.fnv1a_64_magic_prime;
                            i13++;
                        }
                    }
                    if (j11 == j10) {
                        if (this.ch != ':') {
                            skipWhitespace();
                        }
                        if (this.ch != ':') {
                            return 3;
                        }
                        int i15 = this.bp + 1;
                        this.bp = i15;
                        char cCharAt2 = i15 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i15);
                        this.ch = cCharAt2;
                        if (cCharAt2 == ',') {
                            int i16 = this.bp + 1;
                            this.bp = i16;
                            this.ch = i16 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i16);
                            this.token = i12;
                            return 3;
                        }
                        if (cCharAt2 == ']') {
                            int i17 = this.bp + 1;
                            this.bp = i17;
                            this.ch = i17 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i17);
                            this.token = i11;
                            return 3;
                        }
                        if (cCharAt2 == '}') {
                            int i18 = this.bp + 1;
                            this.bp = i18;
                            this.ch = i18 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i18);
                            this.token = 13;
                            return 3;
                        }
                        if (cCharAt2 < '0' || cCharAt2 > '9') {
                            nextToken(2);
                            return 3;
                        }
                        this.sp = 0;
                        this.pos = this.bp;
                        scanNumber();
                        return 3;
                    }
                    if (this.ch != ':') {
                        skipWhitespace();
                    }
                    if (this.ch != ':') {
                        throw new JSONException("illegal json, " + info());
                    }
                    int i19 = this.bp + 1;
                    this.bp = i19;
                    char cCharAt3 = i19 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i19);
                    this.ch = cCharAt3;
                    if (cCharAt3 != '\"' && cCharAt3 != '\'' && cCharAt3 != '{' && cCharAt3 != '[' && cCharAt3 != '0' && cCharAt3 != '1' && cCharAt3 != '2' && cCharAt3 != '3' && cCharAt3 != '4' && cCharAt3 != '5' && cCharAt3 != '6' && cCharAt3 != '7' && cCharAt3 != '8' && cCharAt3 != '9' && cCharAt3 != '+' && cCharAt3 != '-') {
                        skipWhitespace();
                    }
                    char c10 = this.ch;
                    if (c10 == '-' || c10 == '+' || (c10 >= '0' && c10 <= '9')) {
                        next();
                        while (true) {
                            c5 = this.ch;
                            if (c5 < '0' || c5 > '9') {
                                break;
                            }
                            next();
                        }
                        if (c5 == '.') {
                            next();
                            while (true) {
                                char c11 = this.ch;
                                if (c11 < '0' || c11 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        char c12 = this.ch;
                        if (c12 == 'E' || c12 == 'e') {
                            next();
                            char c13 = this.ch;
                            if (c13 == '-' || c13 == '+') {
                                next();
                            }
                            while (true) {
                                char c14 = this.ch;
                                if (c14 < '0' || c14 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        if (this.ch != ',') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c10 == '\"') {
                        skipString();
                        char c15 = this.ch;
                        if (c15 != ',' && c15 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c10 == 't') {
                        next();
                        if (this.ch == 'r') {
                            next();
                            if (this.ch == 'u') {
                                next();
                                if (this.ch == 'e') {
                                    next();
                                }
                            }
                        }
                        char c16 = this.ch;
                        if (c16 != ',' && c16 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c10 == 'n') {
                        next();
                        if (this.ch == 'u') {
                            next();
                            if (this.ch == 'l') {
                                next();
                                if (this.ch == 'l') {
                                    next();
                                }
                            }
                        }
                        char c17 = this.ch;
                        if (c17 != ',' && c17 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c10 == 'f') {
                        next();
                        if (this.ch == 'a') {
                            next();
                            if (this.ch == 'l') {
                                next();
                                if (this.ch == 's') {
                                    next();
                                    if (this.ch == 'e') {
                                        next();
                                    }
                                }
                            }
                        }
                        char c18 = this.ch;
                        if (c18 != ',' && c18 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c10 == '{') {
                        int i20 = this.bp + 1;
                        this.bp = i20;
                        this.ch = i20 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i20);
                        if (z7) {
                            this.token = 12;
                            return 1;
                        }
                        skipObject(false);
                        if (this.token == 13) {
                            return -1;
                        }
                    } else {
                        if (c10 != '[') {
                            throw new UnsupportedOperationException();
                        }
                        next();
                        if (z7) {
                            this.token = 14;
                            return 2;
                        }
                        skipArray(false);
                        if (this.token == 13) {
                            return -1;
                        }
                    }
                    i10 = -1;
                    i11 = 15;
                    i12 = 16;
                }
            }
        }
        nextToken();
        return -1;
    }

    public void setTime(char c5, char c8, char c10, char c11, char c12, char c13) {
        this.calendar.set(11, (c8 - '0') + ((c5 - '0') * 10));
        this.calendar.set(12, (c11 - '0') + ((c10 - '0') * 10));
        this.calendar.set(13, (c13 - '0') + ((c12 - '0') * 10));
    }

    public void setTimeZone(char c5, char c8, char c10) {
        setTimeZone(c5, c8, c10, '0', '0');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipArray() {
        skipArray(false);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject() {
        skipObject(false);
    }

    public final void skipString() {
        if (this.ch != '\"') {
            throw new UnsupportedOperationException();
        }
        int i6 = this.bp;
        while (true) {
            i6++;
            if (i6 >= this.text.length()) {
                throw new JSONException("unclosed str");
            }
            char cCharAt = this.text.charAt(i6);
            if (cCharAt == '\\') {
                if (i6 < this.len - 1) {
                    i6++;
                }
            } else if (cCharAt == '\"') {
                String str = this.text;
                int i10 = i6 + 1;
                this.bp = i10;
                this.ch = str.charAt(i10);
                return;
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String stringVal() {
        return !this.hasSpecial ? subString(this.np + 1, this.sp) : new String(this.sbuf, 0, this.sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String subString(int i6, int i10) {
        if (!ASMUtils.IS_ANDROID) {
            return this.text.substring(i6, i10 + i6);
        }
        char[] cArr = this.sbuf;
        if (i10 < cArr.length) {
            this.text.getChars(i6, i6 + i10, cArr, 0);
            return new String(this.sbuf, 0, i10);
        }
        char[] cArr2 = new char[i10];
        this.text.getChars(i6, i10 + i6, cArr2, 0);
        return new String(cArr2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i6, int i10) {
        if (ASMUtils.IS_ANDROID) {
            char[] cArr = this.sbuf;
            if (i10 < cArr.length) {
                this.text.getChars(i6, i10 + i6, cArr, 0);
                return this.sbuf;
            }
        }
        char[] cArr2 = new char[i10];
        this.text.getChars(i6, i10 + i6, cArr2, 0);
        return cArr2;
    }

    public JSONScanner(String str, int i6) {
        super(i6);
        this.text = str;
        this.len = str.length();
        this.bp = -1;
        next();
        if (this.ch == 65279) {
            next();
        }
    }

    public boolean scanISO8601DateIfMatch(boolean z7) {
        return scanISO8601DateIfMatch(z7, this.len - this.bp);
    }

    public void setTimeZone(char c5, char c8, char c10, char c11, char c12) {
        int i6 = (((c12 - '0') + ((c11 - '0') * 10)) * 60000) + (((c10 - '0') + ((c8 - '0') * 10)) * 3600000);
        if (c5 == '-') {
            i6 = -i6;
        }
        if (this.calendar.getTimeZone().getRawOffset() != i6) {
            this.calendar.setTimeZone(new SimpleTimeZone(i6, Integer.toString(i6)));
        }
    }

    public final void skipArray(boolean z7) {
        int i6 = this.bp;
        boolean z10 = false;
        int i10 = 0;
        while (i6 < this.text.length()) {
            char cCharAt = this.text.charAt(i6);
            if (cCharAt == '\\') {
                if (i6 >= this.len - 1) {
                    this.ch = cCharAt;
                    this.bp = i6;
                    throw new JSONException("illegal str, " + info());
                }
                i6++;
            } else if (cCharAt == '\"') {
                z10 = !z10;
            } else if (cCharAt != '[') {
                char cCharAt2 = JSONLexer.EOI;
                if (cCharAt == '{' && z7) {
                    int i11 = this.bp + 1;
                    this.bp = i11;
                    if (i11 < this.text.length()) {
                        cCharAt2 = this.text.charAt(i11);
                    }
                    this.ch = cCharAt2;
                    skipObject(z7);
                } else if (cCharAt == ']' && !z10 && i10 - 1 == -1) {
                    int i12 = i6 + 1;
                    this.bp = i12;
                    if (i12 == this.text.length()) {
                        this.ch = JSONLexer.EOI;
                        this.token = 20;
                        return;
                    } else {
                        this.ch = this.text.charAt(this.bp);
                        nextToken(16);
                        return;
                    }
                }
            } else if (!z10) {
                i10++;
            }
            i6++;
        }
        if (i6 != this.text.length()) {
            return;
        }
        throw new JSONException("illegal str, " + info());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject(boolean z7) {
        int i6 = this.bp;
        boolean z10 = false;
        int i10 = 0;
        while (i6 < this.text.length()) {
            char cCharAt = this.text.charAt(i6);
            if (cCharAt == '\\') {
                if (i6 >= this.len - 1) {
                    this.ch = cCharAt;
                    this.bp = i6;
                    throw new JSONException("illegal str, " + info());
                }
                i6++;
            } else if (cCharAt == '\"') {
                z10 = !z10;
            } else if (cCharAt != '{') {
                if (cCharAt == '}' && !z10 && i10 - 1 == -1) {
                    int i11 = i6 + 1;
                    this.bp = i11;
                    int length = this.text.length();
                    char cCharAt2 = JSONLexer.EOI;
                    if (i11 == length) {
                        this.ch = JSONLexer.EOI;
                        this.token = 20;
                        return;
                    }
                    char cCharAt3 = this.text.charAt(this.bp);
                    this.ch = cCharAt3;
                    if (cCharAt3 == ',') {
                        this.token = 16;
                        int i12 = this.bp + 1;
                        this.bp = i12;
                        if (i12 < this.text.length()) {
                            cCharAt2 = this.text.charAt(i12);
                        }
                        this.ch = cCharAt2;
                        return;
                    }
                    if (cCharAt3 == '}') {
                        this.token = 13;
                        next();
                        return;
                    } else if (cCharAt3 != ']') {
                        nextToken(16);
                        return;
                    } else {
                        this.token = 15;
                        next();
                        return;
                    }
                }
            } else if (!z10) {
                i10++;
            }
            i6++;
        }
        for (int i13 = 0; i13 < this.bp; i13++) {
            if (i13 < this.text.length() && this.text.charAt(i13) == ' ') {
                i6++;
            }
        }
        if (i6 != this.text.length()) {
            return;
        }
        throw new JSONException("illegal str, " + info());
    }

    /* JADX WARN: Removed duplicated region for block: B:137:0x0201 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0203  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean scanISO8601DateIfMatch(boolean r33, int r34) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1761
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanISO8601DateIfMatch(boolean, int):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        return charArrayCompare(this.text, this.bp, cArr);
    }

    public JSONScanner(char[] cArr, int i6) {
        this(cArr, i6, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] cArr, int i6, int i10) {
        this(new String(cArr, 0, i6), i10);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public String[] scanFieldStringArray(char[] cArr, int i6, SymbolTable symbolTable) throws NumberFormatException {
        int i10;
        char cCharAt;
        int i11 = this.bp;
        char c5 = this.ch;
        while (JSONLexerBase.isWhitespace(this.ch)) {
            next();
        }
        if (cArr != null) {
            this.matchStat = 0;
            if (!charArrayCompare(cArr)) {
                this.matchStat = -2;
                return null;
            }
            int length = this.bp + cArr.length;
            int i12 = length + 1;
            char cCharAt2 = this.text.charAt(length);
            while (JSONLexerBase.isWhitespace(cCharAt2)) {
                cCharAt2 = this.text.charAt(i12);
                i12++;
            }
            if (cCharAt2 == ':') {
                i10 = i12 + 1;
                cCharAt = this.text.charAt(i12);
                while (JSONLexerBase.isWhitespace(cCharAt)) {
                    cCharAt = this.text.charAt(i10);
                    i10++;
                }
            } else {
                this.matchStat = -1;
                return null;
            }
        } else {
            i10 = this.bp + 1;
            cCharAt = this.ch;
        }
        if (cCharAt == '[') {
            this.bp = i10;
            this.ch = this.text.charAt(i10);
            String[] strArr = i6 >= 0 ? new String[i6] : new String[4];
            int i13 = 0;
            while (true) {
                if (JSONLexerBase.isWhitespace(this.ch)) {
                    next();
                } else {
                    if (this.ch != '\"') {
                        this.bp = i11;
                        this.ch = c5;
                        this.matchStat = -1;
                        return null;
                    }
                    String strScanSymbol = scanSymbol(symbolTable, '\"');
                    if (i13 == strArr.length) {
                        String[] strArr2 = new String[strArr.length + (strArr.length >> 1) + 1];
                        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                        strArr = strArr2;
                    }
                    int i14 = i13 + 1;
                    strArr[i13] = strScanSymbol;
                    while (JSONLexerBase.isWhitespace(this.ch)) {
                        next();
                    }
                    if (this.ch == ',') {
                        next();
                        i13 = i14;
                    } else {
                        if (strArr.length != i14) {
                            String[] strArr3 = new String[i14];
                            System.arraycopy(strArr, 0, strArr3, 0, i14);
                            strArr = strArr3;
                        }
                        while (JSONLexerBase.isWhitespace(this.ch)) {
                            next();
                        }
                        if (this.ch == ']') {
                            next();
                            return strArr;
                        }
                        this.bp = i11;
                        this.ch = c5;
                        this.matchStat = -1;
                        return null;
                    }
                }
            }
        } else {
            if (cCharAt == 'n' && this.text.startsWith("ull", this.bp + 1)) {
                int i15 = this.bp + 4;
                this.bp = i15;
                this.ch = this.text.charAt(i15);
                return null;
            }
            this.matchStat = -1;
            return null;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int seekObjectToField(long[] jArr) {
        char c5;
        int i6 = this.token;
        if (i6 != 12 && i6 != 16) {
            throw new UnsupportedOperationException();
        }
        while (true) {
            char c8 = this.ch;
            if (c8 == '}') {
                next();
                nextToken();
                this.matchStat = -1;
                return -1;
            }
            char cCharAt = JSONLexer.EOI;
            if (c8 == 26) {
                this.matchStat = -1;
                return -1;
            }
            if (c8 != '\"') {
                skipWhitespace();
            }
            if (this.ch == '\"') {
                int i10 = this.bp + 1;
                long j10 = TypeUtils.fnv1a_64_magic_hashcode;
                while (true) {
                    if (i10 >= this.text.length()) {
                        break;
                    }
                    char cCharAt2 = this.text.charAt(i10);
                    if (cCharAt2 == '\\') {
                        i10++;
                        if (i10 != this.text.length()) {
                            cCharAt2 = this.text.charAt(i10);
                        } else {
                            throw new JSONException("unclosed str, " + info());
                        }
                    }
                    if (cCharAt2 == '\"') {
                        int i11 = i10 + 1;
                        this.bp = i11;
                        this.ch = i11 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(this.bp);
                    } else {
                        j10 = (j10 ^ cCharAt2) * TypeUtils.fnv1a_64_magic_prime;
                        i10++;
                    }
                }
                int i12 = 0;
                while (true) {
                    if (i12 >= jArr.length) {
                        i12 = -1;
                        break;
                    }
                    if (j10 == jArr[i12]) {
                        break;
                    }
                    i12++;
                }
                if (i12 != -1) {
                    if (this.ch != ':') {
                        skipWhitespace();
                    }
                    if (this.ch == ':') {
                        int i13 = this.bp + 1;
                        this.bp = i13;
                        char cCharAt3 = i13 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i13);
                        this.ch = cCharAt3;
                        if (cCharAt3 == ',') {
                            int i14 = this.bp + 1;
                            this.bp = i14;
                            if (i14 < this.text.length()) {
                                cCharAt = this.text.charAt(i14);
                            }
                            this.ch = cCharAt;
                            this.token = 16;
                        } else if (cCharAt3 == ']') {
                            int i15 = this.bp + 1;
                            this.bp = i15;
                            if (i15 < this.text.length()) {
                                cCharAt = this.text.charAt(i15);
                            }
                            this.ch = cCharAt;
                            this.token = 15;
                        } else if (cCharAt3 == '}') {
                            int i16 = this.bp + 1;
                            this.bp = i16;
                            if (i16 < this.text.length()) {
                                cCharAt = this.text.charAt(i16);
                            }
                            this.ch = cCharAt;
                            this.token = 13;
                        } else if (cCharAt3 >= '0' && cCharAt3 <= '9') {
                            this.sp = 0;
                            this.pos = this.bp;
                            scanNumber();
                        } else {
                            nextToken(2);
                        }
                    }
                    this.matchStat = 3;
                    return i12;
                }
                if (this.ch != ':') {
                    skipWhitespace();
                }
                if (this.ch == ':') {
                    int i17 = this.bp + 1;
                    this.bp = i17;
                    char cCharAt4 = i17 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(i17);
                    this.ch = cCharAt4;
                    if (cCharAt4 != '\"' && cCharAt4 != '\'' && cCharAt4 != '{' && cCharAt4 != '[' && cCharAt4 != '0' && cCharAt4 != '1' && cCharAt4 != '2' && cCharAt4 != '3' && cCharAt4 != '4' && cCharAt4 != '5' && cCharAt4 != '6' && cCharAt4 != '7' && cCharAt4 != '8' && cCharAt4 != '9' && cCharAt4 != '+' && cCharAt4 != '-') {
                        skipWhitespace();
                    }
                    char c10 = this.ch;
                    if (c10 == '-' || c10 == '+' || (c10 >= '0' && c10 <= '9')) {
                        next();
                        while (true) {
                            c5 = this.ch;
                            if (c5 < '0' || c5 > '9') {
                                break;
                            }
                            next();
                        }
                        if (c5 == '.') {
                            next();
                            while (true) {
                                char c11 = this.ch;
                                if (c11 < '0' || c11 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        char c12 = this.ch;
                        if (c12 == 'E' || c12 == 'e') {
                            next();
                            char c13 = this.ch;
                            if (c13 == '-' || c13 == '+') {
                                next();
                            }
                            while (true) {
                                char c14 = this.ch;
                                if (c14 < '0' || c14 > '9') {
                                    break;
                                }
                                next();
                            }
                        }
                        if (this.ch != ',') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c10 == '\"') {
                        skipString();
                        char c15 = this.ch;
                        if (c15 != ',' && c15 != '}') {
                            skipWhitespace();
                        }
                        if (this.ch == ',') {
                            next();
                        }
                    } else if (c10 == '{') {
                        int i18 = this.bp + 1;
                        this.bp = i18;
                        if (i18 < this.text.length()) {
                            cCharAt = this.text.charAt(i18);
                        }
                        this.ch = cCharAt;
                        skipObject(false);
                    } else if (c10 == '[') {
                        next();
                        skipArray(false);
                    } else {
                        throw new UnsupportedOperationException();
                    }
                } else {
                    throw new JSONException("illegal json, " + info());
                }
            } else {
                throw new UnsupportedOperationException();
            }
        }
    }
}
