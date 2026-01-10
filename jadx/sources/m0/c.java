package m0;

import j9.i;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8113a;

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f8114b;

    /* renamed from: c, reason: collision with root package name */
    public int f8115c;

    public c(int i6) {
        this.f8113a = 0;
        if (i6 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f8114b = new Object[i6];
    }

    public Object a() {
        switch (this.f8113a) {
            case 0:
                int i6 = this.f8115c;
                if (i6 <= 0) {
                    return null;
                }
                int i10 = i6 - 1;
                Object[] objArr = this.f8114b;
                Object obj = objArr[i10];
                i.d(obj, "null cannot be cast to non-null type T of androidx.core.util.Pools.SimplePool");
                objArr[i10] = null;
                this.f8115c--;
                return obj;
            default:
                int i11 = this.f8115c;
                if (i11 <= 0) {
                    return null;
                }
                int i12 = i11 - 1;
                Object[] objArr2 = this.f8114b;
                Object obj2 = objArr2[i12];
                objArr2[i12] = null;
                this.f8115c = i11 - 1;
                return obj2;
        }
    }

    public void b(u.c cVar) {
        int i6 = this.f8115c;
        Object[] objArr = this.f8114b;
        if (i6 < objArr.length) {
            objArr[i6] = cVar;
            this.f8115c = i6 + 1;
        }
    }

    public boolean c(Object obj) {
        Object[] objArr;
        boolean z7;
        i.f(obj, "instance");
        int i6 = this.f8115c;
        int i10 = 0;
        while (true) {
            objArr = this.f8114b;
            if (i10 >= i6) {
                z7 = false;
                break;
            }
            if (objArr[i10] == obj) {
                z7 = true;
                break;
            }
            i10++;
        }
        if (z7) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i11 = this.f8115c;
        if (i11 >= objArr.length) {
            return false;
        }
        objArr[i11] = obj;
        this.f8115c = i11 + 1;
        return true;
    }

    public c() {
        this.f8113a = 1;
        this.f8114b = new Object[256];
    }
}
