package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import a1.b;
import a4.j;
import a4.t;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import com.lzy.okgo.model.Progress;
import h4.f;
import h4.i;
import l4.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3601a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int iIntValue = Integer.valueOf(intent.getData().getQueryParameter(Progress.PRIORITY)).intValue();
        int i6 = intent.getExtras().getInt("attemptNumber");
        t.b(context);
        b bVarA = j.a();
        bVarA.G(queryParameter);
        bVarA.d = a.b(iIntValue);
        if (queryParameter2 != null) {
            bVarA.f48c = Base64.decode(queryParameter2, 0);
        }
        i iVar = t.a().d;
        j jVarH = bVarA.h();
        h4.a aVar = new h4.a();
        iVar.getClass();
        iVar.f7260e.execute(new f(iVar, jVarH, i6, aVar));
    }
}
