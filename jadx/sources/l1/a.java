package l1;

import android.os.Looper;
import com.google.android.gms.internal.cast.x0;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a implements Runnable {
    public static x0 d;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f7943a = new AtomicBoolean();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f7944b = new AtomicBoolean();

    /* renamed from: c, reason: collision with root package name */
    public final CountDownLatch f7945c;

    static {
        l.b bVar = new l.b(1);
        new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(10), bVar);
    }

    public a(ha.b bVar) {
        new c(this, new b(0, this));
        this.f7945c = new CountDownLatch(1);
    }

    public final void a(Object obj) {
        x0 x0Var;
        boolean z7 = false;
        synchronized (a.class) {
            try {
                if (d == null) {
                    d = new x0(Looper.getMainLooper(), 2, z7);
                }
                x0Var = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        x0Var.obtainMessage(1, new d(this, obj)).sendToTarget();
    }

    @Override // java.lang.Runnable
    public final void run() {
        throw null;
    }
}
