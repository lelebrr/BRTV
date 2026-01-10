package org.bitspark.android.utils;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import com.nmmedit.protect.NativeUtil;
import java.util.Locale;

/* loaded from: classes.dex */
public class BSContextWrapper extends ContextWrapper {
    static {
        NativeUtil.classesInit0(24);
    }

    public BSContextWrapper(Context context) {
        super(context);
    }

    @TargetApi(24)
    public static native Locale getSystemLocale(Configuration configuration);

    public static native Locale getSystemLocaleLegacy(Configuration configuration);

    public static native void setSystemLocaleLegacy(Configuration configuration, Locale locale);

    public static native Context wrap(Context context, String str);
}
