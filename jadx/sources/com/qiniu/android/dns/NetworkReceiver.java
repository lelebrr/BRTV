package com.qiniu.android.dns;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class NetworkReceiver extends BroadcastReceiver {
    static {
        Uri.parse("content://telephony/carriers/preferapn");
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
    }
}
