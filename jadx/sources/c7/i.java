package c7;

import d7.s5;
import java.util.AbstractQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i extends s5 {

    /* renamed from: a, reason: collision with root package name */
    public Object f3426a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3427b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractQueue f3428c;

    public i(AbstractQueue abstractQueue, c0 c0Var, int i6) {
        this.f3427b = i6;
        this.f3428c = abstractQueue;
        this.f3426a = c0Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f3426a != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x001a  */
    @Override // java.util.Iterator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object next() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f3426a
            if (r0 == 0) goto L31
            int r1 = r3.f3427b
            switch(r1) {
                case 0: goto L1c;
                default: goto L9;
            }
        L9:
            r1 = r0
            c7.c0 r1 = (c7.c0) r1
            c7.c0 r1 = r1.o()
            java.util.AbstractQueue r2 = r3.f3428c
            c7.j r2 = (c7.j) r2
            c7.g r2 = r2.f3430b
            c7.h r2 = (c7.h) r2
            if (r1 != r2) goto L2e
        L1a:
            r1 = 0
            goto L2e
        L1c:
            r1 = r0
            c7.c0 r1 = (c7.c0) r1
            c7.c0 r1 = r1.i()
            java.util.AbstractQueue r2 = r3.f3428c
            c7.j r2 = (c7.j) r2
            c7.g r2 = r2.f3430b
            c7.h r2 = (c7.h) r2
            if (r1 != r2) goto L2e
            goto L1a
        L2e:
            r3.f3426a = r1
            return r0
        L31:
            java.util.NoSuchElementException r0 = new java.util.NoSuchElementException
            r0.<init>()
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c7.i.next():java.lang.Object");
    }
}
