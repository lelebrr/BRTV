package z9;

import j9.n;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends Thread {

    /* renamed from: i, reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f11675i = AtomicIntegerFieldUpdater.newUpdater(a.class, "workerCtl");

    /* renamed from: a, reason: collision with root package name */
    public final l f11676a;

    /* renamed from: b, reason: collision with root package name */
    public final n f11677b;

    /* renamed from: c, reason: collision with root package name */
    public int f11678c;
    public long d;

    /* renamed from: e, reason: collision with root package name */
    public long f11679e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f11680g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ b f11681h;
    private volatile int indexInArray;
    private volatile Object nextParkedWorker;
    private volatile int workerCtl;

    public a(b bVar, int i6) {
        this.f11681h = bVar;
        setDaemon(true);
        this.f11676a = new l();
        this.f11677b = new n();
        this.f11678c = 4;
        this.nextParkedWorker = b.f11685k;
        m9.e.f8279a.getClass();
        this.f = m9.e.f8280b.a().nextInt();
        f(i6);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0043, code lost:
    
        r12 = z9.l.d.get(r3);
        r0 = z9.l.f11705c.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004f, code lost:
    
        if (r12 == r0) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0057, code lost:
    
        if (z9.l.f11706e.get(r3) != 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x005a, code lost:
    
        r0 = r0 - 1;
        r5 = r3.c(r0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0060, code lost:
    
        if (r5 == null) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0062, code lost:
    
        r2 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final z9.h a(boolean r12) {
        /*
            r11 = this;
            int r0 = r11.f11678c
            r1 = 1
            r2 = 0
            z9.l r3 = r11.f11676a
            z9.b r4 = r11.f11681h
            if (r0 != r1) goto Lc
            goto L86
        Lc:
            java.util.concurrent.atomic.AtomicLongFieldUpdater r0 = z9.b.f11683i
        Le:
            z9.b r6 = r11.f11681h
            long r7 = r0.get(r6)
            r9 = 9223367638808264704(0x7ffffc0000000000, double:NaN)
            long r9 = r9 & r7
            r5 = 42
            long r9 = r9 >> r5
            int r5 = (int) r9
            if (r5 != 0) goto L75
            r3.getClass()
        L23:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r12 = z9.l.f11704b
            java.lang.Object r0 = r12.get(r3)
            z9.h r0 = (z9.h) r0
            if (r0 != 0) goto L2e
            goto L43
        L2e:
            androidx.leanback.widget.o r5 = r0.f11695b
            int r5 = r5.f1866a
            if (r5 != r1) goto L43
        L34:
            boolean r5 = r12.compareAndSet(r3, r0, r2)
            if (r5 == 0) goto L3c
            r2 = r0
            goto L63
        L3c:
            java.lang.Object r5 = r12.get(r3)
            if (r5 == r0) goto L34
            goto L23
        L43:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r12 = z9.l.d
            int r12 = r12.get(r3)
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = z9.l.f11705c
            int r0 = r0.get(r3)
        L4f:
            if (r12 == r0) goto L63
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r5 = z9.l.f11706e
            int r5 = r5.get(r3)
            if (r5 != 0) goto L5a
            goto L63
        L5a:
            int r0 = r0 + (-1)
            z9.h r5 = r3.c(r0, r1)
            if (r5 == 0) goto L4f
            r2 = r5
        L63:
            if (r2 != 0) goto L74
            z9.e r12 = r4.f
            java.lang.Object r12 = r12.d()
            r2 = r12
            z9.h r2 = (z9.h) r2
            if (r2 != 0) goto L74
            z9.h r2 = r11.i(r1)
        L74:
            return r2
        L75:
            r9 = 4398046511104(0x40000000000, double:2.1729236899484E-311)
            long r9 = r7 - r9
            java.util.concurrent.atomic.AtomicLongFieldUpdater r5 = z9.b.f11683i
            boolean r5 = r5.compareAndSet(r6, r7, r9)
            if (r5 == 0) goto Le
            r11.f11678c = r1
        L86:
            if (r12 == 0) goto Lba
            int r12 = r4.f11686a
            int r12 = r12 * 2
            int r12 = r11.d(r12)
            if (r12 != 0) goto L93
            goto L94
        L93:
            r1 = 0
        L94:
            if (r1 == 0) goto L9d
            z9.h r12 = r11.e()
            if (r12 == 0) goto L9d
            goto Lc6
        L9d:
            r3.getClass()
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r12 = z9.l.f11704b
            java.lang.Object r12 = r12.getAndSet(r3, r2)
            z9.h r12 = (z9.h) r12
            if (r12 != 0) goto Lae
            z9.h r12 = r3.b()
        Lae:
            if (r12 == 0) goto Lb1
            goto Lc6
        Lb1:
            if (r1 != 0) goto Lc1
            z9.h r12 = r11.e()
            if (r12 == 0) goto Lc1
            goto Lc6
        Lba:
            z9.h r12 = r11.e()
            if (r12 == 0) goto Lc1
            goto Lc6
        Lc1:
            r12 = 3
            z9.h r12 = r11.i(r12)
        Lc6:
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: z9.a.a(boolean):z9.h");
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i6) {
        int i10 = this.f;
        int i11 = i10 ^ (i10 << 13);
        int i12 = i11 ^ (i11 >> 17);
        int i13 = i12 ^ (i12 << 5);
        this.f = i13;
        int i14 = i6 - 1;
        return (i14 & i6) == 0 ? i13 & i14 : (i13 & Integer.MAX_VALUE) % i6;
    }

    public final h e() {
        int iD = d(2);
        b bVar = this.f11681h;
        if (iD == 0) {
            h hVar = (h) bVar.f11689e.d();
            return hVar != null ? hVar : (h) bVar.f.d();
        }
        h hVar2 = (h) bVar.f.d();
        return hVar2 != null ? hVar2 : (h) bVar.f11689e.d();
    }

    public final void f(int i6) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11681h.d);
        sb.append("-worker-");
        sb.append(i6 == 0 ? "TERMINATED" : String.valueOf(i6));
        setName(sb.toString());
        this.indexInArray = i6;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(int i6) {
        int i10 = this.f11678c;
        boolean z7 = i10 == 1;
        if (z7) {
            b.f11683i.addAndGet(this.f11681h, 4398046511104L);
        }
        if (i10 != i6) {
            this.f11678c = i6;
        }
        return z7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0082, code lost:
    
        r19 = r6;
        r6 = -2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final z9.h i(int r24) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z9.a.i(int):z9.h");
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x0004, code lost:
    
        continue;
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 401
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z9.a.run():void");
    }
}
