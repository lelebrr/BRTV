package k3;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.util.Log;
import androidx.appcompat.app.b0;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s implements o {

    /* renamed from: g, reason: collision with root package name */
    public static final Executor f7727g = AsyncTask.SERIAL_EXECUTOR;

    /* renamed from: a, reason: collision with root package name */
    public final Context f7728a;

    /* renamed from: b, reason: collision with root package name */
    public final n f7729b;

    /* renamed from: c, reason: collision with root package name */
    public final b.a f7730c;
    public volatile boolean d;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f7731e;
    public final b0 f = new b0(2, this);

    public s(Context context, b.a aVar, n nVar) {
        this.f7728a = context.getApplicationContext();
        this.f7730c = aVar;
        this.f7729b = nVar;
    }

    @Override // k3.o
    public final void a() {
        f7727g.execute(new r(this, 1));
    }

    @Override // k3.o
    public final boolean b() {
        f7727g.execute(new r(this, 0));
        return true;
    }

    public final boolean c() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f7730c.get()).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (RuntimeException e5) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e5);
            }
            return true;
        }
    }
}
