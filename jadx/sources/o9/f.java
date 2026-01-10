package o9;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class f implements Iterable, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final int f8651a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8652b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8653c;

    public f(int i6, int i10, int i11) {
        if (i11 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i11 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f8651a = i6;
        this.f8652b = d.p(i6, i10, i11);
        this.f8653c = i11;
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            if (!isEmpty() || !((f) obj).isEmpty()) {
                f fVar = (f) obj;
                if (this.f8651a != fVar.f8651a || this.f8652b != fVar.f8652b || this.f8653c != fVar.f8653c) {
                }
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f8651a * 31) + this.f8652b) * 31) + this.f8653c;
    }

    public boolean isEmpty() {
        int i6 = this.f8653c;
        int i10 = this.f8652b;
        int i11 = this.f8651a;
        if (i6 > 0) {
            if (i11 <= i10) {
                return false;
            }
        } else if (i11 >= i10) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new g(this.f8651a, this.f8652b, this.f8653c);
    }

    public String toString() {
        StringBuilder sb;
        int i6 = this.f8652b;
        int i10 = this.f8651a;
        int i11 = this.f8653c;
        if (i11 > 0) {
            sb = new StringBuilder();
            sb.append(i10);
            sb.append("..");
            sb.append(i6);
            sb.append(" step ");
            sb.append(i11);
        } else {
            sb = new StringBuilder();
            sb.append(i10);
            sb.append(" downTo ");
            sb.append(i6);
            sb.append(" step ");
            sb.append(-i11);
        }
        return sb.toString();
    }
}
