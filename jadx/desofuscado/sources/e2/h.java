package e2;

import androidx.media3.extractor.metadata.icy.IcyHeaders;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import okio.BufferedSink;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import r9.n;
import t9.d1;
import t9.q;
import t9.t0;
import t9.u;
import w8.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h implements Closeable, Flushable {

    /* renamed from: q, reason: collision with root package name */
    public static final r9.e f6462q = new r9.e("[a-z0-9_-]{1,120}");

    /* renamed from: a, reason: collision with root package name */
    public final Path f6463a;

    /* renamed from: b, reason: collision with root package name */
    public final long f6464b;

    /* renamed from: c, reason: collision with root package name */
    public final Path f6465c;
    public final Path d;

    /* renamed from: e, reason: collision with root package name */
    public final Path f6466e;
    public final LinkedHashMap f;

    /* renamed from: g, reason: collision with root package name */
    public final x9.d f6467g;

    /* renamed from: h, reason: collision with root package name */
    public long f6468h;

    /* renamed from: i, reason: collision with root package name */
    public int f6469i;

    /* renamed from: j, reason: collision with root package name */
    public BufferedSink f6470j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f6471k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f6472l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6473m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f6474n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f6475o;

    /* renamed from: p, reason: collision with root package name */
    public final f f6476p;

    public h(long j10, FileSystem fileSystem, Path path, z9.c cVar) {
        this.f6463a = path;
        this.f6464b = j10;
        if (j10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.f6465c = path.resolve("journal");
        this.d = path.resolve("journal.tmp");
        this.f6466e = path.resolve("journal.bkp");
        this.f = new LinkedHashMap(0, 0.75f, true);
        d1 d1Var = new d1(null);
        cVar.getClass();
        a9.i iVarJ = com.bumptech.glide.c.j(d1Var, z9.k.f11703c.h(1));
        this.f6467g = new x9.d(iVarJ.e(q.f10225b) == null ? iVarJ.f(new t0(null)) : iVarJ);
        this.f6476p = new f(fileSystem);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x011d A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:7:0x0011, B:11:0x0018, B:13:0x0020, B:15:0x0030, B:23:0x003f, B:25:0x0057, B:29:0x0074, B:31:0x0084, B:33:0x008b, B:26:0x005d, B:28:0x006d, B:37:0x00ab, B:39:0x00b2, B:42:0x00b7, B:44:0x00c8, B:47:0x00cd, B:52:0x0109, B:54:0x0114, B:58:0x011d, B:48:0x00e5, B:50:0x00fa, B:51:0x0106, B:36:0x009b, B:61:0x0122, B:62:0x0129), top: B:65:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final void a(e2.h r9, e2.c r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: e2.h.a(e2.h, e2.c, boolean):void");
    }

    public static void k(String str) {
        r9.e eVar = f6462q;
        eVar.getClass();
        j9.i.f(str, "input");
        if (eVar.f9625a.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    public final synchronized c b(String str) {
        try {
            if (this.f6473m) {
                throw new IllegalStateException("cache is closed");
            }
            k(str);
            d();
            d dVar = (d) this.f.get(str);
            if ((dVar != null ? dVar.f6455g : null) != null) {
                return null;
            }
            if (dVar != null && dVar.f6456h != 0) {
                return null;
            }
            if (!this.f6474n && !this.f6475o) {
                BufferedSink bufferedSink = this.f6470j;
                j9.i.c(bufferedSink);
                bufferedSink.writeUtf8("DIRTY");
                bufferedSink.writeByte(32);
                bufferedSink.writeUtf8(str);
                bufferedSink.writeByte(10);
                bufferedSink.flush();
                if (this.f6471k) {
                    return null;
                }
                if (dVar == null) {
                    dVar = new d(this, str);
                    this.f.put(str, dVar);
                }
                c cVar = new c(this, dVar);
                dVar.f6455g = cVar;
                return cVar;
            }
            e();
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized e c(String str) {
        e eVarA;
        if (this.f6473m) {
            throw new IllegalStateException("cache is closed");
        }
        k(str);
        d();
        d dVar = (d) this.f.get(str);
        if (dVar != null && (eVarA = dVar.a()) != null) {
            boolean z7 = true;
            this.f6469i++;
            BufferedSink bufferedSink = this.f6470j;
            j9.i.c(bufferedSink);
            bufferedSink.writeUtf8("READ");
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(str);
            bufferedSink.writeByte(10);
            if (this.f6469i < 2000) {
                z7 = false;
            }
            if (z7) {
                e();
            }
            return eVarA;
        }
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.f6472l && !this.f6473m) {
                for (d dVar : (d[]) this.f.values().toArray(new d[0])) {
                    c cVar = dVar.f6455g;
                    if (cVar != null) {
                        d dVar2 = (d) cVar.f6449b;
                        if (j9.i.a(dVar2.f6455g, cVar)) {
                            dVar2.f = true;
                        }
                    }
                }
                j();
                u.d(this.f6467g);
                BufferedSink bufferedSink = this.f6470j;
                j9.i.c(bufferedSink);
                bufferedSink.close();
                this.f6470j = null;
                this.f6473m = true;
                return;
            }
            this.f6473m = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d() {
        try {
            if (this.f6472l) {
                return;
            }
            this.f6476p.delete(this.d);
            if (this.f6476p.exists(this.f6466e)) {
                if (this.f6476p.exists(this.f6465c)) {
                    this.f6476p.delete(this.f6466e);
                } else {
                    this.f6476p.atomicMove(this.f6466e, this.f6465c);
                }
            }
            if (this.f6476p.exists(this.f6465c)) {
                try {
                    g();
                    f();
                    this.f6472l = true;
                    return;
                } catch (IOException unused) {
                    try {
                        close();
                        o9.e.o(this.f6476p, this.f6463a);
                        this.f6473m = false;
                    } catch (Throwable th) {
                        this.f6473m = false;
                        throw th;
                    }
                }
            }
            l();
            this.f6472l = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final void e() {
        u.k(this.f6467g, null, new g(this, null), 3);
    }

    public final void f() throws IOException {
        Iterator it = this.f.values().iterator();
        long j10 = 0;
        while (it.hasNext()) {
            d dVar = (d) it.next();
            int i6 = 0;
            if (dVar.f6455g == null) {
                while (i6 < 2) {
                    j10 += dVar.f6452b[i6];
                    i6++;
                }
            } else {
                dVar.f6455g = null;
                while (i6 < 2) {
                    Path path = (Path) dVar.f6453c.get(i6);
                    f fVar = this.f6476p;
                    fVar.delete(path);
                    fVar.delete((Path) dVar.d.get(i6));
                    i6++;
                }
                it.remove();
            }
        }
        this.f6468h = j10;
    }

    @Override // java.io.Flushable
    public final synchronized void flush() {
        if (this.f6472l) {
            if (this.f6473m) {
                throw new IllegalStateException("cache is closed");
            }
            j();
            BufferedSink bufferedSink = this.f6470j;
            j9.i.c(bufferedSink);
            bufferedSink.flush();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void g() throws java.lang.Throwable {
        /*
            r13 = this;
            java.lang.String r0 = ", "
            java.lang.String r1 = "unexpected journal header: ["
            e2.f r2 = r13.f6476p
            okio.Path r3 = r13.f6465c
            okio.Source r4 = r2.source(r3)
            okio.BufferedSource r4 = okio.Okio.buffer(r4)
            r5 = 0
            java.lang.String r6 = r4.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r7 = r4.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r8 = r4.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r9 = r4.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r10 = r4.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c
            java.lang.String r11 = "libcore.io.DiskLruCache"
            boolean r11 = r11.equals(r6)     // Catch: java.lang.Throwable -> L5c
            if (r11 == 0) goto L8e
            java.lang.String r11 = "1"
            boolean r11 = r11.equals(r7)     // Catch: java.lang.Throwable -> L5c
            if (r11 == 0) goto L8e
            r11 = 1
            java.lang.String r11 = java.lang.String.valueOf(r11)     // Catch: java.lang.Throwable -> L5c
            boolean r11 = j9.i.a(r11, r8)     // Catch: java.lang.Throwable -> L5c
            if (r11 == 0) goto L8e
            r11 = 2
            java.lang.String r11 = java.lang.String.valueOf(r11)     // Catch: java.lang.Throwable -> L5c
            boolean r11 = j9.i.a(r11, r9)     // Catch: java.lang.Throwable -> L5c
            if (r11 == 0) goto L8e
            int r11 = r10.length()     // Catch: java.lang.Throwable -> L5c
            if (r11 > 0) goto L8e
            r0 = 0
        L52:
            java.lang.String r1 = r4.readUtf8LineStrict()     // Catch: java.lang.Throwable -> L5c java.io.EOFException -> L5e
            r13.h(r1)     // Catch: java.lang.Throwable -> L5c java.io.EOFException -> L5e
            int r0 = r0 + 1
            goto L52
        L5c:
            r0 = move-exception
            goto Lbd
        L5e:
            java.util.LinkedHashMap r1 = r13.f     // Catch: java.lang.Throwable -> L5c
            int r1 = r1.size()     // Catch: java.lang.Throwable -> L5c
            int r0 = r0 - r1
            r13.f6469i = r0     // Catch: java.lang.Throwable -> L5c
            boolean r0 = r4.exhausted()     // Catch: java.lang.Throwable -> L5c
            if (r0 != 0) goto L71
            r13.l()     // Catch: java.lang.Throwable -> L5c
            goto L86
        L71:
            okio.Sink r0 = r2.appendingSink(r3)     // Catch: java.lang.Throwable -> L5c
            e2.i r1 = new e2.i     // Catch: java.lang.Throwable -> L5c
            aa.c r2 = new aa.c     // Catch: java.lang.Throwable -> L5c
            r3 = 1
            r2.<init>(r3, r13)     // Catch: java.lang.Throwable -> L5c
            r1.<init>(r0, r2)     // Catch: java.lang.Throwable -> L5c
            okio.BufferedSink r0 = okio.Okio.buffer(r1)     // Catch: java.lang.Throwable -> L5c
            r13.f6470j = r0     // Catch: java.lang.Throwable -> L5c
        L86:
            w8.l r0 = w8.l.f10832a     // Catch: java.lang.Throwable -> L5c
            r4.close()     // Catch: java.lang.Throwable -> L8c
            goto Lca
        L8c:
            r5 = move-exception
            goto Lca
        L8e:
            java.io.IOException r2 = new java.io.IOException     // Catch: java.lang.Throwable -> L5c
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L5c
            r3.append(r6)     // Catch: java.lang.Throwable -> L5c
            r3.append(r0)     // Catch: java.lang.Throwable -> L5c
            r3.append(r7)     // Catch: java.lang.Throwable -> L5c
            r3.append(r0)     // Catch: java.lang.Throwable -> L5c
            r3.append(r8)     // Catch: java.lang.Throwable -> L5c
            r3.append(r0)     // Catch: java.lang.Throwable -> L5c
            r3.append(r9)     // Catch: java.lang.Throwable -> L5c
            r3.append(r0)     // Catch: java.lang.Throwable -> L5c
            r3.append(r10)     // Catch: java.lang.Throwable -> L5c
            r0 = 93
            r3.append(r0)     // Catch: java.lang.Throwable -> L5c
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L5c
            r2.<init>(r0)     // Catch: java.lang.Throwable -> L5c
            throw r2     // Catch: java.lang.Throwable -> L5c
        Lbd:
            if (r4 == 0) goto Lc7
            r4.close()     // Catch: java.lang.Throwable -> Lc3
            goto Lc7
        Lc3:
            r1 = move-exception
            l5.a.a(r0, r1)
        Lc7:
            r12 = r5
            r5 = r0
            r0 = r12
        Lca:
            if (r5 != 0) goto Ld0
            j9.i.c(r0)
            return
        Ld0:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: e2.h.g():void");
    }

    public final void h(String str) throws IOException {
        String strSubstring;
        int iB0 = r9.f.b0(str, ' ', 0, false, 6);
        if (iB0 == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i6 = iB0 + 1;
        int iB02 = r9.f.b0(str, ' ', i6, false, 4);
        LinkedHashMap linkedHashMap = this.f;
        if (iB02 == -1) {
            strSubstring = str.substring(i6);
            j9.i.e(strSubstring, "substring(...)");
            if (iB0 == 6 && n.V(str, "REMOVE", false)) {
                linkedHashMap.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i6, iB02);
            j9.i.e(strSubstring, "substring(...)");
        }
        Object dVar = linkedHashMap.get(strSubstring);
        if (dVar == null) {
            dVar = new d(this, strSubstring);
            linkedHashMap.put(strSubstring, dVar);
        }
        d dVar2 = (d) dVar;
        if (iB02 == -1 || iB0 != 5 || !n.V(str, "CLEAN", false)) {
            if (iB02 == -1 && iB0 == 5 && n.V(str, "DIRTY", false)) {
                dVar2.f6455g = new c(this, dVar2);
                return;
            } else {
                if (iB02 != -1 || iB0 != 4 || !n.V(str, "READ", false)) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        String strSubstring2 = str.substring(iB02 + 1);
        j9.i.e(strSubstring2, "substring(...)");
        List listH0 = r9.f.h0(strSubstring2, new char[]{' '});
        dVar2.f6454e = true;
        dVar2.f6455g = null;
        int size = listH0.size();
        dVar2.f6457i.getClass();
        if (size != 2) {
            throw new IOException("unexpected journal line: " + listH0);
        }
        try {
            int size2 = listH0.size();
            for (int i10 = 0; i10 < size2; i10++) {
                dVar2.f6452b[i10] = Long.parseLong((String) listH0.get(i10));
            }
        } catch (NumberFormatException unused) {
            throw new IOException("unexpected journal line: " + listH0);
        }
    }

    public final void i(d dVar) {
        BufferedSink bufferedSink;
        int i6 = dVar.f6456h;
        String str = dVar.f6451a;
        if (i6 > 0 && (bufferedSink = this.f6470j) != null) {
            bufferedSink.writeUtf8("DIRTY");
            bufferedSink.writeByte(32);
            bufferedSink.writeUtf8(str);
            bufferedSink.writeByte(10);
            bufferedSink.flush();
        }
        if (dVar.f6456h > 0 || dVar.f6455g != null) {
            dVar.f = true;
            return;
        }
        for (int i10 = 0; i10 < 2; i10++) {
            this.f6476p.delete((Path) dVar.f6453c.get(i10));
            long j10 = this.f6468h;
            long[] jArr = dVar.f6452b;
            this.f6468h = j10 - jArr[i10];
            jArr[i10] = 0;
        }
        this.f6469i++;
        BufferedSink bufferedSink2 = this.f6470j;
        if (bufferedSink2 != null) {
            bufferedSink2.writeUtf8("REMOVE");
            bufferedSink2.writeByte(32);
            bufferedSink2.writeUtf8(str);
            bufferedSink2.writeByte(10);
        }
        this.f.remove(str);
        if (this.f6469i >= 2000) {
            e();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        i(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void j() {
        /*
            r5 = this;
        L0:
            long r0 = r5.f6468h
            long r2 = r5.f6464b
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto L27
            java.util.LinkedHashMap r0 = r5.f
            java.util.Collection r0 = r0.values()
            java.util.Iterator r0 = r0.iterator()
        L12:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L26
            java.lang.Object r1 = r0.next()
            e2.d r1 = (e2.d) r1
            boolean r2 = r1.f
            if (r2 != 0) goto L12
            r5.i(r1)
            goto L0
        L26:
            return
        L27:
            r0 = 0
            r5.f6474n = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e2.h.j():void");
    }

    public final synchronized void l() {
        l lVar;
        try {
            BufferedSink bufferedSink = this.f6470j;
            if (bufferedSink != null) {
                bufferedSink.close();
            }
            BufferedSink bufferedSinkBuffer = Okio.buffer(this.f6476p.sink(this.d, false));
            Throwable th = null;
            try {
                bufferedSinkBuffer.writeUtf8("libcore.io.DiskLruCache").writeByte(10);
                bufferedSinkBuffer.writeUtf8(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(1).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(2).writeByte(10);
                bufferedSinkBuffer.writeByte(10);
                for (d dVar : this.f.values()) {
                    if (dVar.f6455g != null) {
                        bufferedSinkBuffer.writeUtf8("DIRTY");
                        bufferedSinkBuffer.writeByte(32);
                        bufferedSinkBuffer.writeUtf8(dVar.f6451a);
                        bufferedSinkBuffer.writeByte(10);
                    } else {
                        bufferedSinkBuffer.writeUtf8("CLEAN");
                        bufferedSinkBuffer.writeByte(32);
                        bufferedSinkBuffer.writeUtf8(dVar.f6451a);
                        for (long j10 : dVar.f6452b) {
                            bufferedSinkBuffer.writeByte(32).writeDecimalLong(j10);
                        }
                        bufferedSinkBuffer.writeByte(10);
                    }
                }
                lVar = l.f10832a;
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                if (bufferedSinkBuffer != null) {
                    try {
                        bufferedSinkBuffer.close();
                    } catch (Throwable th4) {
                        l5.a.a(th3, th4);
                    }
                }
                lVar = null;
                th = th3;
            }
            if (th != null) {
                throw th;
            }
            j9.i.c(lVar);
            if (this.f6476p.exists(this.f6465c)) {
                this.f6476p.atomicMove(this.f6465c, this.f6466e);
                this.f6476p.atomicMove(this.d, this.f6465c);
                this.f6476p.delete(this.f6466e);
            } else {
                this.f6476p.atomicMove(this.d, this.f6465c);
            }
            this.f6470j = Okio.buffer(new i(this.f6476p.appendingSink(this.f6465c), new aa.c(1, this)));
            this.f6469i = 0;
            this.f6471k = false;
            this.f6475o = false;
        } catch (Throwable th5) {
            throw th5;
        }
    }
}
