package j0;

import ea.q;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements k {

    /* renamed from: c, reason: collision with root package name */
    public static final Locale[] f7421c = new Locale[0];

    /* renamed from: a, reason: collision with root package name */
    public final Locale[] f7422a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7423b;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        String[] strArrSplit = "en-Latn".split("-", -1);
        if (strArrSplit.length > 2) {
            new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
        } else if (strArrSplit.length > 1) {
            new Locale(strArrSplit[0], strArrSplit[1]);
        } else {
            if (strArrSplit.length != 1) {
                throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
            }
            new Locale(strArrSplit[0]);
        }
    }

    public j(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.f7422a = f7421c;
            this.f7423b = "";
            return;
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        for (int i6 = 0; i6 < localeArr.length; i6++) {
            Locale locale = localeArr[i6];
            if (locale == null) {
                throw new NullPointerException(q.f(i6, "list[", "] is null"));
            }
            if (!hashSet.contains(locale)) {
                Locale locale2 = (Locale) locale.clone();
                arrayList.add(locale2);
                sb.append(locale2.getLanguage());
                String country = locale2.getCountry();
                if (country != null && !country.isEmpty()) {
                    sb.append('-');
                    sb.append(locale2.getCountry());
                }
                if (i6 < localeArr.length - 1) {
                    sb.append(',');
                }
                hashSet.add(locale2);
            }
        }
        this.f7422a = (Locale[]) arrayList.toArray(new Locale[0]);
        this.f7423b = sb.toString();
    }

    @Override // j0.k
    public final String a() {
        return this.f7423b;
    }

    @Override // j0.k
    public final Object b() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        Locale[] localeArr = ((j) obj).f7422a;
        Locale[] localeArr2 = this.f7422a;
        if (localeArr2.length != localeArr.length) {
            return false;
        }
        for (int i6 = 0; i6 < localeArr2.length; i6++) {
            if (!localeArr2[i6].equals(localeArr[i6])) {
                return false;
            }
        }
        return true;
    }

    @Override // j0.k
    public final Locale get(int i6) {
        if (i6 >= 0) {
            Locale[] localeArr = this.f7422a;
            if (i6 < localeArr.length) {
                return localeArr[i6];
            }
        }
        return null;
    }

    public final int hashCode() {
        int iHashCode = 1;
        for (Locale locale : this.f7422a) {
            iHashCode = (iHashCode * 31) + locale.hashCode();
        }
        return iHashCode;
    }

    @Override // j0.k
    public final boolean isEmpty() {
        return this.f7422a.length == 0;
    }

    @Override // j0.k
    public final int size() {
        return this.f7422a.length;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        int i6 = 0;
        while (true) {
            Locale[] localeArr = this.f7422a;
            if (i6 >= localeArr.length) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(localeArr[i6]);
            if (i6 < localeArr.length - 1) {
                sb.append(',');
            }
            i6++;
        }
    }
}
