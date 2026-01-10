package androidx.appcompat.app;

import android.app.LocaleManager;
import android.os.LocaleList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class p {
    public static LocaleList a(Object obj) {
        return ((LocaleManager) obj).getApplicationLocales();
    }

    public static void b(Object obj, LocaleList localeList) {
        ((LocaleManager) obj).setApplicationLocales(localeList);
    }
}
