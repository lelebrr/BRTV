package androidx.appcompat.app;

import android.content.res.Configuration;
import android.os.LocaleList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class w {
    public static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
        LocaleList locales = configuration.getLocales();
        LocaleList locales2 = configuration2.getLocales();
        if (locales.equals(locales2)) {
            return;
        }
        configuration3.setLocales(locales2);
        configuration3.locale = configuration2.locale;
    }

    public static j0.i b(Configuration configuration) {
        return j0.i.b(configuration.getLocales().toLanguageTags());
    }

    public static void c(j0.i iVar) {
        LocaleList.setDefault(LocaleList.forLanguageTags(iVar.f7420a.a()));
    }

    public static void d(Configuration configuration, j0.i iVar) {
        configuration.setLocales(LocaleList.forLanguageTags(iVar.f7420a.a()));
    }
}
