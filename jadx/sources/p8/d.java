package p8;

import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends AtomicInteger implements i8.c, Runnable, s8.a {

    /* renamed from: a, reason: collision with root package name */
    public final i8.c f8916a;

    /* renamed from: b, reason: collision with root package name */
    public final i8.e f8917b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8918c;
    public s8.b d;

    /* renamed from: e, reason: collision with root package name */
    public Object f8919e;
    public Throwable f;

    /* renamed from: g, reason: collision with root package name */
    public volatile boolean f8920g;

    /* renamed from: h, reason: collision with root package name */
    public volatile boolean f8921h;

    /* renamed from: i, reason: collision with root package name */
    public int f8922i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8923j;

    public d(i8.c cVar, i8.e eVar, int i6) {
        this.f8916a = cVar;
        this.f8917b = eVar;
        this.f8918c = i6;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [j8.b, java.lang.Object] */
    @Override // j8.b
    public final void a() {
        if (this.f8921h) {
            return;
        }
        this.f8921h = true;
        this.f8919e.a();
        this.f8917b.a();
        if (this.f8923j || getAndIncrement() != 0) {
            return;
        }
        this.d.clear();
    }

    @Override // i8.c
    public final void b() {
        if (this.f8920g) {
            return;
        }
        this.f8920g = true;
        if (getAndIncrement() == 0) {
            this.f8917b.c(this);
        }
    }

    @Override // i8.c
    public final void c(j8.b bVar) {
        if (this.f8919e != null) {
            bVar.a();
            com.bumptech.glide.d.y(new k8.d("Disposable already set!"));
            return;
        }
        this.f8919e = bVar;
        if (bVar instanceof s8.a) {
            s8.a aVar = (s8.a) bVar;
            int iE = aVar.e();
            if (iE == 1) {
                this.f8922i = iE;
                this.d = aVar;
                this.f8920g = true;
                this.f8916a.c(this);
                if (getAndIncrement() == 0) {
                    this.f8917b.c(this);
                    return;
                }
                return;
            }
            if (iE == 2) {
                this.f8922i = iE;
                this.d = aVar;
                this.f8916a.c(this);
                return;
            }
        }
        this.d = new s8.c(this.f8918c);
        this.f8916a.c(this);
    }

    @Override // s8.b
    public final void clear() {
        this.d.clear();
    }

    @Override // i8.c
    public final void d(Throwable th) {
        if (this.f8920g) {
            com.bumptech.glide.d.y(th);
            return;
        }
        this.f = th;
        this.f8920g = true;
        if (getAndIncrement() == 0) {
            this.f8917b.c(this);
        }
    }

    @Override // s8.a
    public final int e() {
        this.f8923j = true;
        return 2;
    }

    @Override // i8.c
    public final void f(Object obj) {
        if (this.f8920g) {
            return;
        }
        if (this.f8922i != 2) {
            this.d.offer(obj);
        }
        if (getAndIncrement() == 0) {
            this.f8917b.c(this);
        }
    }

    public final boolean g(boolean z7, boolean z10, i8.c cVar) {
        if (this.f8921h) {
            this.d.clear();
            return true;
        }
        if (!z7) {
            return false;
        }
        Throwable th = this.f;
        if (th != null) {
            this.f8921h = true;
            this.d.clear();
            cVar.d(th);
            this.f8917b.a();
            return true;
        }
        if (!z10) {
            return false;
        }
        this.f8921h = true;
        cVar.b();
        this.f8917b.a();
        return true;
    }

    @Override // s8.b
    public final boolean isEmpty() {
        return this.d.isEmpty();
    }

    @Override // s8.b
    public final boolean offer(Object obj) {
        throw new UnsupportedOperationException("Should not be called");
    }

    @Override // s8.b
    public final Object poll() {
        return this.d.poll();
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0071, code lost:
    
        r3 = addAndGet(-r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0076, code lost:
    
        if (r3 != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:?, code lost:
    
        return;
     */
    /* JADX WARN: Type inference failed for: r1v1, types: [j8.b, java.lang.Object] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            r7 = this;
            boolean r0 = r7.f8923j
            r1 = 1
            if (r0 == 0) goto L4b
            r0 = 1
        L6:
            boolean r2 = r7.f8921h
            if (r2 == 0) goto Lc
            goto L93
        Lc:
            boolean r2 = r7.f8920g
            java.lang.Throwable r3 = r7.f
            if (r2 == 0) goto L24
            if (r3 == 0) goto L24
            r7.f8921h = r1
            i8.c r0 = r7.f8916a
            java.lang.Throwable r1 = r7.f
            r0.d(r1)
            i8.e r0 = r7.f8917b
            r0.a()
            goto L93
        L24:
            i8.c r3 = r7.f8916a
            r4 = 0
            r3.f(r4)
            if (r2 == 0) goto L43
            r7.f8921h = r1
            java.lang.Throwable r0 = r7.f
            if (r0 == 0) goto L38
            i8.c r1 = r7.f8916a
            r1.d(r0)
            goto L3d
        L38:
            i8.c r0 = r7.f8916a
            r0.b()
        L3d:
            i8.e r0 = r7.f8917b
            r0.a()
            goto L93
        L43:
            int r0 = -r0
            int r0 = r7.addAndGet(r0)
            if (r0 != 0) goto L6
            goto L93
        L4b:
            s8.b r0 = r7.d
            i8.c r2 = r7.f8916a
            r3 = 1
        L50:
            boolean r4 = r7.f8920g
            boolean r5 = r0.isEmpty()
            boolean r4 = r7.g(r4, r5, r2)
            if (r4 == 0) goto L5d
            goto L93
        L5d:
            boolean r4 = r7.f8920g
            java.lang.Object r5 = r0.poll()     // Catch: java.lang.Throwable -> L7d
            if (r5 != 0) goto L67
            r6 = 1
            goto L68
        L67:
            r6 = 0
        L68:
            boolean r4 = r7.g(r4, r6, r2)
            if (r4 == 0) goto L6f
            goto L93
        L6f:
            if (r6 == 0) goto L79
            int r3 = -r3
            int r3 = r7.addAndGet(r3)
            if (r3 != 0) goto L50
            goto L93
        L79:
            r2.f(r5)
            goto L5d
        L7d:
            r3 = move-exception
            com.bumptech.glide.d.G(r3)
            r7.f8921h = r1
            java.lang.Object r1 = r7.f8919e
            r1.a()
            r0.clear()
            r2.d(r3)
            i8.e r0 = r7.f8917b
            r0.a()
        L93:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p8.d.run():void");
    }
}
