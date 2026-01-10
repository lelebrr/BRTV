package r9;

import ea.q;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements Iterator, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public int f9614a = -1;

    /* renamed from: b, reason: collision with root package name */
    public int f9615b;

    /* renamed from: c, reason: collision with root package name */
    public int f9616c;
    public o9.h d;

    /* renamed from: e, reason: collision with root package name */
    public int f9617e;
    public final /* synthetic */ c f;

    public b(c cVar) {
        this.f = cVar;
        int i6 = cVar.f9619b;
        int length = cVar.f9618a.length();
        if (length < 0) {
            throw new IllegalArgumentException(q.f(length, "Cannot coerce value to an empty range: maximum ", " is less than minimum 0."));
        }
        if (i6 < 0) {
            i6 = 0;
        } else if (i6 > length) {
            i6 = length;
        }
        this.f9615b = i6;
        this.f9616c = i6;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a() {
        /*
            r8 = this;
            int r0 = r8.f9616c
            r1 = 0
            if (r0 >= 0) goto Lb
            r8.f9614a = r1
            r0 = 0
            r8.d = r0
            goto L75
        Lb:
            r9.c r2 = r8.f
            int r3 = r2.f9620c
            java.lang.String r4 = r2.f9618a
            r5 = -1
            r6 = 1
            if (r3 <= 0) goto L1c
            int r7 = r8.f9617e
            int r7 = r7 + r6
            r8.f9617e = r7
            if (r7 >= r3) goto L22
        L1c:
            int r3 = r4.length()
            if (r0 <= r3) goto L32
        L22:
            o9.h r0 = new o9.h
            int r1 = r8.f9615b
            int r2 = r9.f.Z(r4)
            r0.<init>(r1, r2, r6)
            r8.d = r0
            r8.f9616c = r5
            goto L73
        L32:
            r9.o r0 = r2.d
            int r2 = r8.f9616c
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            java.lang.Object r0 = r0.invoke(r4, r2)
            w8.f r0 = (w8.f) r0
            if (r0 != 0) goto L52
            o9.h r0 = new o9.h
            int r1 = r8.f9615b
            int r2 = r9.f.Z(r4)
            r0.<init>(r1, r2, r6)
            r8.d = r0
            r8.f9616c = r5
            goto L73
        L52:
            java.lang.Object r2 = r0.f10825a
            java.lang.Number r2 = (java.lang.Number) r2
            int r2 = r2.intValue()
            java.lang.Object r0 = r0.f10826b
            java.lang.Number r0 = (java.lang.Number) r0
            int r0 = r0.intValue()
            int r3 = r8.f9615b
            o9.h r3 = com.bumptech.glide.c.o(r3, r2)
            r8.d = r3
            int r2 = r2 + r0
            r8.f9615b = r2
            if (r0 != 0) goto L70
            r1 = 1
        L70:
            int r2 = r2 + r1
            r8.f9616c = r2
        L73:
            r8.f9614a = r6
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: r9.b.a():void");
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f9614a == -1) {
            a();
        }
        return this.f9614a == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f9614a == -1) {
            a();
        }
        if (this.f9614a == 0) {
            throw new NoSuchElementException();
        }
        o9.h hVar = this.d;
        j9.i.d(hVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
        this.d = null;
        this.f9614a = -1;
        return hVar;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
