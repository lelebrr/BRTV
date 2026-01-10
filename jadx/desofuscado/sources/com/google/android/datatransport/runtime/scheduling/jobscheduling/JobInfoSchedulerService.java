package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import a1.b;
import a4.j;
import a4.t;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.util.Base64;
import androidx.appcompat.app.m0;
import com.lzy.okgo.model.Progress;
import h4.f;
import h4.i;
import l4.a;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class JobInfoSchedulerService extends JobService {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f3602a = 0;

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("backendName");
        String string2 = jobParameters.getExtras().getString("extras");
        int i6 = jobParameters.getExtras().getInt(Progress.PRIORITY);
        int i10 = jobParameters.getExtras().getInt("attemptNumber");
        t.b(getApplicationContext());
        b bVarA = j.a();
        bVarA.G(string);
        bVarA.d = a.b(i6);
        if (string2 != null) {
            bVarA.f48c = Base64.decode(string2, 0);
        }
        i iVar = t.a().d;
        j jVarH = bVarA.h();
        m0 m0Var = new m0(this, 13, jobParameters);
        iVar.getClass();
        iVar.f7260e.execute(new f(iVar, jVarH, i10, m0Var));
        return true;
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return true;
    }
}
