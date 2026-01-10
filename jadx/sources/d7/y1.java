package d7;

import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y1 {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f6306a;

    /* renamed from: b, reason: collision with root package name */
    public int f6307b = 0;

    /* renamed from: c, reason: collision with root package name */
    public x1 f6308c;

    public y1(int i6) {
        this.f6306a = new Object[i6 * 2];
    }

    public final h5 a() {
        x1 x1Var = this.f6308c;
        if (x1Var != null) {
            throw x1Var.a();
        }
        h5 h5VarG = h5.g(this.f6307b, this.f6306a, this);
        x1 x1Var2 = this.f6308c;
        if (x1Var2 == null) {
            return h5VarG;
        }
        throw x1Var2.a();
    }

    public final void b(Object obj, Object obj2) {
        int i6 = (this.f6307b + 1) * 2;
        Object[] objArr = this.f6306a;
        if (i6 > objArr.length) {
            this.f6306a = Arrays.copyOf(objArr, p1.f(objArr.length, i6));
        }
        d0.c(obj, obj2);
        Object[] objArr2 = this.f6306a;
        int i10 = this.f6307b;
        int i11 = i10 * 2;
        objArr2[i11] = obj;
        objArr2[i11 + 1] = obj2;
        this.f6307b = i10 + 1;
    }
}
