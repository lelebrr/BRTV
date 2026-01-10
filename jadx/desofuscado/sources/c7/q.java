package c7;

import java.lang.ref.ReferenceQueue;
import java.util.AbstractQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q extends ReentrantLock {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f3446a;

    /* renamed from: b, reason: collision with root package name */
    public volatile int f3447b;

    /* renamed from: c, reason: collision with root package name */
    public long f3448c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f3449e;
    public volatile AtomicReferenceArray f;

    /* renamed from: g, reason: collision with root package name */
    public final long f3450g;

    /* renamed from: h, reason: collision with root package name */
    public final ReferenceQueue f3451h;

    /* renamed from: i, reason: collision with root package name */
    public final ReferenceQueue f3452i;

    /* renamed from: j, reason: collision with root package name */
    public final AbstractQueue f3453j;

    /* renamed from: k, reason: collision with root package name */
    public final AtomicInteger f3454k = new AtomicInteger();

    /* renamed from: l, reason: collision with root package name */
    public final AbstractQueue f3455l;

    /* renamed from: m, reason: collision with root package name */
    public final AbstractQueue f3456m;

    /* renamed from: n, reason: collision with root package name */
    public final x4.e f3457n;

    public q(b0 b0Var, int i6, long j10, x4.e eVar) {
        this.f3446a = b0Var;
        this.f3450g = j10;
        this.f3457n = eVar;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(i6);
        int length = (atomicReferenceArray.length() * 3) / 4;
        this.f3449e = length;
        if (b0Var.f3409j == c.f3418a && length == j10) {
            this.f3449e = length + 1;
        }
        this.f = atomicReferenceArray;
        this.f3451h = b0Var.f3406g != 1 ? new ReferenceQueue() : null;
        this.f3452i = b0Var.f3407h != 1 ? new ReferenceQueue() : null;
        this.f3453j = b0Var.a() ? new ConcurrentLinkedQueue() : b0.f3401t;
        this.f3455l = b0Var.b() ? new j(1) : b0.f3401t;
        this.f3456m = b0Var.a() ? new j(0) : b0.f3401t;
    }

    public final c0 a(c0 c0Var, c0 c0Var2) {
        c0 c0VarB;
        c0 c0VarB2;
        Object key = c0Var.getKey();
        if (key == null) {
            return null;
        }
        v vVarA = c0Var.a();
        Object obj = vVarA.get();
        if (obj == null && vVarA.isActive()) {
            return null;
        }
        int i6 = this.f3446a.f3413n;
        if (i6 == 2) {
            c0VarB = k.b(2, this, c0Var, c0Var2, key);
            k.a(c0Var, c0VarB);
        } else if (i6 == 3) {
            c0VarB = k.b(3, this, c0Var, c0Var2, key);
            k.c(c0Var, c0VarB);
        } else if (i6 == 4) {
            c0VarB = k.b(4, this, c0Var, c0Var2, key);
            k.a(c0Var, c0VarB);
            k.c(c0Var, c0VarB);
        } else if (i6 == 6) {
            c0VarB = k.b(6, this, c0Var, c0Var2, key);
            k.a(c0Var, c0VarB);
        } else if (i6 == 7) {
            c0VarB = k.b(7, this, c0Var, c0Var2, key);
            k.c(c0Var, c0VarB);
        } else {
            if (i6 != 8) {
                c0VarB2 = k.b(i6, this, c0Var, c0Var2, key);
                c0VarB2.j(vVarA.b(this.f3452i, obj, c0VarB2));
                return c0VarB2;
            }
            c0VarB = k.b(8, this, c0Var, c0Var2, key);
            k.a(c0Var, c0VarB);
            k.c(c0Var, c0VarB);
        }
        c0VarB2 = c0VarB;
        c0VarB2.j(vVarA.b(this.f3452i, obj, c0VarB2));
        return c0VarB2;
    }

    public final void b() {
        while (true) {
            c0 c0Var = (c0) this.f3453j.poll();
            if (c0Var == null) {
                return;
            }
            AbstractQueue abstractQueue = this.f3456m;
            if (abstractQueue.contains(c0Var)) {
                abstractQueue.add(c0Var);
            }
        }
    }

    public final void c() {
        if (this.f3446a.f3406g != 1) {
            int i6 = 0;
            do {
                Object objPoll = this.f3451h.poll();
                if (objPoll == null) {
                    break;
                }
                c0 c0Var = (c0) objPoll;
                b0 b0Var = this.f3446a;
                b0Var.getClass();
                int iC = c0Var.c();
                q qVarE = b0Var.e(iC);
                qVarE.lock();
                try {
                    AtomicReferenceArray atomicReferenceArray = qVarE.f;
                    int length = iC & (atomicReferenceArray.length() - 1);
                    c0 c0Var2 = (c0) atomicReferenceArray.get(length);
                    c0 c0VarB = c0Var2;
                    while (true) {
                        if (c0VarB == null) {
                            break;
                        }
                        if (c0VarB == c0Var) {
                            qVarE.d++;
                            c0 c0VarN = qVarE.n(c0Var2, c0VarB, c0VarB.getKey(), iC, c0VarB.a().get(), c0VarB.a(), 3);
                            int i10 = qVarE.f3447b - 1;
                            atomicReferenceArray.set(length, c0VarN);
                            qVarE.f3447b = i10;
                            break;
                        }
                        int i11 = length;
                        c0VarB = c0VarB.b();
                        length = i11;
                    }
                    i6++;
                } finally {
                    qVarE.unlock();
                    qVarE.p();
                }
            } while (i6 != 16);
        }
        if (this.f3446a.f3407h != 1) {
            int i12 = 0;
            do {
                Object objPoll2 = this.f3452i.poll();
                if (objPoll2 == null) {
                    return;
                }
                v vVar = (v) objPoll2;
                b0 b0Var2 = this.f3446a;
                b0Var2.getClass();
                c0 c0VarA = vVar.a();
                int iC2 = c0VarA.c();
                q qVarE2 = b0Var2.e(iC2);
                Object key = c0VarA.getKey();
                qVarE2.lock();
                try {
                    AtomicReferenceArray atomicReferenceArray2 = qVarE2.f;
                    int length2 = iC2 & (atomicReferenceArray2.length() - 1);
                    c0 c0Var3 = (c0) atomicReferenceArray2.get(length2);
                    c0 c0VarB2 = c0Var3;
                    while (true) {
                        if (c0VarB2 != null) {
                            Object key2 = c0VarB2.getKey();
                            if (c0VarB2.c() != iC2 || key2 == null || !qVarE2.f3446a.f3405e.c(key, key2)) {
                                int i13 = length2;
                                c0VarB2 = c0VarB2.b();
                                length2 = i13;
                            } else if (c0VarB2.a() == vVar) {
                                qVarE2.d++;
                                c0 c0VarN2 = qVarE2.n(c0Var3, c0VarB2, key2, iC2, vVar.get(), vVar, 3);
                                int i14 = qVarE2.f3447b - 1;
                                atomicReferenceArray2.set(length2, c0VarN2);
                                qVarE2.f3447b = i14;
                            } else {
                                qVarE2.unlock();
                                if (!qVarE2.isHeldByCurrentThread()) {
                                }
                            }
                        } else {
                            qVarE2.unlock();
                            if (!qVarE2.isHeldByCurrentThread()) {
                            }
                        }
                    }
                    i12++;
                } finally {
                    qVarE2.unlock();
                    if (!qVarE2.isHeldByCurrentThread()) {
                        qVarE2.p();
                    }
                }
            } while (i12 != 16);
        }
    }

    public final void d(int i6, Object obj, Object obj2, int i10) {
        this.f3448c -= i6;
        boolean z7 = false;
        if (i10 != 1 && i10 != 2) {
            z7 = true;
        }
        if (z7) {
            this.f3457n.getClass();
        }
        b0 b0Var = this.f3446a;
        if (b0Var.f3411l != b0.f3401t) {
            new d0(obj, obj2);
            b0Var.f3411l.getClass();
        }
    }

    public final void e(c0 c0Var) {
        if (this.f3446a.a()) {
            b();
            long jD = c0Var.a().d();
            long j10 = this.f3450g;
            if (jD > j10 && !m(c0Var, c0Var.c(), 5)) {
                throw new AssertionError();
            }
            while (this.f3448c > j10) {
                for (c0 c0Var2 : this.f3456m) {
                    if (c0Var2.a().d() > 0) {
                        if (!m(c0Var2, c0Var2.c(), 5)) {
                            throw new AssertionError();
                        }
                    }
                }
                throw new AssertionError();
            }
        }
    }

    public final void f() {
        AtomicReferenceArray atomicReferenceArray = this.f;
        int length = atomicReferenceArray.length();
        if (length >= 1073741824) {
            return;
        }
        int i6 = this.f3447b;
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(length << 1);
        this.f3449e = (atomicReferenceArray2.length() * 3) / 4;
        int length2 = atomicReferenceArray2.length() - 1;
        for (int i10 = 0; i10 < length; i10++) {
            c0 c0VarB = (c0) atomicReferenceArray.get(i10);
            if (c0VarB != null) {
                c0 c0VarB2 = c0VarB.b();
                int iC = c0VarB.c() & length2;
                if (c0VarB2 == null) {
                    atomicReferenceArray2.set(iC, c0VarB);
                } else {
                    c0 c0Var = c0VarB;
                    while (c0VarB2 != null) {
                        int iC2 = c0VarB2.c() & length2;
                        if (iC2 != iC) {
                            c0Var = c0VarB2;
                            iC = iC2;
                        }
                        c0VarB2 = c0VarB2.b();
                    }
                    atomicReferenceArray2.set(iC, c0Var);
                    while (c0VarB != c0Var) {
                        int iC3 = c0VarB.c() & length2;
                        c0 c0VarA = a(c0VarB, (c0) atomicReferenceArray2.get(iC3));
                        if (c0VarA != null) {
                            atomicReferenceArray2.set(iC3, c0VarA);
                        } else {
                            l(c0VarB);
                            i6--;
                        }
                        c0VarB = c0VarB.b();
                    }
                }
            }
        }
        this.f = atomicReferenceArray2;
        this.f3447b = i6;
    }

    public final void g(long j10) {
        c0 c0Var;
        c0 c0Var2;
        b();
        do {
            c0Var = (c0) this.f3455l.peek();
            b0 b0Var = this.f3446a;
            if (c0Var == null || !b0Var.d(c0Var, j10)) {
                do {
                    c0Var2 = (c0) this.f3456m.peek();
                    if (c0Var2 == null || !b0Var.d(c0Var2, j10)) {
                        return;
                    }
                } while (m(c0Var2, c0Var2.c(), 4));
                throw new AssertionError();
            }
        } while (m(c0Var, c0Var.c(), 4));
        throw new AssertionError();
    }

    public final Object h(int i6, Object obj) {
        try {
            if (this.f3447b != 0) {
                c0 c0VarI = i(i6, this.f3446a.f3412m.a(), obj);
                if (c0VarI == null) {
                    return null;
                }
                Object obj2 = c0VarI.a().get();
                if (obj2 != null) {
                    this.f3446a.getClass();
                    this.f3453j.add(c0VarI);
                    c0VarI.getKey();
                    this.f3446a.getClass();
                    this.f3446a.getClass();
                    return obj2;
                }
                r();
            }
            return null;
        } finally {
            j();
        }
    }

    public final c0 i(int i6, long j10, Object obj) {
        c0 c0VarB = (c0) this.f.get((r0.length() - 1) & i6);
        while (true) {
            if (c0VarB == null) {
                c0VarB = null;
                break;
            }
            if (c0VarB.c() == i6) {
                Object key = c0VarB.getKey();
                if (key == null) {
                    r();
                } else if (this.f3446a.f3405e.c(obj, key)) {
                    break;
                }
            }
            c0VarB = c0VarB.b();
        }
        if (c0VarB == null) {
            return null;
        }
        if (!this.f3446a.d(c0VarB, j10)) {
            return c0VarB;
        }
        if (tryLock()) {
            try {
                g(j10);
            } finally {
                unlock();
            }
        }
        return null;
    }

    public final void j() {
        if ((this.f3454k.incrementAndGet() & 63) == 0) {
            o(this.f3446a.f3412m.a());
            p();
        }
    }

    public final Object k(int i6, Object obj, Object obj2, boolean z7) {
        int i10;
        lock();
        try {
            long jA = this.f3446a.f3412m.a();
            o(jA);
            if (this.f3447b + 1 > this.f3449e) {
                f();
            }
            AtomicReferenceArray atomicReferenceArray = this.f;
            int length = (atomicReferenceArray.length() - 1) & i6;
            c0 c0Var = (c0) atomicReferenceArray.get(length);
            for (c0 c0VarB = c0Var; c0VarB != null; c0VarB = c0VarB.b()) {
                Object key = c0VarB.getKey();
                if (c0VarB.c() == i6 && key != null && this.f3446a.f3405e.c(obj, key)) {
                    v vVarA = c0VarB.a();
                    Object obj3 = vVarA.get();
                    if (obj3 == null) {
                        this.d++;
                        if (vVarA.isActive()) {
                            d(vVarA.d(), obj, obj3, 3);
                            q(c0VarB, obj2, jA);
                            i10 = this.f3447b;
                        } else {
                            q(c0VarB, obj2, jA);
                            i10 = this.f3447b + 1;
                        }
                        this.f3447b = i10;
                        e(c0VarB);
                        unlock();
                        p();
                        return null;
                    }
                    if (z7) {
                        this.f3446a.getClass();
                        this.f3456m.add(c0VarB);
                        unlock();
                        p();
                        return obj3;
                    }
                    this.d++;
                    d(vVarA.d(), obj, obj3, 2);
                    q(c0VarB, obj2, jA);
                    e(c0VarB);
                    unlock();
                    p();
                    return obj3;
                }
            }
            this.d++;
            int i11 = this.f3446a.f3413n;
            obj.getClass();
            c0 c0VarD = k.d(i11, this, obj, i6, c0Var);
            q(c0VarD, obj2, jA);
            atomicReferenceArray.set(length, c0VarD);
            this.f3447b++;
            e(c0VarD);
            unlock();
            p();
            return null;
        } catch (Throwable th) {
            unlock();
            p();
            throw th;
        }
    }

    public final void l(c0 c0Var) {
        Object key = c0Var.getKey();
        c0Var.c();
        d(c0Var.a().d(), key, c0Var.a().get(), 3);
        this.f3455l.remove(c0Var);
        this.f3456m.remove(c0Var);
    }

    public final boolean m(c0 c0Var, int i6, int i10) {
        AtomicReferenceArray atomicReferenceArray = this.f;
        int length = (atomicReferenceArray.length() - 1) & i6;
        c0 c0Var2 = (c0) atomicReferenceArray.get(length);
        for (c0 c0VarB = c0Var2; c0VarB != null; c0VarB = c0VarB.b()) {
            if (c0VarB == c0Var) {
                this.d++;
                c0 c0VarN = n(c0Var2, c0VarB, c0VarB.getKey(), i6, c0VarB.a().get(), c0VarB.a(), i10);
                int i11 = this.f3447b - 1;
                atomicReferenceArray.set(length, c0VarN);
                this.f3447b = i11;
                return true;
            }
        }
        return false;
    }

    public final c0 n(c0 c0Var, c0 c0Var2, Object obj, int i6, Object obj2, v vVar, int i10) {
        d(vVar.d(), obj, obj2, i10);
        this.f3455l.remove(c0Var2);
        this.f3456m.remove(c0Var2);
        if (vVar.isLoading()) {
            vVar.c(null);
            return c0Var;
        }
        int i11 = this.f3447b;
        c0 c0VarB = c0Var2.b();
        while (c0Var != c0Var2) {
            c0 c0VarA = a(c0Var, c0VarB);
            if (c0VarA != null) {
                c0VarB = c0VarA;
            } else {
                l(c0Var);
                i11--;
            }
            c0Var = c0Var.b();
        }
        this.f3447b = i11;
        return c0VarB;
    }

    public final void o(long j10) {
        if (tryLock()) {
            try {
                c();
                g(j10);
                this.f3454k.set(0);
            } finally {
                unlock();
            }
        }
    }

    public final void p() {
        if (isHeldByCurrentThread()) {
            return;
        }
        this.f3446a.f3411l.getClass();
    }

    public final void q(c0 c0Var, Object obj, long j10) {
        v vVarA = c0Var.a();
        b0 b0Var = this.f3446a;
        b0Var.f3409j.getClass();
        if (b0Var.f3407h == 0) {
            throw null;
        }
        c0Var.j(new u(obj));
        b();
        this.f3448c++;
        if (b0Var.b()) {
            c0Var.d(j10);
        }
        this.f3456m.add(c0Var);
        this.f3455l.add(c0Var);
        vVarA.c(obj);
    }

    public final void r() {
        if (tryLock()) {
            try {
                c();
            } finally {
                unlock();
            }
        }
    }
}
