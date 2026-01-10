package j0;

import android.os.Build;
import androidx.media3.common.PlaybackException;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b {
    static {
        int i6 = Build.VERSION.SDK_INT;
        a aVar = a.f7414a;
        if (i6 >= 30) {
            aVar.a(30);
        }
        if (i6 >= 30) {
            aVar.a(31);
        }
        if (i6 >= 30) {
            aVar.a(33);
        }
        if (i6 >= 30) {
            aVar.a(PlaybackException.CUSTOM_ERROR_CODE_BASE);
        }
    }

    public static final boolean a() {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 < 33) {
            if (i6 >= 32) {
                String str = Build.VERSION.CODENAME;
                j9.i.e(str, "CODENAME");
                if (!"REL".equals(str)) {
                    Locale locale = Locale.ROOT;
                    String upperCase = str.toUpperCase(locale);
                    j9.i.e(upperCase, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                    String upperCase2 = "Tiramisu".toUpperCase(locale);
                    j9.i.e(upperCase2, "this as java.lang.String).toUpperCase(Locale.ROOT)");
                    if (upperCase.compareTo(upperCase2) >= 0) {
                    }
                }
            }
            return false;
        }
        return true;
    }
}
