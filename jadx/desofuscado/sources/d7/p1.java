package d7;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class p1 {

    /* renamed from: a, reason: collision with root package name */
    public Object[] f6236a;

    /* renamed from: b, reason: collision with root package name */
    public int f6237b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6238c;

    public p1(int i6) {
        d0.d(i6, "initialCapacity");
        this.f6236a = new Object[i6];
        this.f6237b = 0;
    }

    public static int f(int i6, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("cannot store more than MAX_VALUE elements");
        }
        if (i10 <= i6) {
            return i6;
        }
        int iHighestOneBit = i6 + (i6 >> 1) + 1;
        if (iHighestOneBit < i10) {
            iHighestOneBit = Integer.highestOneBit(i10 - 1) << 1;
        }
        if (iHighestOneBit < 0) {
            return Integer.MAX_VALUE;
        }
        return iHighestOneBit;
    }

    public final void a(Object obj) {
        obj.getClass();
        e(1);
        Object[] objArr = this.f6236a;
        int i6 = this.f6237b;
        this.f6237b = i6 + 1;
        objArr[i6] = obj;
    }

    public abstract p1 b(Object obj);

    public void c(Object obj) {
        a(obj);
    }

    public final void d(Iterable iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            e(collection.size());
            if (collection instanceof q1) {
                this.f6237b = ((q1) collection).d(this.f6236a, this.f6237b);
                return;
            }
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            b(it.next());
        }
    }

    public final void e(int i6) {
        Object[] objArr = this.f6236a;
        int iF = f(objArr.length, this.f6237b + i6);
        if (iF > objArr.length || this.f6238c) {
            this.f6236a = Arrays.copyOf(this.f6236a, iF);
            this.f6238c = false;
        }
    }
}
