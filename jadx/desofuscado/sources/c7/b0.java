package c7;

import androidx.media3.common.C;
import b7.h0;
import b7.k0;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.logging.Logger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 extends AbstractMap implements ConcurrentMap {

    /* renamed from: s, reason: collision with root package name */
    public static final e f3400s;

    /* renamed from: t, reason: collision with root package name */
    public static final f f3401t;

    /* renamed from: a, reason: collision with root package name */
    public final int f3402a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3403b;

    /* renamed from: c, reason: collision with root package name */
    public final q[] f3404c;

    /* renamed from: e, reason: collision with root package name */
    public final b7.h f3405e;
    public final b7.h f;

    /* renamed from: i, reason: collision with root package name */
    public final long f3408i;

    /* renamed from: j, reason: collision with root package name */
    public final c f3409j;

    /* renamed from: k, reason: collision with root package name */
    public final long f3410k;

    /* renamed from: l, reason: collision with root package name */
    public final f f3411l;

    /* renamed from: m, reason: collision with root package name */
    public final k0 f3412m;

    /* renamed from: n, reason: collision with root package name */
    public final int f3413n;

    /* renamed from: o, reason: collision with root package name */
    public final x4.e f3414o;

    /* renamed from: p, reason: collision with root package name */
    public m f3415p;

    /* renamed from: q, reason: collision with root package name */
    public w f3416q;

    /* renamed from: r, reason: collision with root package name */
    public m f3417r;
    public final int d = Math.min(4, C.DEFAULT_BUFFER_SEGMENT_SIZE);

    /* renamed from: g, reason: collision with root package name */
    public final int f3406g = 1;

    /* renamed from: h, reason: collision with root package name */
    public final int f3407h = 1;

    static {
        Logger.getLogger(b0.class.getName());
        f3400s = new e();
        f3401t = new f();
    }

    public b0(d dVar) {
        b7.f fVar = b7.f.f3300a;
        this.f3405e = (b7.h) b7.b.r(null, fVar);
        this.f = (b7.h) b7.b.r(null, fVar);
        long j10 = dVar.f3422b;
        long j11 = j10 != 0 ? dVar.f3421a : 0L;
        this.f3408i = j11;
        this.f3409j = c.f3418a;
        this.f3410k = j10 == -1 ? 0L : j10;
        this.f3411l = f3401t;
        this.f3412m = !b() ? d.d : k0.f3311a;
        this.f3413n = k.f3431a[(a() ? 1 : 0) | (b() || b() ? 2 : 0)];
        h0 h0Var = d.f3420c;
        this.f3414o = h0Var.f3308a;
        int iMin = Math.min(16, 1073741824);
        iMin = a() ? (int) Math.min(iMin, j11) : iMin;
        int i6 = 1;
        int i10 = 0;
        while (i6 < this.d && (!a() || i6 * 20 <= this.f3408i)) {
            i10++;
            i6 <<= 1;
        }
        this.f3403b = 32 - i10;
        this.f3402a = i6 - 1;
        this.f3404c = new q[i6];
        int i11 = iMin / i6;
        int i12 = 1;
        while (i12 < (i11 * i6 < iMin ? i11 + 1 : i11)) {
            i12 <<= 1;
        }
        if (a()) {
            long j12 = this.f3408i;
            long j13 = i6;
            long j14 = (j12 / j13) + 1;
            long j15 = j12 % j13;
            int i13 = 0;
            while (true) {
                q[] qVarArr = this.f3404c;
                if (i13 >= qVarArr.length) {
                    return;
                }
                if (i13 == j15) {
                    j14--;
                }
                qVarArr[i13] = new q(this, i12, j14, h0Var.f3308a);
                i13++;
            }
        } else {
            int i14 = 0;
            while (true) {
                q[] qVarArr2 = this.f3404c;
                if (i14 >= qVarArr2.length) {
                    return;
                }
                qVarArr2[i14] = new q(this, i12, -1L, h0Var.f3308a);
                i14++;
            }
        }
    }

    public final boolean a() {
        return this.f3408i >= 0;
    }

    public final boolean b() {
        return this.f3410k > 0;
    }

    public final int c(Object obj) {
        int iB;
        b7.h hVar = this.f3405e;
        if (obj == null) {
            hVar.getClass();
            iB = 0;
        } else {
            iB = hVar.b(obj);
        }
        int i6 = iB + ((iB << 15) ^ (-12931));
        int i10 = i6 ^ (i6 >>> 10);
        int i11 = i10 + (i10 << 3);
        int i12 = i11 ^ (i11 >>> 6);
        int i13 = (i12 << 2) + (i12 << 14) + i12;
        return (i13 >>> 16) ^ i13;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        for (q qVar : this.f3404c) {
            if (qVar.f3447b != 0) {
                qVar.lock();
                try {
                    qVar.o(qVar.f3446a.f3412m.a());
                    AtomicReferenceArray atomicReferenceArray = qVar.f;
                    for (int i6 = 0; i6 < atomicReferenceArray.length(); i6++) {
                        for (c0 c0VarB = (c0) atomicReferenceArray.get(i6); c0VarB != null; c0VarB = c0VarB.b()) {
                            if (c0VarB.a().isActive()) {
                                Object key = c0VarB.getKey();
                                Object obj = c0VarB.a().get();
                                int i10 = (key == null || obj == null) ? 3 : 1;
                                c0VarB.c();
                                qVar.d(c0VarB.a().d(), key, obj, i10);
                            }
                        }
                    }
                    for (int i11 = 0; i11 < atomicReferenceArray.length(); i11++) {
                        atomicReferenceArray.set(i11, null);
                    }
                    b0 b0Var = qVar.f3446a;
                    if (b0Var.f3406g != 1) {
                        while (qVar.f3451h.poll() != null) {
                        }
                    }
                    if (b0Var.f3407h != 1) {
                        while (qVar.f3452i.poll() != null) {
                        }
                    }
                    qVar.f3455l.clear();
                    qVar.f3456m.clear();
                    qVar.f3454k.set(0);
                    qVar.d++;
                    qVar.f3447b = 0;
                    qVar.unlock();
                    qVar.p();
                } catch (Throwable th) {
                    qVar.unlock();
                    qVar.p();
                    throw th;
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        c0 c0VarI;
        boolean z7 = false;
        if (obj == null) {
            return false;
        }
        int iC = c(obj);
        q qVarE = e(iC);
        qVarE.getClass();
        try {
            if (qVarE.f3447b != 0 && (c0VarI = qVarE.i(iC, qVarE.f3446a.f3412m.a(), obj)) != null) {
                if (c0VarI.a().get() != null) {
                    z7 = true;
                }
            }
            return z7;
        } finally {
            qVarE.j();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x007c A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean containsValue(java.lang.Object r20) {
        /*
            r19 = this;
            r1 = r19
            r0 = r20
            r2 = 0
            if (r0 != 0) goto L8
            return r2
        L8:
            b7.k0 r3 = r1.f3412m
            long r3 = r3.a()
            c7.q[] r5 = r1.f3404c
            r6 = -1
            r8 = 0
        L13:
            r9 = 3
            if (r8 >= r9) goto La2
            int r9 = r5.length
            r10 = 0
            r12 = 0
        L1a:
            if (r12 >= r9) goto L9a
            r13 = r5[r12]
            int r14 = r13.f3447b
            java.util.concurrent.atomic.AtomicReferenceArray r14 = r13.f
            r15 = 0
        L23:
            int r2 = r14.length()
            if (r15 >= r2) goto L8c
            java.lang.Object r2 = r14.get(r15)
            c7.c0 r2 = (c7.c0) r2
        L2f:
            if (r2 == 0) goto L85
            java.lang.Object r16 = r2.getKey()
            r17 = 0
            if (r16 != 0) goto L41
            r13.r()
        L3c:
            r18 = r5
        L3e:
            r5 = r17
            goto L6e
        L41:
            c7.v r16 = r2.a()
            java.lang.Object r16 = r16.get()
            if (r16 != 0) goto L4f
            r13.r()
            goto L3c
        L4f:
            r18 = r5
            c7.b0 r5 = r13.f3446a
            boolean r5 = r5.d(r2, r3)
            if (r5 == 0) goto L6c
            boolean r5 = r13.tryLock()
            if (r5 == 0) goto L3e
            r13.g(r3)     // Catch: java.lang.Throwable -> L66
            r13.unlock()
            goto L3e
        L66:
            r0 = move-exception
            r2 = r0
            r13.unlock()
            throw r2
        L6c:
            r5 = r16
        L6e:
            r16 = r3
            if (r5 == 0) goto L7c
            b7.h r3 = r1.f
            boolean r3 = r3.c(r0, r5)
            if (r3 == 0) goto L7c
            r0 = 1
            return r0
        L7c:
            c7.c0 r2 = r2.b()
            r3 = r16
            r5 = r18
            goto L2f
        L85:
            r16 = r3
            r18 = r5
            int r15 = r15 + 1
            goto L23
        L8c:
            r16 = r3
            r18 = r5
            int r2 = r13.d
            long r2 = (long) r2
            long r10 = r10 + r2
            int r12 = r12 + 1
            r3 = r16
            r2 = 0
            goto L1a
        L9a:
            r16 = r3
            r18 = r5
            int r2 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r2 != 0) goto La4
        La2:
            r0 = 0
            goto Lae
        La4:
            int r8 = r8 + 1
            r6 = r10
            r3 = r16
            r5 = r18
            r2 = 0
            goto L13
        Lae:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c7.b0.containsValue(java.lang.Object):boolean");
    }

    public final boolean d(c0 c0Var, long j10) {
        c0Var.getClass();
        return b() && j10 - c0Var.k() >= this.f3410k;
    }

    public final q e(int i6) {
        return this.f3404c[(i6 >>> this.f3403b) & this.f3402a];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        m mVar = this.f3417r;
        if (mVar != null) {
            return mVar;
        }
        m mVar2 = new m(this, 0);
        this.f3417r = mVar2;
        return mVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        int iC = c(obj);
        return e(iC).h(iC, obj);
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        q[] qVarArr = this.f3404c;
        long j10 = 0;
        for (q qVar : qVarArr) {
            if (qVar.f3447b != 0) {
                return false;
            }
            j10 += r8.d;
        }
        if (j10 == 0) {
            return true;
        }
        for (q qVar2 : qVarArr) {
            if (qVar2.f3447b != 0) {
                return false;
            }
            j10 -= r9.d;
        }
        return j10 == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        m mVar = this.f3415p;
        if (mVar != null) {
            return mVar;
        }
        m mVar2 = new m(this, 1);
        this.f3415p = mVar2;
        return mVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int iC = c(obj);
        return e(iC).k(iC, obj, obj2, false);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void putAll(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final Object putIfAbsent(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int iC = c(obj);
        return e(iC).k(iC, obj, obj2, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
    
        r7 = r3.a();
        r14 = r7.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
    
        if (r14 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
    
        r8 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0054, code lost:
    
        if (r7.isActive() == false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0056, code lost:
    
        r8 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
    
        r9.d++;
        r0 = r9.n(r2, r3, r4, r5, r14, r7, r8);
        r1 = r9.f3447b - 1;
        r10.set(r12, r0);
        r9.f3447b = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0081, code lost:
    
        return r14;
     */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object remove(java.lang.Object r14) {
        /*
            r13 = this;
            r0 = 0
            if (r14 != 0) goto L4
            return r0
        L4:
            int r5 = r13.c(r14)
            c7.q r9 = r13.e(r5)
            r9.lock()
            c7.b0 r1 = r9.f3446a     // Catch: java.lang.Throwable -> L73
            b7.k0 r1 = r1.f3412m     // Catch: java.lang.Throwable -> L73
            long r1 = r1.a()     // Catch: java.lang.Throwable -> L73
            r9.o(r1)     // Catch: java.lang.Throwable -> L73
            java.util.concurrent.atomic.AtomicReferenceArray r10 = r9.f     // Catch: java.lang.Throwable -> L73
            int r1 = r10.length()     // Catch: java.lang.Throwable -> L73
            r11 = 1
            int r1 = r1 - r11
            r12 = r5 & r1
            java.lang.Object r1 = r10.get(r12)     // Catch: java.lang.Throwable -> L73
            r2 = r1
            c7.c0 r2 = (c7.c0) r2     // Catch: java.lang.Throwable -> L73
            r3 = r2
        L2c:
            if (r3 == 0) goto L75
            java.lang.Object r4 = r3.getKey()     // Catch: java.lang.Throwable -> L73
            int r1 = r3.c()     // Catch: java.lang.Throwable -> L73
            if (r1 != r5) goto L7c
            if (r4 == 0) goto L7c
            c7.b0 r1 = r9.f3446a     // Catch: java.lang.Throwable -> L73
            b7.h r1 = r1.f3405e     // Catch: java.lang.Throwable -> L73
            boolean r1 = r1.c(r14, r4)     // Catch: java.lang.Throwable -> L73
            if (r1 == 0) goto L7c
            c7.v r7 = r3.a()     // Catch: java.lang.Throwable -> L73
            java.lang.Object r14 = r7.get()     // Catch: java.lang.Throwable -> L73
            if (r14 == 0) goto L50
            r8 = 1
            goto L58
        L50:
            boolean r1 = r7.isActive()     // Catch: java.lang.Throwable -> L73
            if (r1 == 0) goto L75
            r0 = 3
            r8 = 3
        L58:
            int r0 = r9.d     // Catch: java.lang.Throwable -> L73
            int r0 = r0 + r11
            r9.d = r0     // Catch: java.lang.Throwable -> L73
            r1 = r9
            r6 = r14
            c7.c0 r0 = r1.n(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L73
            int r1 = r9.f3447b     // Catch: java.lang.Throwable -> L73
            int r1 = r1 - r11
            r10.set(r12, r0)     // Catch: java.lang.Throwable -> L73
            r9.f3447b = r1     // Catch: java.lang.Throwable -> L73
            r9.unlock()
            r9.p()
            r0 = r14
            goto L81
        L73:
            r14 = move-exception
            goto L82
        L75:
            r9.unlock()
            r9.p()
            goto L81
        L7c:
            c7.c0 r3 = r3.b()     // Catch: java.lang.Throwable -> L73
            goto L2c
        L81:
            return r0
        L82:
            r9.unlock()
            r9.p()
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: c7.b0.remove(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x009b, code lost:
    
        return null;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object replace(java.lang.Object r13, java.lang.Object r14) {
        /*
            r12 = this;
            r13.getClass()
            r14.getClass()
            int r4 = r12.c(r13)
            c7.q r8 = r12.e(r4)
            r8.lock()
            c7.b0 r0 = r8.f3446a     // Catch: java.lang.Throwable -> L71
            b7.k0 r0 = r0.f3412m     // Catch: java.lang.Throwable -> L71
            long r0 = r0.a()     // Catch: java.lang.Throwable -> L71
            r8.o(r0)     // Catch: java.lang.Throwable -> L71
            java.util.concurrent.atomic.AtomicReferenceArray r9 = r8.f     // Catch: java.lang.Throwable -> L71
            int r2 = r9.length()     // Catch: java.lang.Throwable -> L71
            int r2 = r2 + (-1)
            r10 = r4 & r2
            java.lang.Object r2 = r9.get(r10)     // Catch: java.lang.Throwable -> L71
            c7.c0 r2 = (c7.c0) r2     // Catch: java.lang.Throwable -> L71
            r3 = r2
        L2d:
            r11 = 0
            if (r3 == 0) goto L73
            java.lang.Object r5 = r3.getKey()     // Catch: java.lang.Throwable -> L71
            int r6 = r3.c()     // Catch: java.lang.Throwable -> L71
            if (r6 != r4) goto L96
            if (r5 == 0) goto L96
            c7.b0 r6 = r8.f3446a     // Catch: java.lang.Throwable -> L71
            b7.h r6 = r6.f3405e     // Catch: java.lang.Throwable -> L71
            boolean r6 = r6.c(r13, r5)     // Catch: java.lang.Throwable -> L71
            if (r6 == 0) goto L96
            c7.v r6 = r3.a()     // Catch: java.lang.Throwable -> L71
            java.lang.Object r7 = r6.get()     // Catch: java.lang.Throwable -> L71
            if (r7 != 0) goto L7a
            boolean r13 = r6.isActive()     // Catch: java.lang.Throwable -> L71
            if (r13 == 0) goto L73
            int r13 = r8.d     // Catch: java.lang.Throwable -> L71
            int r13 = r13 + 1
            r8.d = r13     // Catch: java.lang.Throwable -> L71
            r13 = 3
            r0 = r8
            r1 = r2
            r2 = r3
            r3 = r5
            r5 = r7
            r7 = r13
            c7.c0 r13 = r0.n(r1, r2, r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L71
            int r14 = r8.f3447b     // Catch: java.lang.Throwable -> L71
            int r14 = r14 + (-1)
            r9.set(r10, r13)     // Catch: java.lang.Throwable -> L71
            r8.f3447b = r14     // Catch: java.lang.Throwable -> L71
            goto L73
        L71:
            r13 = move-exception
            goto L9c
        L73:
            r8.unlock()
            r8.p()
            goto L9b
        L7a:
            int r2 = r8.d     // Catch: java.lang.Throwable -> L71
            int r2 = r2 + 1
            r8.d = r2     // Catch: java.lang.Throwable -> L71
            int r2 = r6.d()     // Catch: java.lang.Throwable -> L71
            r4 = 2
            r8.d(r2, r13, r7, r4)     // Catch: java.lang.Throwable -> L71
            r8.q(r3, r14, r0)     // Catch: java.lang.Throwable -> L71
            r8.e(r3)     // Catch: java.lang.Throwable -> L71
            r8.unlock()
            r8.p()
            r11 = r7
            goto L9b
        L96:
            c7.c0 r3 = r3.b()     // Catch: java.lang.Throwable -> L71
            goto L2d
        L9b:
            return r11
        L9c:
            r8.unlock()
            r8.p()
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: c7.b0.replace(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        long jMax = 0;
        for (int i6 = 0; i6 < this.f3404c.length; i6++) {
            jMax += Math.max(0, r0[i6].f3447b);
        }
        return r4.b.K(jMax);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        w wVar = this.f3416q;
        if (wVar != null) {
            return wVar;
        }
        w wVar2 = new w(this, 0);
        this.f3416q = wVar2;
        return wVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
    
        r7 = r3.a();
        r6 = r7.get();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0057, code lost:
    
        if (r9.f3446a.f.c(r15, r6) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0059, code lost:
    
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
    
        if (r6 != null) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0061, code lost:
    
        if (r7.isActive() == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0063, code lost:
    
        r14 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0064, code lost:
    
        r9.d++;
        r15 = r9.n(r2, r3, r4, r5, r6, r7, r14);
        r1 = r9.f3447b - 1;
        r10.set(r12, r15);
        r9.f3447b = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0077, code lost:
    
        if (r14 != 1) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0079, code lost:
    
        r0 = true;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean remove(java.lang.Object r14, java.lang.Object r15) {
        /*
            r13 = this;
            r0 = 0
            if (r14 == 0) goto L90
            if (r15 != 0) goto L7
            goto L90
        L7:
            int r5 = r13.c(r14)
            c7.q r9 = r13.e(r5)
            r9.lock()
            c7.b0 r1 = r9.f3446a     // Catch: java.lang.Throwable -> L81
            b7.k0 r1 = r1.f3412m     // Catch: java.lang.Throwable -> L81
            long r1 = r1.a()     // Catch: java.lang.Throwable -> L81
            r9.o(r1)     // Catch: java.lang.Throwable -> L81
            java.util.concurrent.atomic.AtomicReferenceArray r10 = r9.f     // Catch: java.lang.Throwable -> L81
            int r1 = r10.length()     // Catch: java.lang.Throwable -> L81
            r11 = 1
            int r1 = r1 - r11
            r12 = r5 & r1
            java.lang.Object r1 = r10.get(r12)     // Catch: java.lang.Throwable -> L81
            r2 = r1
            c7.c0 r2 = (c7.c0) r2     // Catch: java.lang.Throwable -> L81
            r3 = r2
        L2f:
            if (r3 == 0) goto L7a
            java.lang.Object r4 = r3.getKey()     // Catch: java.lang.Throwable -> L81
            int r1 = r3.c()     // Catch: java.lang.Throwable -> L81
            if (r1 != r5) goto L83
            if (r4 == 0) goto L83
            c7.b0 r1 = r9.f3446a     // Catch: java.lang.Throwable -> L81
            b7.h r1 = r1.f3405e     // Catch: java.lang.Throwable -> L81
            boolean r1 = r1.c(r14, r4)     // Catch: java.lang.Throwable -> L81
            if (r1 == 0) goto L83
            c7.v r7 = r3.a()     // Catch: java.lang.Throwable -> L81
            java.lang.Object r6 = r7.get()     // Catch: java.lang.Throwable -> L81
            c7.b0 r14 = r9.f3446a     // Catch: java.lang.Throwable -> L81
            b7.h r14 = r14.f     // Catch: java.lang.Throwable -> L81
            boolean r14 = r14.c(r15, r6)     // Catch: java.lang.Throwable -> L81
            if (r14 == 0) goto L5b
            r14 = 1
            goto L64
        L5b:
            if (r6 != 0) goto L7a
            boolean r14 = r7.isActive()     // Catch: java.lang.Throwable -> L81
            if (r14 == 0) goto L7a
            r14 = 3
        L64:
            int r15 = r9.d     // Catch: java.lang.Throwable -> L81
            int r15 = r15 + r11
            r9.d = r15     // Catch: java.lang.Throwable -> L81
            r1 = r9
            r8 = r14
            c7.c0 r15 = r1.n(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L81
            int r1 = r9.f3447b     // Catch: java.lang.Throwable -> L81
            int r1 = r1 - r11
            r10.set(r12, r15)     // Catch: java.lang.Throwable -> L81
            r9.f3447b = r1     // Catch: java.lang.Throwable -> L81
            if (r14 != r11) goto L7a
            r0 = 1
        L7a:
            r9.unlock()
            r9.p()
            goto L88
        L81:
            r14 = move-exception
            goto L89
        L83:
            c7.c0 r3 = r3.b()     // Catch: java.lang.Throwable -> L81
            goto L2f
        L88:
            return r0
        L89:
            r9.unlock()
            r9.p()
            throw r14
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c7.b0.remove(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        obj.getClass();
        obj3.getClass();
        if (obj2 == null) {
            return false;
        }
        int iC = c(obj);
        q qVarE = e(iC);
        qVarE.lock();
        try {
            long jA = qVarE.f3446a.f3412m.a();
            qVarE.o(jA);
            AtomicReferenceArray atomicReferenceArray = qVarE.f;
            int length = iC & (atomicReferenceArray.length() - 1);
            c0 c0Var = (c0) atomicReferenceArray.get(length);
            c0 c0VarB = c0Var;
            while (true) {
                if (c0VarB == null) {
                    break;
                }
                Object key = c0VarB.getKey();
                if (c0VarB.c() == iC && key != null && qVarE.f3446a.f3405e.c(obj, key)) {
                    v vVarA = c0VarB.a();
                    Object obj4 = vVarA.get();
                    if (obj4 == null) {
                        if (vVarA.isActive()) {
                            qVarE.d++;
                            c0 c0VarN = qVarE.n(c0Var, c0VarB, key, iC, obj4, vVarA, 3);
                            int i6 = qVarE.f3447b - 1;
                            atomicReferenceArray.set(length, c0VarN);
                            qVarE.f3447b = i6;
                        }
                    } else {
                        if (qVarE.f3446a.f.c(obj2, obj4)) {
                            qVarE.d++;
                            qVarE.d(vVarA.d(), obj, obj4, 2);
                            qVarE.q(c0VarB, obj3, jA);
                            qVarE.e(c0VarB);
                            qVarE.unlock();
                            qVarE.p();
                            return true;
                        }
                        qVarE.f3446a.getClass();
                        qVarE.f3456m.add(c0VarB);
                    }
                } else {
                    c0VarB = c0VarB.b();
                }
            }
            return false;
        } finally {
            qVarE.unlock();
            qVarE.p();
        }
    }
}
