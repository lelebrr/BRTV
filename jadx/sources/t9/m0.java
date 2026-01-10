package t9;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m0 extends c9.i implements i9.p {

    /* renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f10215b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ androidx.lifecycle.p0 f10216c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m0(androidx.lifecycle.p0 p0Var, a9.d dVar) {
        super(dVar);
        this.f10216c = p0Var;
    }

    @Override // c9.a
    public final a9.d create(Object obj, a9.d dVar) {
        m0 m0Var = new m0(this.f10216c, dVar);
        m0Var.f10215b = obj;
        return m0Var;
    }

    @Override // i9.p
    public final Object invoke(Object obj, Object obj2) {
        return ((m0) create((s) obj, (a9.d) obj2)).invokeSuspend(w8.l.f10832a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
    
        return r0.invoke();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0044, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0045, code lost:
    
        r1.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0048, code lost:
    
        throw r5;
     */
    @Override // c9.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) throws java.lang.Throwable {
        /*
            r4 = this;
            o9.d.I(r5)
            java.lang.Object r5 = r4.f10215b
            t9.s r5 = (t9.s) r5
            a9.i r5 = r5.d()
            androidx.lifecycle.p0 r0 = r4.f10216c
            t9.g1 r1 = new t9.g1     // Catch: java.lang.InterruptedException -> L42
            t9.q0 r5 = t9.u.g(r5)     // Catch: java.lang.InterruptedException -> L42
            r1.<init>(r5)     // Catch: java.lang.InterruptedException -> L42
            t9.y0 r5 = (t9.y0) r5     // Catch: java.lang.InterruptedException -> L42
            r2 = 1
            t9.c0 r5 = r5.y(r2, r2, r1)     // Catch: java.lang.InterruptedException -> L42
            r1.f10196b = r5     // Catch: java.lang.InterruptedException -> L42
        L1f:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r5 = t9.g1.f10194c     // Catch: java.lang.InterruptedException -> L42
            int r2 = r5.get(r1)     // Catch: java.lang.InterruptedException -> L42
            if (r2 == 0) goto L33
            r5 = 2
            if (r2 == r5) goto L3a
            r5 = 3
            if (r2 != r5) goto L2e
            goto L3a
        L2e:
            t9.g1.b(r2)     // Catch: java.lang.InterruptedException -> L42
            r5 = 0
            throw r5     // Catch: java.lang.InterruptedException -> L42
        L33:
            r3 = 0
            boolean r5 = r5.compareAndSet(r1, r2, r3)     // Catch: java.lang.InterruptedException -> L42
            if (r5 == 0) goto L1f
        L3a:
            java.lang.Object r5 = r0.invoke()     // Catch: java.lang.Throwable -> L44
            r1.a()     // Catch: java.lang.InterruptedException -> L42
            return r5
        L42:
            r5 = move-exception
            goto L49
        L44:
            r5 = move-exception
            r1.a()     // Catch: java.lang.InterruptedException -> L42
            throw r5     // Catch: java.lang.InterruptedException -> L42
        L49:
            java.util.concurrent.CancellationException r0 = new java.util.concurrent.CancellationException
            java.lang.String r1 = "Blocking call was interrupted due to parent cancellation"
            r0.<init>(r1)
            java.lang.Throwable r5 = r0.initCause(r5)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: t9.m0.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
