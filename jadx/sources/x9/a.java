package x9;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import t9.e1;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final u7.b f11101a = new u7.b("NO_DECISION", 1);

    /* renamed from: b, reason: collision with root package name */
    public static final u7.b f11102b = new u7.b("CLOSED", 1);

    /* renamed from: c, reason: collision with root package name */
    public static final u7.b f11103c = new u7.b("UNDEFINED", 1);
    public static final u7.b d = new u7.b("REUSABLE_CLAIMED", 1);

    /* renamed from: e, reason: collision with root package name */
    public static final u7.b f11104e = new u7.b("CONDITION_FALSE", 1);
    public static final u7.b f = new u7.b("NO_THREAD_ELEMENTS", 1);

    public static final void a(int i6) {
        if (i6 < 1) {
            throw new IllegalArgumentException(a.e.n(i6, "Expected positive parallelism level, but got ").toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object, x9.s] */
    /* JADX WARN: Type inference failed for: r0v4, types: [x9.s] */
    /* JADX WARN: Type inference failed for: r0v5 */
    public static final Object b(aa.g gVar, long j10, i9.p pVar) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        while (true) {
            if (gVar.f11130c >= j10 && !gVar.a()) {
                return gVar;
            }
            Object obj = c.f11106a.get(gVar);
            u7.b bVar = f11102b;
            if (obj == bVar) {
                return bVar;
            }
            ?? r02 = (s) ((c) obj);
            if (r02 == 0) {
                r02 = (s) pVar.invoke(Long.valueOf(gVar.f11130c + 1), gVar);
                do {
                    atomicReferenceFieldUpdater = c.f11106a;
                    if (atomicReferenceFieldUpdater.compareAndSet(gVar, null, r02)) {
                        if (gVar.a()) {
                            gVar.b();
                        }
                    }
                } while (atomicReferenceFieldUpdater.get(gVar) == null);
            }
            gVar = r02;
        }
    }

    public static final s c(Object obj) {
        if (obj == f11102b) {
            throw new IllegalStateException("Does not contain segment");
        }
        j9.i.d(obj, "null cannot be cast to non-null type S of kotlinx.coroutines.internal.SegmentOrClosed");
        return (s) obj;
    }

    public static final void d(a9.i iVar, Throwable th) {
        Throwable runtimeException;
        Iterator it = e.f11109a.iterator();
        while (it.hasNext()) {
            try {
                ((t9.r) it.next()).b(iVar, th);
            } catch (Throwable th2) {
                if (th == th2) {
                    runtimeException = th;
                } else {
                    runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
                    l5.a.a(runtimeException, th);
                }
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, runtimeException);
            }
        }
        try {
            l5.a.a(th, new f(iVar));
        } catch (Throwable unused) {
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }

    public static final void e(a9.i iVar, Object obj) {
        if (obj == f) {
            return;
        }
        if (!(obj instanceof w)) {
            Object objA = iVar.a(null, u.f11133c);
            j9.i.d(objA, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            ea.q.n(objA);
            throw null;
        }
        w wVar = (w) obj;
        e1[] e1VarArr = wVar.f11137b;
        int length = e1VarArr.length - 1;
        if (length < 0) {
            return;
        }
        e1 e1Var = e1VarArr[length];
        j9.i.c(null);
        Object obj2 = wVar.f11136a[length];
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00a5 A[Catch: all -> 0x0084, DONT_GENERATE, TryCatch #2 {all -> 0x0084, blocks: (B:20:0x005f, B:22:0x006d, B:24:0x0073, B:37:0x00a8, B:27:0x0086, B:29:0x0094, B:34:0x009f, B:36:0x00a5, B:42:0x00b5, B:45:0x00be, B:44:0x00bb, B:32:0x009a), top: B:57:0x005f, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void f(a9.d r8, java.lang.Object r9, i9.l r10) {
        /*
            boolean r0 = r8 instanceof x9.g
            if (r0 == 0) goto Lc8
            x9.g r8 = (x9.g) r8
            java.lang.Throwable r0 = w8.h.a(r9)
            if (r0 != 0) goto L16
            if (r10 == 0) goto L14
            t9.l r0 = new t9.l
            r0.<init>(r9, r10)
            goto L1d
        L14:
            r0 = r9
            goto L1d
        L16:
            t9.k r10 = new t9.k
            r1 = 0
            r10.<init>(r0, r1)
            r0 = r10
        L1d:
            c9.c r10 = r8.f11112e
            r10.getContext()
            t9.p r1 = r8.d
            boolean r2 = r1.g()
            r3 = 1
            if (r2 == 0) goto L38
            r8.f = r0
            r8.f10177c = r3
            a9.i r9 = r10.getContext()
            r1.d(r9, r8)
            goto Lcb
        L38:
            t9.g0 r1 = t9.f1.a()
            long r4 = r1.f10192c
            r6 = 4294967296(0x100000000, double:2.121995791E-314)
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L5b
            r8.f = r0
            r8.f10177c = r3
            x8.h r9 = r1.f10193e
            if (r9 != 0) goto L56
            x8.h r9 = new x8.h
            r9.<init>()
            r1.f10193e = r9
        L56:
            r9.addLast(r8)
            goto Lcb
        L5b:
            r1.j(r3)
            r2 = 0
            a9.i r3 = r10.getContext()     // Catch: java.lang.Throwable -> L84
            t9.q r4 = t9.q.f10225b     // Catch: java.lang.Throwable -> L84
            a9.g r3 = r3.e(r4)     // Catch: java.lang.Throwable -> L84
            t9.q0 r3 = (t9.q0) r3     // Catch: java.lang.Throwable -> L84
            if (r3 == 0) goto L86
            boolean r4 = r3.isActive()     // Catch: java.lang.Throwable -> L84
            if (r4 != 0) goto L86
            t9.y0 r3 = (t9.y0) r3     // Catch: java.lang.Throwable -> L84
            java.util.concurrent.CancellationException r9 = r3.q()     // Catch: java.lang.Throwable -> L84
            r8.a(r0, r9)     // Catch: java.lang.Throwable -> L84
            w8.g r9 = o9.d.f(r9)     // Catch: java.lang.Throwable -> L84
            r8.resumeWith(r9)     // Catch: java.lang.Throwable -> L84
            goto La8
        L84:
            r9 = move-exception
            goto Lbf
        L86:
            java.lang.Object r0 = r8.f11113g     // Catch: java.lang.Throwable -> L84
            a9.i r3 = r10.getContext()     // Catch: java.lang.Throwable -> L84
            java.lang.Object r0 = j(r3, r0)     // Catch: java.lang.Throwable -> L84
            u7.b r4 = x9.a.f     // Catch: java.lang.Throwable -> L84
            if (r0 == r4) goto L99
            t9.i1 r4 = t9.u.o(r10, r3, r0)     // Catch: java.lang.Throwable -> L84
            goto L9a
        L99:
            r4 = r2
        L9a:
            r10.resumeWith(r9)     // Catch: java.lang.Throwable -> Lb2
            if (r4 == 0) goto La5
            boolean r9 = r4.J()     // Catch: java.lang.Throwable -> L84
            if (r9 == 0) goto La8
        La5:
            e(r3, r0)     // Catch: java.lang.Throwable -> L84
        La8:
            boolean r9 = r1.k()     // Catch: java.lang.Throwable -> L84
            if (r9 != 0) goto La8
        Lae:
            r1.h()
            goto Lcb
        Lb2:
            r9 = move-exception
            if (r4 == 0) goto Lbb
            boolean r10 = r4.J()     // Catch: java.lang.Throwable -> L84
            if (r10 == 0) goto Lbe
        Lbb:
            e(r3, r0)     // Catch: java.lang.Throwable -> L84
        Lbe:
            throw r9     // Catch: java.lang.Throwable -> L84
        Lbf:
            r8.e(r9, r2)     // Catch: java.lang.Throwable -> Lc3
            goto Lae
        Lc3:
            r8 = move-exception
            r1.h()
            throw r8
        Lc8:
            r8.resumeWith(r9)
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: x9.a.f(a9.d, java.lang.Object, i9.l):void");
    }

    public static final long h(String str, long j10, long j11, long j12) {
        String property;
        int i6 = t.f11131a;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        if (property == null) {
            return j10;
        }
        Long lM = r9.m.M(property);
        if (lM == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + property + '\'').toString());
        }
        long jLongValue = lM.longValue();
        if (j11 <= jLongValue && jLongValue <= j12) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j11 + ".." + j12 + ", but is '" + jLongValue + '\'').toString());
    }

    public static int i(String str, int i6, int i10, int i11, int i12) {
        if ((i12 & 4) != 0) {
            i10 = 1;
        }
        if ((i12 & 8) != 0) {
            i11 = Integer.MAX_VALUE;
        }
        return (int) h(str, i6, i10, i11);
    }

    public static final Object j(a9.i iVar, Object obj) {
        if (obj == null) {
            obj = iVar.a(0, u.f11132b);
            j9.i.c(obj);
        }
        if (obj == 0) {
            return f;
        }
        if (obj instanceof Integer) {
            return iVar.a(new w(iVar, ((Number) obj).intValue()), u.d);
        }
        ea.q.n(obj);
        throw null;
    }
}
