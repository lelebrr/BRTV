package r9;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.extractor.text.ttml.TtmlNode;
import ea.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class f extends n {
    public static boolean W(CharSequence charSequence, char c5) {
        j9.i.f(charSequence, "<this>");
        return b0(charSequence, c5, 0, false, 2) >= 0;
    }

    public static boolean X(String str, String str2) {
        j9.i.f(str, "<this>");
        return c0(str, str2, 0, false, 2) >= 0;
    }

    public static boolean Y(String str, char c5) {
        return str.length() > 0 && o9.d.j(str.charAt(Z(str)), c5, false);
    }

    public static final int Z(CharSequence charSequence) {
        j9.i.f(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int a0(String str, int i6, String str2, boolean z7) {
        j9.i.f(str, "<this>");
        j9.i.f(str2, "string");
        if (!z7) {
            return str.indexOf(str2, i6);
        }
        int length = str.length();
        if (i6 < 0) {
            i6 = 0;
        }
        int length2 = str.length();
        if (length > length2) {
            length = length2;
        }
        o9.h hVar = new o9.h(i6, length, 1);
        boolean z10 = str instanceof String;
        int i10 = hVar.f8653c;
        int i11 = hVar.f8652b;
        int i12 = hVar.f8651a;
        if (z10 && (str2 instanceof String)) {
            if ((i10 > 0 && i12 <= i11) || (i10 < 0 && i11 <= i12)) {
                while (!n.R(str2, str, 0, i12, str2.length(), z7)) {
                    if (i12 != i11) {
                        i12 += i10;
                    }
                }
                return i12;
            }
            return -1;
        }
        if ((i10 > 0 && i12 <= i11) || (i10 < 0 && i11 <= i12)) {
            while (true) {
                int length3 = str2.length();
                j9.i.f(str2, "<this>");
                j9.i.f(str, "other");
                boolean z11 = false;
                if (i12 >= 0 && str2.length() - length3 >= 0 && i12 <= str.length() - length3) {
                    int i13 = 0;
                    while (true) {
                        if (i13 >= length3) {
                            z11 = true;
                            break;
                        }
                        if (!o9.d.j(str2.charAt(0 + i13), str.charAt(i12 + i13), z7)) {
                            break;
                        }
                        i13++;
                    }
                }
                if (!z11) {
                    if (i12 == i11) {
                        break;
                    }
                    i12 += i10;
                } else {
                    break;
                }
            }
        }
        return -1;
    }

    public static int b0(CharSequence charSequence, char c5, int i6, boolean z7, int i10) {
        if ((i10 & 2) != 0) {
            i6 = 0;
        }
        if ((i10 & 4) != 0) {
            z7 = false;
        }
        j9.i.f(charSequence, "<this>");
        return (z7 || !(charSequence instanceof String)) ? d0(charSequence, new char[]{c5}, i6, z7) : ((String) charSequence).indexOf(c5, i6);
    }

    public static /* synthetic */ int c0(String str, String str2, int i6, boolean z7, int i10) {
        if ((i10 & 2) != 0) {
            i6 = 0;
        }
        if ((i10 & 4) != 0) {
            z7 = false;
        }
        return a0(str, i6, str2, z7);
    }

    public static final int d0(CharSequence charSequence, char[] cArr, int i6, boolean z7) {
        j9.i.f(charSequence, "<this>");
        if (!z7 && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(x8.i.K(cArr), i6);
        }
        if (i6 < 0) {
            i6 = 0;
        }
        int iZ = Z(charSequence);
        if (i6 > iZ) {
            return -1;
        }
        while (true) {
            char cCharAt = charSequence.charAt(i6);
            for (char c5 : cArr) {
                if (o9.d.j(c5, cCharAt, z7)) {
                    return i6;
                }
            }
            if (i6 == iZ) {
                return -1;
            }
            i6++;
        }
    }

    public static boolean e0(String str) {
        j9.i.f(str, "<this>");
        for (int i6 = 0; i6 < str.length(); i6++) {
            char cCharAt = str.charAt(i6);
            if (!Character.isWhitespace(cCharAt) && !Character.isSpaceChar(cCharAt)) {
                return false;
            }
        }
        return true;
    }

    public static int f0(CharSequence charSequence, char c5, int i6, int i10) {
        if ((i10 & 2) != 0) {
            i6 = Z(charSequence);
        }
        j9.i.f(charSequence, "<this>");
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(c5, i6);
        }
        char[] cArr = {c5};
        if (charSequence instanceof String) {
            return ((String) charSequence).lastIndexOf(x8.i.K(cArr), i6);
        }
        int iZ = Z(charSequence);
        if (i6 > iZ) {
            i6 = iZ;
        }
        while (-1 < i6) {
            if (o9.d.j(cArr[0], charSequence.charAt(i6), false)) {
                return i6;
            }
            i6--;
        }
        return -1;
    }

    public static String g0(String str, String str2) {
        j9.i.f(str, "<this>");
        j9.i.f(str2, "prefix");
        if (!i0(str, str2)) {
            return str;
        }
        String strSubstring = str.substring(str2.length());
        j9.i.e(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static List h0(String str, char[] cArr) {
        j9.i.f(str, "<this>");
        if (cArr.length == 1) {
            String strValueOf = String.valueOf(cArr[0]);
            int iA0 = a0(str, 0, strValueOf, false);
            if (iA0 == -1) {
                return a2.a.F(str.toString());
            }
            ArrayList arrayList = new ArrayList(10);
            int length = 0;
            do {
                arrayList.add(str.subSequence(length, iA0).toString());
                length = strValueOf.length() + iA0;
                iA0 = a0(str, length, strValueOf, false);
            } while (iA0 != -1);
            arrayList.add(str.subSequence(length, str.length()).toString());
            return arrayList;
        }
        q9.i iVar = new q9.i(new c(str, 0, 0, new o(cArr, false)));
        ArrayList arrayList2 = new ArrayList(x8.l.Q(iVar));
        Iterator it = iVar.iterator();
        while (true) {
            b bVar = (b) it;
            if (!bVar.hasNext()) {
                return arrayList2;
            }
            o9.h hVar = (o9.h) bVar.next();
            j9.i.f(hVar, SessionDescription.ATTR_RANGE);
            arrayList2.add(str.subSequence(hVar.f8651a, hVar.f8652b + 1).toString());
        }
    }

    public static boolean i0(String str, String str2) {
        j9.i.f(str, "<this>");
        j9.i.f(str2, "prefix");
        return n.V(str, str2, false);
    }

    public static String j0(String str, String str2) {
        j9.i.f(str2, TtmlNode.RUBY_DELIMITER);
        int iC0 = c0(str, str2, 0, false, 6);
        if (iC0 == -1) {
            return str;
        }
        String strSubstring = str.substring(str2.length() + iC0, str.length());
        j9.i.e(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String k0(char c5, String str, String str2) {
        j9.i.f(str2, "missingDelimiterValue");
        int iF0 = f0(str, c5, 0, 6);
        if (iF0 == -1) {
            return str2;
        }
        String strSubstring = str.substring(iF0 + 1, str.length());
        j9.i.e(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String l0(String str, char c5) {
        j9.i.f(str, "<this>");
        j9.i.f(str, "missingDelimiterValue");
        int iF0 = f0(str, c5, 0, 6);
        if (iF0 == -1) {
            return str;
        }
        String strSubstring = str.substring(0, iF0);
        j9.i.e(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static String m0(int i6, String str) {
        j9.i.f(str, "<this>");
        if (i6 < 0) {
            throw new IllegalArgumentException(q.f(i6, "Requested character count ", " is less than zero.").toString());
        }
        int length = str.length();
        if (i6 > length) {
            i6 = length;
        }
        String strSubstring = str.substring(0, i6);
        j9.i.e(strSubstring, "substring(...)");
        return strSubstring;
    }

    public static CharSequence n0(String str) {
        j9.i.f(str, "<this>");
        int length = str.length() - 1;
        int i6 = 0;
        boolean z7 = false;
        while (i6 <= length) {
            char cCharAt = str.charAt(!z7 ? i6 : length);
            boolean z10 = Character.isWhitespace(cCharAt) || Character.isSpaceChar(cCharAt);
            if (z7) {
                if (!z10) {
                    break;
                }
                length--;
            } else if (z10) {
                i6++;
            } else {
                z7 = true;
            }
        }
        return str.subSequence(i6, length + 1);
    }
}
