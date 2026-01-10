package androidx.core.app;

import android.app.job.JobParameters;
import android.app.job.JobWorkItem;
import android.content.Intent;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l implements k {

    /* renamed from: a, reason: collision with root package name */
    public final JobWorkItem f1182a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m f1183b;

    public l(m mVar, JobWorkItem jobWorkItem) {
        this.f1183b = mVar;
        this.f1182a = jobWorkItem;
    }

    @Override // androidx.core.app.k
    public final void a() {
        synchronized (this.f1183b.f1185b) {
            try {
                JobParameters jobParameters = this.f1183b.f1186c;
                if (jobParameters != null) {
                    jobParameters.completeWork(this.f1182a);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.core.app.k
    public final Intent getIntent() {
        return this.f1182a.getIntent();
    }
}
