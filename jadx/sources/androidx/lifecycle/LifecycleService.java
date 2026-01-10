package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class LifecycleService extends Service implements w {

    /* renamed from: a, reason: collision with root package name */
    public final a1.b f1938a = new a1.b(this);

    @Override // androidx.lifecycle.w
    public final p f() {
        return (y) this.f1938a.f47b;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        j9.i.f(intent, "intent");
        this.f1938a.E(n.ON_START);
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        this.f1938a.E(n.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        n nVar = n.ON_STOP;
        a1.b bVar = this.f1938a;
        bVar.E(nVar);
        bVar.E(n.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onStart(Intent intent, int i6) {
        this.f1938a.E(n.ON_START);
        super.onStart(intent, i6);
    }
}
