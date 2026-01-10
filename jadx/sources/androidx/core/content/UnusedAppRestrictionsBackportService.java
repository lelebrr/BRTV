package androidx.core.content;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import d0.h;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class UnusedAppRestrictionsBackportService extends Service {

    /* renamed from: a, reason: collision with root package name */
    public final h f1251a = new h(this);

    public abstract void a();

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f1251a;
    }
}
