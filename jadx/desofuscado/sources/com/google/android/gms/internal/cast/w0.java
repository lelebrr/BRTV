package com.google.android.gms.internal.cast;

import android.os.Build;
import androidx.media3.common.C;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class w0 {

    /* renamed from: a, reason: collision with root package name */
    public static final int f4448a;

    static {
        f4448a = Build.VERSION.SDK_INT >= 23 ? C.BUFFER_FLAG_NOT_DEPENDED_ON : 0;
    }
}
