package d7;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class j2 extends p1 {
    public Object[] d;

    /* renamed from: e, reason: collision with root package name */
    public int f6186e;

    @Override // d7.p1
    public /* bridge */ /* synthetic */ p1 b(Object obj) {
        g(obj);
        return this;
    }

    public void g(Object obj) {
        obj.getClass();
        if (this.d != null) {
            int iJ = k2.j(this.f6237b);
            Object[] objArr = this.d;
            if (iJ <= objArr.length) {
                int length = objArr.length - 1;
                int iHashCode = obj.hashCode();
                int iA = d0.A(iHashCode);
                while (true) {
                    int i6 = iA & length;
                    Object[] objArr2 = this.d;
                    Object obj2 = objArr2[i6];
                    if (obj2 == null) {
                        objArr2[i6] = obj;
                        this.f6186e += iHashCode;
                        a(obj);
                        return;
                    } else if (obj2.equals(obj)) {
                        return;
                    } else {
                        iA = i6 + 1;
                    }
                }
            }
        }
        this.d = null;
        a(obj);
    }

    public void h(List list) {
        list.getClass();
        if (this.d == null) {
            d(list);
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            g(it.next());
        }
    }

    public k2 i() {
        k2 k2VarK;
        int i6 = this.f6237b;
        if (i6 == 0) {
            int i10 = k2.f6197c;
            return i5.f6179j;
        }
        if (i6 == 1) {
            Object obj = this.f6236a[0];
            Objects.requireNonNull(obj);
            int i11 = k2.f6197c;
            return new m2(obj);
        }
        if (this.d == null || k2.j(i6) != this.d.length) {
            k2VarK = k2.k(this.f6236a, this.f6237b);
            this.f6237b = k2VarK.size();
        } else {
            int i12 = this.f6237b;
            Object[] objArrCopyOf = this.f6236a;
            int length = objArrCopyOf.length;
            if (i12 < (length >> 1) + (length >> 2)) {
                objArrCopyOf = Arrays.copyOf(objArrCopyOf, i12);
            }
            k2VarK = new i5(this.f6186e, r8.length - 1, this.f6237b, objArrCopyOf, this.d);
        }
        this.f6238c = true;
        this.d = null;
        return k2VarK;
    }
}
