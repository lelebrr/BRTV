package org.bitspark.android.appbrowser;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.nmmedit.protect.NativeUtil;

/* loaded from: classes.dex */
public class PackageIntentReceiver extends BroadcastReceiver {
    static {
        NativeUtil.classesInit0(59);
    }

    @Override // android.content.BroadcastReceiver
    public final native void onReceive(Context context, Intent intent);
}
