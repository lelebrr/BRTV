package r9;

import java.util.Comparator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class n extends m {
    public static String N(char[] cArr, int i6, int i10) {
        x8.b bVar = x8.e.Companion;
        int length = cArr.length;
        bVar.getClass();
        if (i6 < 0 || i10 > length) {
            StringBuilder sbV = a.e.v("startIndex: ", i6, ", endIndex: ", i10, ", size: ");
            sbV.append(length);
            throw new IndexOutOfBoundsException(sbV.toString());
        }
        if (i6 <= i10) {
            return new String(cArr, i6, i10 - i6);
        }
        throw new IllegalArgumentException(a.e.m(i6, i10, "startIndex: ", " > endIndex: "));
    }

    public static boolean O(String str, String str2, boolean z7) {
        j9.i.f(str, "<this>");
        j9.i.f(str2, "suffix");
        return !z7 ? str.endsWith(str2) : R(str, str2, str.length() - str2.length(), 0, str2.length(), true);
    }

    public static boolean P(String str, String str2) {
        return str == null ? str2 == null : str.equalsIgnoreCase(str2);
    }

    public static Comparator Q() {
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        j9.i.e(comparator, "CASE_INSENSITIVE_ORDER");
        return comparator;
    }

    public static final boolean R(String str, String str2, int i6, int i10, int i11, boolean z7) {
        j9.i.f(str, "<this>");
        j9.i.f(str2, "other");
        return !z7 ? str.regionMatches(i6, str2, i10, i11) : str.regionMatches(z7, i6, str2, i10, i11);
    }

    public static String S(char c5, String str, char c8) {
        j9.i.f(str, "<this>");
        String strReplace = str.replace(c5, c8);
        j9.i.e(strReplace, "replace(...)");
        return strReplace;
    }

    public static String T(String str, String str2, String str3) {
        j9.i.f(str, "<this>");
        int iA0 = f.a0(str, 0, str2, false);
        if (iA0 < 0) {
            return str;
        }
        int length = str2.length();
        int i6 = length >= 1 ? length : 1;
        int length2 = str3.length() + (str.length() - length);
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        int i10 = 0;
        do {
            sb.append((CharSequence) str, i10, iA0);
            sb.append(str3);
            i10 = iA0 + length;
            if (iA0 >= str.length()) {
                break;
            }
            iA0 = f.a0(str, iA0 + i6, str2, false);
        } while (iA0 > 0);
        sb.append((CharSequence) str, i10, str.length());
        String string = sb.toString();
        j9.i.e(string, "toString(...)");
        return string;
    }

    public static boolean U(String str, int i6, String str2, boolean z7) {
        j9.i.f(str, "<this>");
        return !z7 ? str.startsWith(str2, i6) : R(str, str2, i6, 0, str2.length(), z7);
    }

    public static boolean V(String str, String str2, boolean z7) {
        j9.i.f(str, "<this>");
        j9.i.f(str2, "prefix");
        return !z7 ? str.startsWith(str2) : R(str, str2, 0, 0, str2.length(), z7);
    }
}
