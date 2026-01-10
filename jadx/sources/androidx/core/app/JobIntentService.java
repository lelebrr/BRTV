package androidx.core.app;

import android.app.Service;
import android.content.ComponentName;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public abstract class JobIntentService extends Service {
    public static final HashMap f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    public m f1137a;

    /* renamed from: b, reason: collision with root package name */
    public i f1138b;

    /* renamed from: c, reason: collision with root package name */
    public h f1139c;
    public boolean d = false;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f1140e;

    public JobIntentService() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1140e = null;
        } else {
            this.f1140e = new ArrayList();
        }
    }

    public final void a(boolean z7) {
        if (this.f1139c == null) {
            this.f1139c = new h(this);
            i iVar = this.f1138b;
            if (iVar != null && z7) {
                synchronized (iVar) {
                    try {
                        if (!iVar.f1170c) {
                            iVar.f1170c = true;
                            iVar.f1169b.acquire(600000L);
                            iVar.f1168a.release();
                        }
                    } finally {
                    }
                }
            }
            this.f1139c.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    public abstract void b();

    public final void c() {
        ArrayList arrayList = this.f1140e;
        if (arrayList != null) {
            synchronized (arrayList) {
                try {
                    this.f1139c = null;
                    ArrayList arrayList2 = this.f1140e;
                    if (arrayList2 != null && arrayList2.size() > 0) {
                        a(false);
                    } else if (!this.d) {
                        this.f1138b.a();
                    }
                } finally {
                }
            }
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        m mVar = this.f1137a;
        if (mVar != null) {
            return mVar.getBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 26) {
            this.f1137a = new m(this);
            this.f1138b = null;
            return;
        }
        this.f1137a = null;
        ComponentName componentName = new ComponentName(this, getClass());
        HashMap map = f;
        i iVar = (i) map.get(componentName);
        if (iVar == null) {
            if (i6 >= 26) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            iVar = new i(this, componentName);
            map.put(componentName, iVar);
        }
        this.f1138b = iVar;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.f1140e;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.d = true;
                this.f1138b.a();
            }
        }
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i6, int i10) {
        if (this.f1140e == null) {
            return 2;
        }
        this.f1138b.b();
        synchronized (this.f1140e) {
            ArrayList arrayList = this.f1140e;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new j(this, intent, i10));
            a(true);
        }
        return 3;
    }
}
