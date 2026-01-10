package q8;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends i8.e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final e f9333b;

    /* renamed from: c, reason: collision with root package name */
    public final g f9334c;
    public final AtomicBoolean d = new AtomicBoolean();

    /* renamed from: a, reason: collision with root package name */
    public final j8.a f9332a = new j8.a(0);

    public f(e eVar) {
        g gVar;
        g gVar2;
        this.f9333b = eVar;
        if (eVar.f9330c.f7457b) {
            gVar2 = h.f;
        } else {
            while (true) {
                if (eVar.f9329b.isEmpty()) {
                    gVar = new g(eVar.f);
                    eVar.f9330c.b(gVar);
                    break;
                } else {
                    gVar = (g) eVar.f9329b.poll();
                    if (gVar != null) {
                        break;
                    }
                }
            }
            gVar2 = gVar;
        }
        this.f9334c = gVar2;
    }

    @Override // j8.b
    public final void a() {
        if (this.d.compareAndSet(false, true)) {
            this.f9332a.a();
            boolean z7 = h.f9339g;
            g gVar = this.f9334c;
            if (z7) {
                gVar.d(this, TimeUnit.NANOSECONDS, null);
                return;
            }
            e eVar = this.f9333b;
            eVar.getClass();
            gVar.f9335c = System.nanoTime() + eVar.f9328a;
            eVar.f9329b.offer(gVar);
        }
    }

    @Override // i8.e
    public final j8.b b(Runnable runnable, TimeUnit timeUnit) {
        return this.f9332a.f7457b ? m8.b.f8275a : this.f9334c.d(runnable, timeUnit, this.f9332a);
    }

    @Override // java.lang.Runnable
    public final void run() {
        e eVar = this.f9333b;
        eVar.getClass();
        long jNanoTime = System.nanoTime() + eVar.f9328a;
        g gVar = this.f9334c;
        gVar.f9335c = jNanoTime;
        eVar.f9329b.offer(gVar);
    }
}
