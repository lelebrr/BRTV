package q8;

import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends i8.f {

    /* renamed from: b, reason: collision with root package name */
    public static final b f9324b;

    /* renamed from: c, reason: collision with root package name */
    public static final k f9325c;
    public static final int d;

    /* renamed from: e, reason: collision with root package name */
    public static final c f9326e;

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f9327a;

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        int iIntValue = Integer.getInteger("rx3.computation-threads", 0).intValue();
        if (iIntValue > 0 && iIntValue <= iAvailableProcessors) {
            iAvailableProcessors = iIntValue;
        }
        d = iAvailableProcessors;
        c cVar = new c(new k("RxComputationShutdown"));
        f9326e = cVar;
        cVar.a();
        k kVar = new k("RxComputationThreadPool", true, Math.max(1, Math.min(10, Integer.getInteger("rx3.computation-priority", 5).intValue())));
        f9325c = kVar;
        b bVar = new b(0, kVar);
        f9324b = bVar;
        for (c cVar2 : bVar.f9322b) {
            cVar2.a();
        }
    }

    public d() {
        AtomicReference atomicReference;
        k kVar = f9325c;
        b bVar = f9324b;
        this.f9327a = new AtomicReference(bVar);
        b bVar2 = new b(d, kVar);
        do {
            atomicReference = this.f9327a;
            if (atomicReference.compareAndSet(bVar, bVar2)) {
                return;
            }
        } while (atomicReference.get() == bVar);
        for (c cVar : bVar2.f9322b) {
            cVar.a();
        }
    }

    @Override // i8.f
    public final i8.e a() {
        c cVar;
        b bVar = (b) this.f9327a.get();
        int i6 = bVar.f9321a;
        if (i6 == 0) {
            cVar = f9326e;
        } else {
            long j10 = bVar.f9323c;
            bVar.f9323c = 1 + j10;
            cVar = bVar.f9322b[(int) (j10 % i6)];
        }
        return new a(cVar);
    }

    @Override // i8.f
    public final j8.b b(a3.c cVar, TimeUnit timeUnit) {
        c cVar2;
        b bVar = (b) this.f9327a.get();
        int i6 = bVar.f9321a;
        if (i6 == 0) {
            cVar2 = f9326e;
        } else {
            long j10 = bVar.f9323c;
            bVar.f9323c = 1 + j10;
            cVar2 = bVar.f9322b[(int) (j10 % i6)];
        }
        cVar2.getClass();
        l lVar = new l(cVar);
        try {
            Future futureSubmit = cVar2.f9344a.submit(lVar);
            while (true) {
                Future future = (Future) lVar.get();
                if (future == l.d) {
                    break;
                }
                if (future == l.f9349e) {
                    if (lVar.f9352c == Thread.currentThread()) {
                        futureSubmit.cancel(false);
                    } else {
                        futureSubmit.cancel(lVar.f9351b);
                    }
                } else if (!lVar.compareAndSet(future, futureSubmit)) {
                }
            }
            return lVar;
        } catch (RejectedExecutionException e5) {
            com.bumptech.glide.d.y(e5);
            return m8.b.f8275a;
        }
    }
}
