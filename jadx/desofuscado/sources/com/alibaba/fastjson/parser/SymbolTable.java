package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SymbolTable {
    private final int indexMask;
    private final String[] symbols;

    public SymbolTable(int i6) {
        this.indexMask = i6 - 1;
        this.symbols = new String[i6];
        addSymbol("$ref", 0, 4, 1185263);
        String str = JSON.DEFAULT_TYPE_KEY;
        addSymbol(str, 0, str.length(), JSON.DEFAULT_TYPE_KEY.hashCode());
    }

    public static int hash(char[] cArr, int i6, int i10) {
        int i11 = 0;
        int i12 = 0;
        while (i11 < i10) {
            i12 = (i12 * 31) + cArr[i6];
            i11++;
            i6++;
        }
        return i12;
    }

    private static String subString(String str, int i6, int i10) {
        char[] cArr = new char[i10];
        str.getChars(i6, i10 + i6, cArr, 0);
        return new String(cArr);
    }

    public String addSymbol(char[] cArr, int i6, int i10) {
        return addSymbol(cArr, i6, i10, hash(cArr, i6, i10));
    }

    public String addSymbol(char[] cArr, int i6, int i10, int i11) {
        int i12 = this.indexMask & i11;
        String str = this.symbols[i12];
        if (str != null) {
            if (i11 == str.hashCode() && i10 == str.length()) {
                for (int i13 = 0; i13 < i10; i13++) {
                    if (cArr[i6 + i13] == str.charAt(i13)) {
                    }
                }
                return str;
            }
            return new String(cArr, i6, i10);
        }
        String strIntern = new String(cArr, i6, i10).intern();
        this.symbols[i12] = strIntern;
        return strIntern;
    }

    public String addSymbol(String str, int i6, int i10, int i11) {
        return addSymbol(str, i6, i10, i11, false);
    }

    public String addSymbol(String str, int i6, int i10, int i11, boolean z7) {
        int i12 = this.indexMask & i11;
        String str2 = this.symbols[i12];
        if (str2 != null) {
            if (i11 == str2.hashCode() && i10 == str2.length() && str.startsWith(str2, i6)) {
                return str2;
            }
            String strSubString = subString(str, i6, i10);
            if (z7) {
                this.symbols[i12] = strSubString;
            }
            return strSubString;
        }
        if (i10 != str.length()) {
            str = subString(str, i6, i10);
        }
        String strIntern = str.intern();
        this.symbols[i12] = strIntern;
        return strIntern;
    }
}
