package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import l6.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class zabx extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public Context f3939a;

    /* renamed from: b, reason: collision with root package name */
    public final h f3940b;

    public zabx(h hVar) {
        this.f3940b = hVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        if ("com.google.android.gms".equals(data != null ? data.getSchemeSpecificPart() : null)) {
            ((s4.h) this.f3940b.f8017c).getClass();
            throw null;
        }
    }
}
