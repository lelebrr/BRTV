package androidx.core.app;

import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends JobServiceEngine {

    /* renamed from: a, reason: collision with root package name */
    public final JobIntentService f1184a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f1185b;

    /* renamed from: c, reason: collision with root package name */
    public JobParameters f1186c;

    public m(JobIntentService jobIntentService) {
        super(jobIntentService);
        this.f1185b = new Object();
        this.f1184a = jobIntentService;
    }

    public final l a() {
        synchronized (this.f1185b) {
            try {
                JobParameters jobParameters = this.f1186c;
                if (jobParameters == null) {
                    return null;
                }
                JobWorkItem jobWorkItemDequeueWork = jobParameters.dequeueWork();
                if (jobWorkItemDequeueWork == null) {
                    return null;
                }
                jobWorkItemDequeueWork.getIntent().setExtrasClassLoader(this.f1184a.getClassLoader());
                return new l(this, jobWorkItemDequeueWork);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.app.job.JobServiceEngine
    public final boolean onStartJob(JobParameters jobParameters) {
        this.f1186c = jobParameters;
        this.f1184a.a(false);
        return true;
    }

    @Override // android.app.job.JobServiceEngine
    public final boolean onStopJob(JobParameters jobParameters) {
        h hVar = this.f1184a.f1139c;
        if (hVar != null) {
            hVar.cancel(false);
        }
        synchronized (this.f1185b) {
            this.f1186c = null;
        }
        return true;
    }
}
