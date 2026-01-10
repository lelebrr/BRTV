package d7;

import androidx.media3.common.C;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c4 extends AbstractMap implements ConcurrentMap, Serializable {

    /* renamed from: j, reason: collision with root package name */
    public static final a3 f6107j = new a3();

    /* renamed from: a, reason: collision with root package name */
    public final transient int f6108a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f6109b;

    /* renamed from: c, reason: collision with root package name */
    public final transient h3[] f6110c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final b7.h f6111e;
    public final transient g3 f;

    /* renamed from: g, reason: collision with root package name */
    public transient e3 f6112g;

    /* renamed from: h, reason: collision with root package name */
    public transient c7.w f6113h;

    /* renamed from: i, reason: collision with root package name */
    public transient e3 f6114i;

    public c4(k3.t tVar, g3 g3Var) {
        tVar.getClass();
        this.d = Math.min(4, C.DEFAULT_BUFFER_SEGMENT_SIZE);
        this.f6111e = (b7.h) b7.b.r(null, ((k3) b7.b.r((j3) tVar.f7735c, k3.f6199a)).a());
        this.f = g3Var;
        int iMin = Math.min(16, 1073741824);
        int i6 = 1;
        int i10 = 0;
        int i11 = 1;
        int i12 = 0;
        while (i11 < this.d) {
            i12++;
            i11 <<= 1;
        }
        this.f6109b = 32 - i12;
        this.f6108a = i11 - 1;
        this.f6110c = new h3[i11];
        int i13 = iMin / i11;
        while (i6 < (i11 * i13 < iMin ? i13 + 1 : i13)) {
            i6 <<= 1;
        }
        while (true) {
            h3[] h3VarArr = this.f6110c;
            if (i10 >= h3VarArr.length) {
                return;
            }
            h3VarArr[i10] = this.f.b(this, i6);
            i10++;
        }
    }

    public final int a(Object obj) {
        int iB;
        b7.h hVar = this.f6111e;
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

    public final h3 b(int i6) {
        return this.f6110c[(i6 >>> this.f6109b) & this.f6108a];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        for (h3 h3Var : this.f6110c) {
            if (h3Var.f6162b != 0) {
                h3Var.lock();
                try {
                    AtomicReferenceArray atomicReferenceArray = h3Var.f6164e;
                    for (int i6 = 0; i6 < atomicReferenceArray.length(); i6++) {
                        atomicReferenceArray.set(i6, null);
                    }
                    h3Var.e();
                    h3Var.f.set(0);
                    h3Var.f6163c++;
                    h3Var.f6162b = 0;
                    h3Var.unlock();
                } catch (Throwable th) {
                    h3Var.unlock();
                    throw th;
                }
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        f3 f3VarD;
        boolean z7 = false;
        if (obj == null) {
            return false;
        }
        int iA = a(obj);
        h3 h3VarB = b(iA);
        h3VarB.getClass();
        try {
            if (h3VarB.f6162b != 0 && (f3VarD = h3VarB.d(iA, obj)) != null) {
                if (f3VarD.getValue() != null) {
                    z7 = true;
                }
            }
            return z7;
        } finally {
            h3VarB.g();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Object value;
        if (obj == null) {
            return false;
        }
        h3[] h3VarArr = this.f6110c;
        long j10 = -1;
        int i6 = 0;
        while (i6 < 3) {
            int length = h3VarArr.length;
            long j11 = 0;
            for (int i10 = 0; i10 < length; i10++) {
                h3 h3Var = h3VarArr[i10];
                int i11 = h3Var.f6162b;
                AtomicReferenceArray atomicReferenceArray = h3Var.f6164e;
                for (int i12 = 0; i12 < atomicReferenceArray.length(); i12++) {
                    for (f3 f3VarB = (f3) atomicReferenceArray.get(i12); f3VarB != null; f3VarB = f3VarB.b()) {
                        if (f3VarB.getKey() == null || (value = f3VarB.getValue()) == null) {
                            h3Var.m();
                            value = null;
                        }
                        if (value != null && this.f.d().a().c(obj, value)) {
                            return true;
                        }
                    }
                }
                j11 += h3Var.f6163c;
            }
            if (j11 == j10) {
                return false;
            }
            i6++;
            j10 = j11;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        e3 e3Var = this.f6114i;
        if (e3Var != null) {
            return e3Var;
        }
        e3 e3Var2 = new e3(this, 0);
        this.f6114i = e3Var2;
        return e3Var2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Object value = null;
        if (obj == null) {
            return null;
        }
        int iA = a(obj);
        h3 h3VarB = b(iA);
        h3VarB.getClass();
        try {
            f3 f3VarD = h3VarB.d(iA, obj);
            if (f3VarD != null && (value = f3VarD.getValue()) == null) {
                h3VarB.m();
            }
            return value;
        } finally {
            h3VarB.g();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        h3[] h3VarArr = this.f6110c;
        long j10 = 0;
        for (int i6 = 0; i6 < h3VarArr.length; i6++) {
            if (h3VarArr[i6].f6162b != 0) {
                return false;
            }
            j10 += h3VarArr[i6].f6163c;
        }
        if (j10 == 0) {
            return true;
        }
        for (int i10 = 0; i10 < h3VarArr.length; i10++) {
            if (h3VarArr[i10].f6162b != 0) {
                return false;
            }
            j10 -= h3VarArr[i10].f6163c;
        }
        return j10 == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        e3 e3Var = this.f6112g;
        if (e3Var != null) {
            return e3Var;
        }
        e3 e3Var2 = new e3(this, 1);
        this.f6112g = e3Var2;
        return e3Var2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        obj.getClass();
        obj2.getClass();
        int iA = a(obj);
        return b(iA).h(iA, obj, obj2, false);
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
        int iA = a(obj);
        return b(iA).h(iA, obj, obj2, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003a, code lost:
    
        r10 = r6.getValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x003e, code lost:
    
        if (r10 == null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0045, code lost:
    
        if (r6.getValue() != null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0047, code lost:
    
        r2.f6163c++;
        r0 = r2.i(r5, r6);
        r1 = r2.f6162b - 1;
        r3.set(r4, r0);
        r2.f6162b = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x006a, code lost:
    
        return r10;
     */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object remove(java.lang.Object r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L4
            return r0
        L4:
            int r1 = r9.a(r10)
            d7.h3 r2 = r9.b(r1)
            r2.lock()
            r2.j()     // Catch: java.lang.Throwable -> L5f
            java.util.concurrent.atomic.AtomicReferenceArray r3 = r2.f6164e     // Catch: java.lang.Throwable -> L5f
            int r4 = r3.length()     // Catch: java.lang.Throwable -> L5f
            int r4 = r4 + (-1)
            r4 = r4 & r1
            java.lang.Object r5 = r3.get(r4)     // Catch: java.lang.Throwable -> L5f
            d7.f3 r5 = (d7.f3) r5     // Catch: java.lang.Throwable -> L5f
            r6 = r5
        L22:
            if (r6 == 0) goto L61
            java.lang.Object r7 = r6.getKey()     // Catch: java.lang.Throwable -> L5f
            int r8 = r6.c()     // Catch: java.lang.Throwable -> L5f
            if (r8 != r1) goto L65
            if (r7 == 0) goto L65
            d7.c4 r8 = r2.f6161a     // Catch: java.lang.Throwable -> L5f
            b7.h r8 = r8.f6111e     // Catch: java.lang.Throwable -> L5f
            boolean r7 = r8.c(r10, r7)     // Catch: java.lang.Throwable -> L5f
            if (r7 == 0) goto L65
            java.lang.Object r10 = r6.getValue()     // Catch: java.lang.Throwable -> L5f
            if (r10 == 0) goto L41
            goto L47
        L41:
            java.lang.Object r1 = r6.getValue()     // Catch: java.lang.Throwable -> L5f
            if (r1 != 0) goto L61
        L47:
            int r0 = r2.f6163c     // Catch: java.lang.Throwable -> L5f
            int r0 = r0 + 1
            r2.f6163c = r0     // Catch: java.lang.Throwable -> L5f
            d7.f3 r0 = r2.i(r5, r6)     // Catch: java.lang.Throwable -> L5f
            int r1 = r2.f6162b     // Catch: java.lang.Throwable -> L5f
            int r1 = r1 + (-1)
            r3.set(r4, r0)     // Catch: java.lang.Throwable -> L5f
            r2.f6162b = r1     // Catch: java.lang.Throwable -> L5f
            r2.unlock()
            r0 = r10
            goto L6a
        L5f:
            r10 = move-exception
            goto L6b
        L61:
            r2.unlock()
            goto L6a
        L65:
            d7.f3 r6 = r6.b()     // Catch: java.lang.Throwable -> L5f
            goto L22
        L6a:
            return r0
        L6b:
            r2.unlock()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: d7.c4.remove(java.lang.Object):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
    
        return null;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object replace(java.lang.Object r10, java.lang.Object r11) {
        /*
            r9 = this;
            r10.getClass()
            r11.getClass()
            int r0 = r9.a(r10)
            d7.h3 r1 = r9.b(r0)
            r1.lock()
            r1.j()     // Catch: java.lang.Throwable -> L5d
            java.util.concurrent.atomic.AtomicReferenceArray r2 = r1.f6164e     // Catch: java.lang.Throwable -> L5d
            int r3 = r2.length()     // Catch: java.lang.Throwable -> L5d
            int r3 = r3 + (-1)
            r3 = r3 & r0
            java.lang.Object r4 = r2.get(r3)     // Catch: java.lang.Throwable -> L5d
            d7.f3 r4 = (d7.f3) r4     // Catch: java.lang.Throwable -> L5d
            r5 = r4
        L24:
            r6 = 0
            if (r5 == 0) goto L5f
            java.lang.Object r7 = r5.getKey()     // Catch: java.lang.Throwable -> L5d
            int r8 = r5.c()     // Catch: java.lang.Throwable -> L5d
            if (r8 != r0) goto L71
            if (r7 == 0) goto L71
            d7.c4 r8 = r1.f6161a     // Catch: java.lang.Throwable -> L5d
            b7.h r8 = r8.f6111e     // Catch: java.lang.Throwable -> L5d
            boolean r7 = r8.c(r10, r7)     // Catch: java.lang.Throwable -> L5d
            if (r7 == 0) goto L71
            java.lang.Object r10 = r5.getValue()     // Catch: java.lang.Throwable -> L5d
            if (r10 != 0) goto L63
            java.lang.Object r10 = r5.getValue()     // Catch: java.lang.Throwable -> L5d
            if (r10 != 0) goto L5f
            int r10 = r1.f6163c     // Catch: java.lang.Throwable -> L5d
            int r10 = r10 + 1
            r1.f6163c = r10     // Catch: java.lang.Throwable -> L5d
            d7.f3 r10 = r1.i(r4, r5)     // Catch: java.lang.Throwable -> L5d
            int r11 = r1.f6162b     // Catch: java.lang.Throwable -> L5d
            int r11 = r11 + (-1)
            r2.set(r3, r10)     // Catch: java.lang.Throwable -> L5d
            r1.f6162b = r11     // Catch: java.lang.Throwable -> L5d
            goto L5f
        L5d:
            r10 = move-exception
            goto L77
        L5f:
            r1.unlock()
            goto L76
        L63:
            int r0 = r1.f6163c     // Catch: java.lang.Throwable -> L5d
            int r0 = r0 + 1
            r1.f6163c = r0     // Catch: java.lang.Throwable -> L5d
            r1.l(r5, r11)     // Catch: java.lang.Throwable -> L5d
            r1.unlock()
            r6 = r10
            goto L76
        L71:
            d7.f3 r5 = r5.b()     // Catch: java.lang.Throwable -> L5d
            goto L24
        L76:
            return r6
        L77:
            r1.unlock()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: d7.c4.replace(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        long j10 = 0;
        for (int i6 = 0; i6 < this.f6110c.length; i6++) {
            j10 += r0[i6].f6162b;
        }
        return r4.b.K(j10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        c7.w wVar = this.f6113h;
        if (wVar != null) {
            return wVar;
        }
        c7.w wVar2 = new c7.w(this, 3);
        this.f6113h = wVar2;
        return wVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0051, code lost:
    
        if (r2.f6161a.f.d().a().c(r12, r7.getValue()) == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0053, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0059, code lost:
    
        if (r7.getValue() != null) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
    
        r2.f6163c++;
        r11 = r2.i(r6, r7);
        r12 = r2.f6162b - 1;
        r3.set(r4, r11);
        r2.f6162b = r12;
     */
    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean remove(java.lang.Object r11, java.lang.Object r12) {
        /*
            r10 = this;
            r0 = 0
            if (r11 == 0) goto L7c
            if (r12 != 0) goto L7
            goto L7c
        L7:
            int r1 = r10.a(r11)
            d7.h3 r2 = r10.b(r1)
            r2.lock()
            r2.j()     // Catch: java.lang.Throwable -> L70
            java.util.concurrent.atomic.AtomicReferenceArray r3 = r2.f6164e     // Catch: java.lang.Throwable -> L70
            int r4 = r3.length()     // Catch: java.lang.Throwable -> L70
            r5 = 1
            int r4 = r4 - r5
            r4 = r4 & r1
            java.lang.Object r6 = r3.get(r4)     // Catch: java.lang.Throwable -> L70
            d7.f3 r6 = (d7.f3) r6     // Catch: java.lang.Throwable -> L70
            r7 = r6
        L25:
            if (r7 == 0) goto L6c
            java.lang.Object r8 = r7.getKey()     // Catch: java.lang.Throwable -> L70
            int r9 = r7.c()     // Catch: java.lang.Throwable -> L70
            if (r9 != r1) goto L72
            if (r8 == 0) goto L72
            d7.c4 r9 = r2.f6161a     // Catch: java.lang.Throwable -> L70
            b7.h r9 = r9.f6111e     // Catch: java.lang.Throwable -> L70
            boolean r8 = r9.c(r11, r8)     // Catch: java.lang.Throwable -> L70
            if (r8 == 0) goto L72
            java.lang.Object r11 = r7.getValue()     // Catch: java.lang.Throwable -> L70
            d7.c4 r1 = r2.f6161a     // Catch: java.lang.Throwable -> L70
            d7.g3 r1 = r1.f     // Catch: java.lang.Throwable -> L70
            d7.k3 r1 = r1.d()     // Catch: java.lang.Throwable -> L70
            b7.h r1 = r1.a()     // Catch: java.lang.Throwable -> L70
            boolean r11 = r1.c(r12, r11)     // Catch: java.lang.Throwable -> L70
            if (r11 == 0) goto L55
            r0 = 1
            goto L5b
        L55:
            java.lang.Object r11 = r7.getValue()     // Catch: java.lang.Throwable -> L70
            if (r11 != 0) goto L6c
        L5b:
            int r11 = r2.f6163c     // Catch: java.lang.Throwable -> L70
            int r11 = r11 + r5
            r2.f6163c = r11     // Catch: java.lang.Throwable -> L70
            d7.f3 r11 = r2.i(r6, r7)     // Catch: java.lang.Throwable -> L70
            int r12 = r2.f6162b     // Catch: java.lang.Throwable -> L70
            int r12 = r12 - r5
            r3.set(r4, r11)     // Catch: java.lang.Throwable -> L70
            r2.f6162b = r12     // Catch: java.lang.Throwable -> L70
        L6c:
            r2.unlock()
            goto L77
        L70:
            r11 = move-exception
            goto L78
        L72:
            d7.f3 r7 = r7.b()     // Catch: java.lang.Throwable -> L70
            goto L25
        L77:
            return r0
        L78:
            r2.unlock()
            throw r11
        L7c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d7.c4.remove(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // java.util.Map, java.util.concurrent.ConcurrentMap
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        obj.getClass();
        obj3.getClass();
        if (obj2 == null) {
            return false;
        }
        int iA = a(obj);
        h3 h3VarB = b(iA);
        h3VarB.lock();
        try {
            h3VarB.j();
            AtomicReferenceArray atomicReferenceArray = h3VarB.f6164e;
            int length = (atomicReferenceArray.length() - 1) & iA;
            f3 f3Var = (f3) atomicReferenceArray.get(length);
            f3 f3VarB = f3Var;
            while (true) {
                if (f3VarB == null) {
                    break;
                }
                Object key = f3VarB.getKey();
                if (f3VarB.c() == iA && key != null && h3VarB.f6161a.f6111e.c(obj, key)) {
                    Object value = f3VarB.getValue();
                    if (value == null) {
                        if (f3VarB.getValue() == null) {
                            h3VarB.f6163c++;
                            f3 f3VarI = h3VarB.i(f3Var, f3VarB);
                            int i6 = h3VarB.f6162b - 1;
                            atomicReferenceArray.set(length, f3VarI);
                            h3VarB.f6162b = i6;
                        }
                    } else if (h3VarB.f6161a.f.d().a().c(obj2, value)) {
                        h3VarB.f6163c++;
                        h3VarB.l(f3VarB, obj3);
                        h3VarB.unlock();
                        return true;
                    }
                } else {
                    f3VarB = f3VarB.b();
                }
            }
            return false;
        } finally {
            h3VarB.unlock();
        }
    }
}
