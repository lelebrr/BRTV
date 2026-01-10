package j0;

import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final Locale[] f7418a = {new Locale("en", "XA"), new Locale("ar", "XB")};

    public static Locale a(String str) {
        return Locale.forLanguageTag(str);
    }

    public static boolean b(Locale locale, Locale locale2) {
        if (locale.equals(locale2)) {
            return true;
        }
        if (!locale.getLanguage().equals(locale2.getLanguage())) {
            return false;
        }
        Locale[] localeArr = f7418a;
        int length = localeArr.length;
        int i6 = 0;
        while (true) {
            if (i6 >= length) {
                for (Locale locale3 : localeArr) {
                    if (!locale3.equals(locale2)) {
                    }
                }
                String strA = l0.e.a(locale);
                if (!strA.isEmpty()) {
                    return strA.equals(l0.e.a(locale2));
                }
                String country = locale.getCountry();
                return country.isEmpty() || country.equals(locale2.getCountry());
            }
            if (localeArr[i6].equals(locale)) {
                break;
            }
            i6++;
        }
        return false;
    }
}
