package p7;

import java.util.TimeZone;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final TimeZone f8912a = TimeZone.getTimeZone("UTC");

    public static boolean a(char c5, String str, int i6) {
        return i6 < str.length() && str.charAt(i6) == c5;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0200  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.util.Date b(java.lang.String r18, java.text.ParsePosition r19) throws java.text.ParseException {
        /*
            Method dump skipped, instructions count: 580
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: p7.a.b(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    public static int c(int i6, int i10, String str) {
        int i11;
        int i12;
        if (i6 < 0 || i10 > str.length() || i6 > i10) {
            throw new NumberFormatException(str);
        }
        if (i6 < i10) {
            i12 = i6 + 1;
            int iDigit = Character.digit(str.charAt(i6), 10);
            if (iDigit < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i6, i10));
            }
            i11 = -iDigit;
        } else {
            i11 = 0;
            i12 = i6;
        }
        while (i12 < i10) {
            int i13 = i12 + 1;
            int iDigit2 = Character.digit(str.charAt(i12), 10);
            if (iDigit2 < 0) {
                throw new NumberFormatException("Invalid number: " + str.substring(i6, i10));
            }
            i11 = (i11 * 10) - iDigit2;
            i12 = i13;
        }
        return -i11;
    }
}
