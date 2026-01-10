package h2;

import android.content.Context;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final m2.i f7232a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f7233b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7234c;
    public final m2.i d;

    /* renamed from: e, reason: collision with root package name */
    public final n2.h f7235e;
    public final c2.d f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f7236g;

    public k(m2.i iVar, ArrayList arrayList, int i6, m2.i iVar2, n2.h hVar, c2.d dVar, boolean z7) {
        this.f7232a = iVar;
        this.f7233b = arrayList;
        this.f7234c = i6;
        this.d = iVar2;
        this.f7235e = hVar;
        this.f = dVar;
        this.f7236g = z7;
    }

    public final void a(m2.i iVar, i iVar2) {
        Context context = iVar.f8203a;
        m2.i iVar3 = this.f7232a;
        if (context != iVar3.f8203a) {
            throw new IllegalStateException(("Interceptor '" + iVar2 + "' cannot modify the request's context.").toString());
        }
        if (iVar.f8204b == m2.k.f8227b) {
            throw new IllegalStateException(("Interceptor '" + iVar2 + "' cannot set the request's data to null.").toString());
        }
        if (iVar.f8205c != iVar3.f8205c) {
            throw new IllegalStateException(("Interceptor '" + iVar2 + "' cannot modify the request's target.").toString());
        }
        if (iVar.f8221u != iVar3.f8221u) {
            throw new IllegalStateException(("Interceptor '" + iVar2 + "' cannot modify the request's lifecycle.").toString());
        }
        if (iVar.f8222v == iVar3.f8222v) {
            return;
        }
        throw new IllegalStateException(("Interceptor '" + iVar2 + "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.").toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object b(m2.i r13, c9.c r14) throws java.lang.Throwable {
        /*
            r12 = this;
            boolean r0 = r14 instanceof h2.j
            if (r0 == 0) goto L13
            r0 = r14
            h2.j r0 = (h2.j) r0
            int r1 = r0.f7231e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f7231e = r1
            goto L18
        L13:
            h2.j r0 = new h2.j
            r0.<init>(r12, r14)
        L18:
            java.lang.Object r14 = r0.f7230c
            b9.a r1 = b9.a.f3322a
            int r2 = r0.f7231e
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            h2.i r13 = r0.f7229b
            h2.k r0 = r0.f7228a
            o9.d.I(r14)
            goto L6d
        L2b:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            r13.<init>(r14)
            throw r13
        L33:
            o9.d.I(r14)
            java.util.ArrayList r6 = r12.f7233b
            int r14 = r12.f7234c
            if (r14 <= 0) goto L47
            int r2 = r14 + (-1)
            java.lang.Object r2 = r6.get(r2)
            h2.i r2 = (h2.i) r2
            r12.a(r13, r2)
        L47:
            java.lang.Object r2 = r6.get(r14)
            h2.i r2 = (h2.i) r2
            int r7 = r14 + 1
            h2.k r14 = new h2.k
            m2.i r5 = r12.f7232a
            c2.d r10 = r12.f
            n2.h r9 = r12.f7235e
            boolean r11 = r12.f7236g
            r4 = r14
            r8 = r13
            r4.<init>(r5, r6, r7, r8, r9, r10, r11)
            r0.f7228a = r12
            r0.f7229b = r2
            r0.f7231e = r3
            java.lang.Object r14 = r2.d(r14, r0)
            if (r14 != r1) goto L6b
            return r1
        L6b:
            r0 = r12
            r13 = r2
        L6d:
            m2.j r14 = (m2.j) r14
            m2.i r1 = r14.b()
            r0.a(r1, r13)
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: h2.k.b(m2.i, c9.c):java.lang.Object");
    }
}
