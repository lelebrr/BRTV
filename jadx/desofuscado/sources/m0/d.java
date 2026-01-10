package m0;

import j9.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends c {
    public final Object d;

    public d(int i6) {
        super(i6);
        this.d = new Object();
    }

    @Override // m0.c
    public final Object a() {
        Object objA;
        synchronized (this.d) {
            objA = super.a();
        }
        return objA;
    }

    @Override // m0.c
    public final boolean c(Object obj) {
        boolean zC;
        i.f(obj, "instance");
        synchronized (this.d) {
            zC = super.c(obj);
        }
        return zC;
    }
}
