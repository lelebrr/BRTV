package q8;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends i8.f {

    /* renamed from: b, reason: collision with root package name */
    public static final k f9336b;

    /* renamed from: c, reason: collision with root package name */
    public static final k f9337c;
    public static final g f;

    /* renamed from: g, reason: collision with root package name */
    public static final boolean f9339g;

    /* renamed from: h, reason: collision with root package name */
    public static final e f9340h;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f9341a;

    /* renamed from: e, reason: collision with root package name */
    public static final TimeUnit f9338e = TimeUnit.SECONDS;
    public static final long d = Long.getLong("rx3.io-keep-alive-time", 60).longValue();

    static {
        g gVar = new g(new k("RxCachedThreadSchedulerShutdown"));
        f = gVar;
        gVar.a();
        int iMax = Math.max(1, Math.min(10, Integer.getInteger("rx3.io-priority", 5).intValue()));
        k kVar = new k("RxCachedThreadScheduler", false, iMax);
        f9336b = kVar;
        f9337c = new k("RxCachedWorkerPoolEvictor", false, iMax);
        f9339g = Boolean.getBoolean("rx3.io-scheduled-release");
        e eVar = new e(0L, null, kVar);
        f9340h = eVar;
        eVar.f9330c.a();
        ScheduledFuture scheduledFuture = eVar.f9331e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = eVar.d;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    public h() {
        AtomicReference atomicReference;
        k kVar = f9336b;
        e eVar = f9340h;
        this.f9341a = new AtomicReference(eVar);
        e eVar2 = new e(d, f9338e, kVar);
        do {
            atomicReference = this.f9341a;
            if (atomicReference.compareAndSet(eVar, eVar2)) {
                return;
            }
        } while (atomicReference.get() == eVar);
        eVar2.f9330c.a();
        ScheduledFuture scheduledFuture = eVar2.f9331e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
        ScheduledExecutorService scheduledExecutorService = eVar2.d;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdownNow();
        }
    }

    @Override // i8.f
    public final i8.e a() {
        return new f((e) this.f9341a.get());
    }
}
