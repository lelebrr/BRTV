package j0;

import android.content.res.Configuration;
import android.os.LocaleList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class f {
    public static LocaleList a(Configuration configuration) {
        return configuration.getLocales();
    }

    public static void b(Configuration configuration, i iVar) {
        configuration.setLocales((LocaleList) iVar.f7420a.b());
    }
}
