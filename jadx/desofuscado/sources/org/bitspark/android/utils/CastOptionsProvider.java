package org.bitspark.android.utils;

import android.content.Context;
import com.google.android.gms.cast.framework.CastOptions;
import com.nmmedit.protect.NativeUtil;
import java.util.List;

/* loaded from: classes.dex */
public class CastOptionsProvider {
    static {
        NativeUtil.classesInit0(42);
    }

    public native List<com.google.android.gms.internal.cast.j> getAdditionalSessionProviders(Context context);

    public native CastOptions getCastOptions(Context context);
}
