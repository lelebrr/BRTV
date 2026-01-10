package k3;

import android.content.IntentFilter;
import android.util.Log;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7725a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f7726b;

    public /* synthetic */ r(s sVar, int i6) {
        this.f7725a = i6;
        this.f7726b = sVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7725a) {
            case 0:
                s sVar = this.f7726b;
                sVar.d = sVar.c();
                try {
                    s sVar2 = this.f7726b;
                    sVar2.f7728a.registerReceiver(sVar2.f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    this.f7726b.f7731e = true;
                    break;
                } catch (SecurityException e5) {
                    if (Log.isLoggable("ConnectivityMonitor", 5)) {
                        Log.w("ConnectivityMonitor", "Failed to register", e5);
                    }
                    this.f7726b.f7731e = false;
                    return;
                }
            case 1:
                if (this.f7726b.f7731e) {
                    this.f7726b.f7731e = false;
                    s sVar3 = this.f7726b;
                    sVar3.f7728a.unregisterReceiver(sVar3.f);
                    break;
                }
                break;
            default:
                boolean z7 = this.f7726b.d;
                s sVar4 = this.f7726b;
                sVar4.d = sVar4.c();
                if (z7 != this.f7726b.d) {
                    if (Log.isLoggable("ConnectivityMonitor", 3)) {
                        Log.d("ConnectivityMonitor", "connectivity changed, isConnected: " + this.f7726b.d);
                    }
                    s sVar5 = this.f7726b;
                    r3.n.f().post(new q(1, sVar5, sVar5.d));
                    break;
                }
                break;
        }
    }
}
