package d7;

import java.lang.ref.ReferenceQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class h3 extends ReentrantLock {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f6160g = 0;

    /* renamed from: a, reason: collision with root package name */
    public final c4 f6161a;

    /* renamed from: b, reason: collision with root package name */
    public volatile int f6162b;

    /* renamed from: c, reason: collision with root package name */
    public int f6163c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public volatile AtomicReferenceArray f6164e;
    public final AtomicInteger f = new AtomicInteger();

    public h3(c4 c4Var, int i6) {
        this.f6161a = c4Var;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(i6);
        this.d = (atomicReferenceArray.length() * 3) / 4;
        this.f6164e = atomicReferenceArray;
    }

    public final void a(ReferenceQueue referenceQueue) {
        int i6 = 0;
        do {
            Object objPoll = referenceQueue.poll();
            if (objPoll == null) {
                return;
            }
            f3 f3Var = (f3) objPoll;
            c4 c4Var = this.f6161a;
            c4Var.getClass();
            int iC = f3Var.c();
            h3 h3VarB = c4Var.b(iC);
            h3VarB.lock();
            try {
                AtomicReferenceArray atomicReferenceArray = h3VarB.f6164e;
                int length = iC & (atomicReferenceArray.length() - 1);
                f3 f3Var2 = (f3) atomicReferenceArray.get(length);
                f3 f3VarB = f3Var2;
                while (true) {
                    if (f3VarB == null) {
                        break;
                    }
                    if (f3VarB == f3Var) {
                        h3VarB.f6163c++;
                        f3 f3VarI = h3VarB.i(f3Var2, f3VarB);
                        int i10 = h3VarB.f6162b - 1;
                        atomicReferenceArray.set(length, f3VarI);
                        h3VarB.f6162b = i10;
                        break;
                    }
                    f3VarB = f3VarB.b();
                }
                i6++;
            } finally {
                h3VarB.unlock();
            }
        } while (i6 != 16);
    }

    public final void b(ReferenceQueue referenceQueue) {
        int i6 = 0;
        do {
            Object objPoll = referenceQueue.poll();
            if (objPoll == null) {
                return;
            }
            z3 z3Var = (z3) objPoll;
            c4 c4Var = this.f6161a;
            c4Var.getClass();
            f3 f3VarA = z3Var.a();
            int iC = f3VarA.c();
            h3 h3VarB = c4Var.b(iC);
            Object key = f3VarA.getKey();
            h3VarB.lock();
            try {
                AtomicReferenceArray atomicReferenceArray = h3VarB.f6164e;
                int length = (atomicReferenceArray.length() - 1) & iC;
                f3 f3Var = (f3) atomicReferenceArray.get(length);
                f3 f3VarB = f3Var;
                while (true) {
                    if (f3VarB == null) {
                        break;
                    }
                    Object key2 = f3VarB.getKey();
                    if (f3VarB.c() != iC || key2 == null || !h3VarB.f6161a.f6111e.c(key, key2)) {
                        f3VarB = f3VarB.b();
                    } else if (((y3) f3VarB).a() == z3Var) {
                        h3VarB.f6163c++;
                        f3 f3VarI = h3VarB.i(f3Var, f3VarB);
                        int i10 = h3VarB.f6162b - 1;
                        atomicReferenceArray.set(length, f3VarI);
                        h3VarB.f6162b = i10;
                    }
                }
                i6++;
            } finally {
                h3VarB.unlock();
            }
        } while (i6 != 16);
    }

    public final void c() {
        AtomicReferenceArray atomicReferenceArray = this.f6164e;
        int length = atomicReferenceArray.length();
        if (length >= 1073741824) {
            return;
        }
        int i6 = this.f6162b;
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(length << 1);
        this.d = (atomicReferenceArray2.length() * 3) / 4;
        int length2 = atomicReferenceArray2.length() - 1;
        for (int i10 = 0; i10 < length; i10++) {
            f3 f3VarB = (f3) atomicReferenceArray.get(i10);
            if (f3VarB != null) {
                f3 f3VarB2 = f3VarB.b();
                int iC = f3VarB.c() & length2;
                if (f3VarB2 == null) {
                    atomicReferenceArray2.set(iC, f3VarB);
                } else {
                    f3 f3Var = f3VarB;
                    while (f3VarB2 != null) {
                        int iC2 = f3VarB2.c() & length2;
                        if (iC2 != iC) {
                            f3Var = f3VarB2;
                            iC = iC2;
                        }
                        f3VarB2 = f3VarB2.b();
                    }
                    atomicReferenceArray2.set(iC, f3Var);
                    while (f3VarB != f3Var) {
                        int iC3 = f3VarB.c() & length2;
                        f3 f3VarE = this.f6161a.f.e(k(), f3VarB, (f3) atomicReferenceArray2.get(iC3));
                        if (f3VarE != null) {
                            atomicReferenceArray2.set(iC3, f3VarE);
                        } else {
                            i6--;
                        }
                        f3VarB = f3VarB.b();
                    }
                }
            }
        }
        this.f6164e = atomicReferenceArray2;
        this.f6162b = i6;
    }

    public final f3 d(int i6, Object obj) {
        if (this.f6162b != 0) {
            for (f3 f3VarB = (f3) this.f6164e.get((r0.length() - 1) & i6); f3VarB != null; f3VarB = f3VarB.b()) {
                if (f3VarB.c() == i6) {
                    Object key = f3VarB.getKey();
                    if (key == null) {
                        m();
                    } else if (this.f6161a.f6111e.c(obj, key)) {
                        return f3VarB;
                    }
                }
            }
        }
        return null;
    }

    public final void g() {
        if ((this.f.incrementAndGet() & 63) == 0) {
            j();
        }
    }

    public final Object h(int i6, Object obj, Object obj2, boolean z7) {
        lock();
        try {
            j();
            int i10 = this.f6162b + 1;
            if (i10 > this.d) {
                c();
                i10 = this.f6162b + 1;
            }
            AtomicReferenceArray atomicReferenceArray = this.f6164e;
            int length = (atomicReferenceArray.length() - 1) & i6;
            f3 f3Var = (f3) atomicReferenceArray.get(length);
            for (f3 f3VarB = f3Var; f3VarB != null; f3VarB = f3VarB.b()) {
                Object key = f3VarB.getKey();
                if (f3VarB.c() == i6 && key != null && this.f6161a.f6111e.c(obj, key)) {
                    Object value = f3VarB.getValue();
                    if (value == null) {
                        this.f6163c++;
                        l(f3VarB, obj2);
                        this.f6162b = this.f6162b;
                        unlock();
                        return null;
                    }
                    if (z7) {
                        unlock();
                        return value;
                    }
                    this.f6163c++;
                    l(f3VarB, obj2);
                    unlock();
                    return value;
                }
            }
            this.f6163c++;
            f3 f3VarA = this.f6161a.f.a(k(), obj, i6, f3Var);
            l(f3VarA, obj2);
            atomicReferenceArray.set(length, f3VarA);
            this.f6162b = i10;
            unlock();
            return null;
        } catch (Throwable th) {
            unlock();
            throw th;
        }
    }

    public final f3 i(f3 f3Var, f3 f3Var2) {
        int i6 = this.f6162b;
        f3 f3VarB = f3Var2.b();
        while (f3Var != f3Var2) {
            f3 f3VarE = this.f6161a.f.e(k(), f3Var, f3VarB);
            if (f3VarE != null) {
                f3VarB = f3VarE;
            } else {
                i6--;
            }
            f3Var = f3Var.b();
        }
        this.f6162b = i6;
        return f3VarB;
    }

    public final void j() {
        if (tryLock()) {
            try {
                f();
                this.f.set(0);
            } finally {
                unlock();
            }
        }
    }

    public abstract h3 k();

    public final void l(f3 f3Var, Object obj) {
        this.f6161a.f.c(k(), f3Var, obj);
    }

    public final void m() {
        if (tryLock()) {
            try {
                f();
            } finally {
                unlock();
            }
        }
    }

    public void e() {
    }

    public void f() {
    }
}
