package j0;

import android.os.Build;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: b, reason: collision with root package name */
    public static final i f7419b = a(new Locale[0]);

    /* renamed from: a, reason: collision with root package name */
    public final k f7420a;

    public i(k kVar) {
        this.f7420a = kVar;
    }

    public static i a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new i(new l(h.a(localeArr))) : new i(new j(localeArr));
    }

    public static i b(String str) {
        if (str == null || str.isEmpty()) {
            return f7419b;
        }
        String[] strArrSplit = str.split(",", -1);
        int length = strArrSplit.length;
        Locale[] localeArr = new Locale[length];
        for (int i6 = 0; i6 < length; i6++) {
            localeArr[i6] = g.a(strArrSplit[i6]);
        }
        return a(localeArr);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof i) {
            if (this.f7420a.equals(((i) obj).f7420a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f7420a.hashCode();
    }

    public final String toString() {
        return this.f7420a.toString();
    }
}
