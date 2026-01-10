package androidx.appcompat.widget;

import android.os.LocaleList;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class u0 {
    public static LocaleList a(String str) {
        return LocaleList.forLanguageTags(str);
    }

    public static void b(TextView textView, LocaleList localeList) {
        textView.setTextLocales(localeList);
    }
}
