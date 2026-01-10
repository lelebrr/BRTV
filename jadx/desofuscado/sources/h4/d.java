package h4;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.PersistableBundle;
import android.util.Base64;
import android.util.Log;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import com.lzy.okgo.model.Progress;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.Adler32;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7242a;

    /* renamed from: b, reason: collision with root package name */
    public final i4.d f7243b;

    /* renamed from: c, reason: collision with root package name */
    public final b f7244c;

    public d(Context context, i4.d dVar, b bVar) {
        this.f7242a = context;
        this.f7243b = dVar;
        this.f7244c = bVar;
    }

    public final void a(a4.j jVar, int i6, boolean z7) {
        Context context = this.f7242a;
        ComponentName componentName = new ComponentName(context, (Class<?>) JobInfoSchedulerService.class);
        JobScheduler jobScheduler = (JobScheduler) context.getSystemService("jobscheduler");
        Adler32 adler32 = new Adler32();
        adler32.update(context.getPackageName().getBytes(Charset.forName("UTF-8")));
        adler32.update(jVar.f129a.getBytes(Charset.forName("UTF-8")));
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        x3.c cVar = jVar.f131c;
        adler32.update(byteBufferAllocate.putInt(l4.a.a(cVar)).array());
        byte[] bArr = jVar.f130b;
        if (bArr != null) {
            adler32.update(bArr);
        }
        int value = (int) adler32.getValue();
        if (!z7) {
            Iterator<JobInfo> it = jobScheduler.getAllPendingJobs().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                JobInfo next = it.next();
                int i10 = next.getExtras().getInt("attemptNumber");
                if (next.getId() == value) {
                    if (i10 >= i6) {
                        o9.d.i("JobInfoScheduler", "Upload for context %s is already scheduled. Returning...", jVar);
                        return;
                    }
                }
            }
        }
        SQLiteDatabase sQLiteDatabaseA = ((i4.g) this.f7243b).a();
        String strValueOf = String.valueOf(l4.a.a(cVar));
        String str = jVar.f129a;
        Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{str, strValueOf});
        try {
            Long lValueOf = cursorRawQuery.moveToNext() ? Long.valueOf(cursorRawQuery.getLong(0)) : 0L;
            cursorRawQuery.close();
            long jLongValue = lValueOf.longValue();
            JobInfo.Builder builder = new JobInfo.Builder(value, componentName);
            b bVar = this.f7244c;
            Long l9 = lValueOf;
            builder.setMinimumLatency(bVar.a(cVar, jLongValue, i6));
            Set set = ((c) bVar.f7238b.get(cVar)).f7241c;
            if (set.contains(e.f7245a)) {
                builder.setRequiredNetworkType(2);
            } else {
                builder.setRequiredNetworkType(1);
            }
            if (set.contains(e.f7247c)) {
                builder.setRequiresCharging(true);
            }
            if (set.contains(e.f7246b)) {
                builder.setRequiresDeviceIdle(true);
            }
            PersistableBundle persistableBundle = new PersistableBundle();
            persistableBundle.putInt("attemptNumber", i6);
            persistableBundle.putString("backendName", str);
            persistableBundle.putInt(Progress.PRIORITY, l4.a.a(cVar));
            if (bArr != null) {
                persistableBundle.putString("extras", Base64.encodeToString(bArr, 0));
            }
            builder.setExtras(persistableBundle);
            Log.d("TransportRuntime.".concat("JobInfoScheduler"), String.format("Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d", jVar, Integer.valueOf(value), Long.valueOf(bVar.a(cVar, jLongValue, i6)), l9, Integer.valueOf(i6)));
            jobScheduler.schedule(builder.build());
        } catch (Throwable th) {
            cursorRawQuery.close();
            throw th;
        }
    }
}
