package z9;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.leanback.widget.o;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import t9.u;
import x9.q;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b implements Executor, Closeable {

    /* renamed from: h, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f11682h = AtomicLongFieldUpdater.newUpdater(b.class, "parkedWorkersStack");

    /* renamed from: i, reason: collision with root package name */
    public static final AtomicLongFieldUpdater f11683i = AtomicLongFieldUpdater.newUpdater(b.class, "controlState");

    /* renamed from: j, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f11684j = AtomicIntegerFieldUpdater.newUpdater(b.class, "_isTerminated");

    /* renamed from: k, reason: collision with root package name */
    public static final u7.b f11685k = new u7.b("NOT_IN_STACK", 1);
    private volatile int _isTerminated;

    /* renamed from: a, reason: collision with root package name */
    public final int f11686a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11687b;

    /* renamed from: c, reason: collision with root package name */
    public final long f11688c;
    private volatile long controlState;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final e f11689e;
    public final e f;

    /* renamed from: g, reason: collision with root package name */
    public final q f11690g;
    private volatile long parkedWorkersStack;

    public b(int i6, int i10, long j10, String str) {
        this.f11686a = i6;
        this.f11687b = i10;
        this.f11688c = j10;
        this.d = str;
        if (i6 < 1) {
            throw new IllegalArgumentException(ea.q.f(i6, "Core pool size ", " should be at least 1").toString());
        }
        if (i10 < i6) {
            throw new IllegalArgumentException(a.e.m(i10, i6, "Max pool size ", " should be greater than or equals to core pool size ").toString());
        }
        if (i10 > 2097150) {
            throw new IllegalArgumentException(ea.q.f(i10, "Max pool size ", " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j10 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
        }
        this.f11689e = new e();
        this.f = new e();
        this.f11690g = new q((i6 + 1) * 2);
        this.controlState = i6 << 42;
        this._isTerminated = 0;
    }

    public final int a() {
        synchronized (this.f11690g) {
            try {
                if (f11684j.get(this) != 0) {
                    return -1;
                }
                AtomicLongFieldUpdater atomicLongFieldUpdater = f11683i;
                long j10 = atomicLongFieldUpdater.get(this);
                int i6 = (int) (j10 & 2097151);
                int i10 = i6 - ((int) ((j10 & 4398044413952L) >> 21));
                if (i10 < 0) {
                    i10 = 0;
                }
                if (i10 >= this.f11686a) {
                    return 0;
                }
                if (i6 >= this.f11687b) {
                    return 0;
                }
                int i11 = ((int) (atomicLongFieldUpdater.get(this) & 2097151)) + 1;
                if (i11 <= 0 || this.f11690g.b(i11) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                a aVar = new a(this, i11);
                this.f11690g.c(i11, aVar);
                if (i11 != ((int) (2097151 & atomicLongFieldUpdater.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i12 = i10 + 1;
                aVar.start();
                return i12;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void b(Runnable runnable, o oVar, boolean z7) {
        h iVar;
        int i6;
        j.f.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof h) {
            iVar = (h) runnable;
            iVar.f11694a = jNanoTime;
            iVar.f11695b = oVar;
        } else {
            iVar = new i(runnable, jNanoTime, oVar);
        }
        boolean z10 = false;
        boolean z11 = iVar.f11695b.f1866a == 1;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f11683i;
        long jAddAndGet = z11 ? atomicLongFieldUpdater.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) : 0L;
        Thread threadCurrentThread = Thread.currentThread();
        a aVar = threadCurrentThread instanceof a ? (a) threadCurrentThread : null;
        if (aVar == null || !j9.i.a(aVar.f11681h, this)) {
            aVar = null;
        }
        if (aVar != null && (i6 = aVar.f11678c) != 5 && (iVar.f11695b.f1866a != 0 || i6 != 2)) {
            aVar.f11680g = true;
            l lVar = aVar.f11676a;
            if (z7) {
                iVar = lVar.a(iVar);
            } else {
                lVar.getClass();
                h hVar = (h) l.f11704b.getAndSet(lVar, iVar);
                iVar = hVar == null ? null : lVar.a(hVar);
            }
        }
        if (iVar != null) {
            if (!(iVar.f11695b.f1866a == 1 ? this.f.a(iVar) : this.f11689e.a(iVar))) {
                throw new RejectedExecutionException(a.e.t(new StringBuilder(), this.d, " was terminated"));
            }
        }
        if (z7 && aVar != null) {
            z10 = true;
        }
        if (z11) {
            if (z10 || e() || d(jAddAndGet)) {
                return;
            }
            e();
            return;
        }
        if (z10 || e() || d(atomicLongFieldUpdater.get(this))) {
            return;
        }
        e();
    }

    public final void c(a aVar, int i6, int i10) {
        while (true) {
            long j10 = f11682h.get(this);
            int iB = (int) (2097151 & j10);
            long j11 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j10) & (-2097152);
            if (iB == i6) {
                if (i10 == 0) {
                    Object objC = aVar.c();
                    while (true) {
                        if (objC == f11685k) {
                            iB = -1;
                            break;
                        }
                        if (objC == null) {
                            iB = 0;
                            break;
                        }
                        a aVar2 = (a) objC;
                        iB = aVar2.b();
                        if (iB != 0) {
                            break;
                        } else {
                            objC = aVar2.c();
                        }
                    }
                } else {
                    iB = i10;
                }
            }
            if (iB >= 0) {
                if (f11682h.compareAndSet(this, j10, j11 | iB)) {
                    return;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0089  */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void close() throws java.lang.InterruptedException {
        /*
            r8 = this;
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = z9.b.f11684j
            r1 = 0
            r2 = 1
            boolean r0 = r0.compareAndSet(r8, r1, r2)
            if (r0 != 0) goto Lc
            goto Laf
        Lc:
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            boolean r1 = r0 instanceof z9.a
            r3 = 0
            if (r1 == 0) goto L18
            z9.a r0 = (z9.a) r0
            goto L19
        L18:
            r0 = r3
        L19:
            if (r0 == 0) goto L24
            z9.b r1 = r0.f11681h
            boolean r1 = j9.i.a(r1, r8)
            if (r1 == 0) goto L24
            goto L25
        L24:
            r0 = r3
        L25:
            x9.q r1 = r8.f11690g
            monitor-enter(r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = z9.b.f11683i     // Catch: java.lang.Throwable -> Lc1
            long r4 = r4.get(r8)     // Catch: java.lang.Throwable -> Lc1
            r6 = 2097151(0x1fffff, double:1.0361303E-317)
            long r4 = r4 & r6
            int r5 = (int) r4
            monitor-exit(r1)
            if (r2 > r5) goto L77
            r1 = 1
        L37:
            x9.q r4 = r8.f11690g
            java.lang.Object r4 = r4.b(r1)
            j9.i.c(r4)
            z9.a r4 = (z9.a) r4
            if (r4 == r0) goto L72
        L44:
            boolean r6 = r4.isAlive()
            if (r6 == 0) goto L53
            java.util.concurrent.locks.LockSupport.unpark(r4)
            r6 = 10000(0x2710, double:4.9407E-320)
            r4.join(r6)
            goto L44
        L53:
            z9.l r4 = r4.f11676a
            z9.e r6 = r8.f
            r4.getClass()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r7 = z9.l.f11704b
            java.lang.Object r7 = r7.getAndSet(r4, r3)
            z9.h r7 = (z9.h) r7
            if (r7 == 0) goto L67
            r6.a(r7)
        L67:
            z9.h r7 = r4.b()
            if (r7 != 0) goto L6e
            goto L72
        L6e:
            r6.a(r7)
            goto L67
        L72:
            if (r1 == r5) goto L77
            int r1 = r1 + 1
            goto L37
        L77:
            z9.e r1 = r8.f
            r1.b()
            z9.e r1 = r8.f11689e
            r1.b()
        L81:
            if (r0 == 0) goto L89
            z9.h r1 = r0.a(r2)
            if (r1 != 0) goto Lb0
        L89:
            z9.e r1 = r8.f11689e
            java.lang.Object r1 = r1.d()
            z9.h r1 = (z9.h) r1
            if (r1 != 0) goto Lb0
            z9.e r1 = r8.f
            java.lang.Object r1 = r1.d()
            z9.h r1 = (z9.h) r1
            if (r1 != 0) goto Lb0
            if (r0 == 0) goto La3
            r1 = 5
            r0.h(r1)
        La3:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = z9.b.f11682h
            r1 = 0
            r0.set(r8, r1)
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = z9.b.f11683i
            r0.set(r8, r1)
        Laf:
            return
        Lb0:
            r1.run()     // Catch: java.lang.Throwable -> Lb4
            goto L81
        Lb4:
            r1 = move-exception
            java.lang.Thread r3 = java.lang.Thread.currentThread()
            java.lang.Thread$UncaughtExceptionHandler r4 = r3.getUncaughtExceptionHandler()
            r4.uncaughtException(r3, r1)
            goto L81
        Lc1:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: z9.b.close():void");
    }

    public final boolean d(long j10) {
        int i6 = ((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21));
        if (i6 < 0) {
            i6 = 0;
        }
        int i10 = this.f11686a;
        if (i6 < i10) {
            int iA = a();
            if (iA == 1 && i10 > 1) {
                a();
            }
            if (iA > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean e() {
        u7.b bVar;
        int iB;
        while (true) {
            AtomicLongFieldUpdater atomicLongFieldUpdater = f11682h;
            long j10 = atomicLongFieldUpdater.get(this);
            a aVar = (a) this.f11690g.b((int) (2097151 & j10));
            if (aVar == null) {
                aVar = null;
            } else {
                long j11 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j10) & (-2097152);
                Object objC = aVar.c();
                while (true) {
                    bVar = f11685k;
                    if (objC == bVar) {
                        iB = -1;
                        break;
                    }
                    if (objC == null) {
                        iB = 0;
                        break;
                    }
                    a aVar2 = (a) objC;
                    iB = aVar2.b();
                    if (iB != 0) {
                        break;
                    }
                    objC = aVar2.c();
                }
                if (iB >= 0 && atomicLongFieldUpdater.compareAndSet(this, j10, j11 | iB)) {
                    aVar.g(bVar);
                }
            }
            if (aVar == null) {
                return false;
            }
            if (a.f11675i.compareAndSet(aVar, -1, 0)) {
                LockSupport.unpark(aVar);
                return true;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable, j.f11701g, false);
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q qVar = this.f11690g;
        int iA = qVar.a();
        int i6 = 0;
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 1; i14 < iA; i14++) {
            a aVar = (a) qVar.b(i14);
            if (aVar != null) {
                l lVar = aVar.f11676a;
                lVar.getClass();
                int i15 = l.f11704b.get(lVar) != null ? (l.f11705c.get(lVar) - l.d.get(lVar)) + 1 : l.f11705c.get(lVar) - l.d.get(lVar);
                int iA2 = u.h.a(aVar.f11678c);
                if (iA2 == 0) {
                    i6++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i15);
                    sb.append('c');
                    arrayList.add(sb.toString());
                } else if (iA2 == 1) {
                    i10++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i15);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (iA2 == 2) {
                    i11++;
                } else if (iA2 == 3) {
                    i12++;
                    if (i15 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i15);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else if (iA2 == 4) {
                    i13++;
                }
            }
        }
        long j10 = f11683i.get(this);
        StringBuilder sb4 = new StringBuilder();
        sb4.append(this.d);
        sb4.append('@');
        sb4.append(u.f(this));
        sb4.append("[Pool Size {core = ");
        int i16 = this.f11686a;
        sb4.append(i16);
        sb4.append(", max = ");
        sb4.append(this.f11687b);
        sb4.append("}, Worker States {CPU = ");
        sb4.append(i6);
        sb4.append(", blocking = ");
        sb4.append(i10);
        sb4.append(", parked = ");
        sb4.append(i11);
        sb4.append(", dormant = ");
        sb4.append(i12);
        sb4.append(", terminated = ");
        sb4.append(i13);
        sb4.append("}, running workers queues = ");
        sb4.append(arrayList);
        sb4.append(", global CPU queue size = ");
        sb4.append(this.f11689e.c());
        sb4.append(", global blocking queue size = ");
        sb4.append(this.f.c());
        sb4.append(", Control State {created workers= ");
        sb4.append((int) (2097151 & j10));
        sb4.append(", blocking tasks = ");
        sb4.append((int) ((4398044413952L & j10) >> 21));
        sb4.append(", CPUs acquired = ");
        sb4.append(i16 - ((int) ((j10 & 9223367638808264704L) >> 42)));
        sb4.append("}]");
        return sb4.toString();
    }
}
