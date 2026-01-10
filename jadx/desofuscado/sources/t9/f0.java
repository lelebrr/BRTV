package t9;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class f0 extends g0 implements y {
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(f0.class, Object.class, "_queue");

    /* renamed from: g, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f10188g = AtomicReferenceFieldUpdater.newUpdater(f0.class, Object.class, "_delayed");

    /* renamed from: h, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f10189h = AtomicIntegerFieldUpdater.newUpdater(f0.class, "_isCompleted");
    private volatile Object _delayed;
    private volatile int _isCompleted = 0;
    private volatile Object _queue;

    @Override // t9.p
    public final void d(a9.i iVar, Runnable runnable) {
        l(runnable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004a, code lost:
    
        t9.v.f10235i.l(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:?, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void l(java.lang.Runnable r6) {
        /*
            r5 = this;
        L0:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = t9.f0.f
            java.lang.Object r1 = r0.get(r5)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r2 = t9.f0.f10189h
            int r2 = r2.get(r5)
            if (r2 == 0) goto Lf
            goto L4a
        Lf:
            if (r1 != 0) goto L20
        L11:
            r1 = 0
            boolean r1 = r0.compareAndSet(r5, r1, r6)
            if (r1 == 0) goto L19
            goto L66
        L19:
            java.lang.Object r1 = r0.get(r5)
            if (r1 == 0) goto L11
            goto L0
        L20:
            boolean r2 = r1 instanceof x9.m
            r3 = 1
            if (r2 == 0) goto L46
            r2 = r1
            x9.m r2 = (x9.m) r2
            int r4 = r2.a(r6)
            if (r4 == 0) goto L66
            if (r4 == r3) goto L34
            r0 = 2
            if (r4 == r0) goto L4a
            goto L0
        L34:
            x9.m r2 = r2.c()
        L38:
            boolean r3 = r0.compareAndSet(r5, r1, r2)
            if (r3 == 0) goto L3f
            goto L0
        L3f:
            java.lang.Object r3 = r0.get(r5)
            if (r3 == r1) goto L38
            goto L0
        L46:
            u7.b r2 = t9.u.f10229b
            if (r1 != r2) goto L50
        L4a:
            t9.v r0 = t9.v.f10235i
            r0.l(r6)
            goto L73
        L50:
            x9.m r2 = new x9.m
            r4 = 8
            r2.<init>(r4, r3)
            r3 = r1
            java.lang.Runnable r3 = (java.lang.Runnable) r3
            r2.a(r3)
            r2.a(r6)
        L60:
            boolean r3 = r0.compareAndSet(r5, r1, r2)
            if (r3 == 0) goto L74
        L66:
            java.lang.Thread r6 = r5.i()
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            if (r0 == r6) goto L73
            java.util.concurrent.locks.LockSupport.unpark(r6)
        L73:
            return
        L74:
            java.lang.Object r3 = r0.get(r5)
            if (r3 == r1) goto L60
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: t9.f0.l(java.lang.Runnable):void");
    }

    public final long m() {
        x8.h hVar = this.f10193e;
        if (((hVar == null || hVar.isEmpty()) ? Long.MAX_VALUE : 0L) == 0) {
            return 0L;
        }
        Object obj = f.get(this);
        if (obj != null) {
            if (!(obj instanceof x9.m)) {
                return obj == u.f10229b ? Long.MAX_VALUE : 0L;
            }
            long j10 = x9.m.f.get((x9.m) obj);
            if (((int) (1073741823 & j10)) != ((int) ((j10 & 1152921503533105152L) >> 30))) {
                return 0L;
            }
        }
        return Long.MAX_VALUE;
    }

    public final boolean n() {
        x8.h hVar = this.f10193e;
        if (!(hVar != null ? hVar.isEmpty() : true)) {
            return false;
        }
        Object obj = f.get(this);
        if (obj == null) {
            return true;
        }
        if (obj instanceof x9.m) {
            long j10 = x9.m.f.get((x9.m) obj);
            if (((int) (1073741823 & j10)) == ((int) ((j10 & 1152921503533105152L) >> 30))) {
                return true;
            }
        } else if (obj == u.f10229b) {
            return true;
        }
        return false;
    }

    public final long o() {
        Runnable runnable;
        if (k()) {
            return 0L;
        }
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            Object obj = atomicReferenceFieldUpdater.get(this);
            runnable = null;
            if (obj == null) {
                break;
            }
            if (!(obj instanceof x9.m)) {
                if (obj != u.f10229b) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(this) != obj) {
                            break;
                        }
                    }
                    runnable = (Runnable) obj;
                    break loop0;
                }
                break;
            }
            x9.m mVar = (x9.m) obj;
            Object objD = mVar.d();
            if (objD != x9.m.f11124g) {
                runnable = (Runnable) objD;
                break;
            }
            x9.m mVarC = mVar.c();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, mVarC) && atomicReferenceFieldUpdater.get(this) == obj) {
            }
        }
        if (runnable == null) {
            return m();
        }
        runnable.run();
        return 0L;
    }

    @Override // t9.g0
    public void shutdown() {
        f1.f10190a.set(null);
        f10189h.set(this, 1);
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
            Object obj = atomicReferenceFieldUpdater.get(this);
            u7.b bVar = u.f10229b;
            if (obj != null) {
                if (!(obj instanceof x9.m)) {
                    if (obj != bVar) {
                        x9.m mVar = new x9.m(8, true);
                        mVar.a((Runnable) obj);
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, mVar)) {
                            if (atomicReferenceFieldUpdater.get(this) != obj) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    break;
                }
                ((x9.m) obj).b();
                break;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(this, null, bVar)) {
                if (atomicReferenceFieldUpdater.get(this) != null) {
                    break;
                }
            }
            break loop0;
        }
        while (o() <= 0) {
        }
        System.nanoTime();
    }
}
