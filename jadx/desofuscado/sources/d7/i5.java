package d7;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i5 extends k2 {

    /* renamed from: i, reason: collision with root package name */
    public static final Object[] f6178i;

    /* renamed from: j, reason: collision with root package name */
    public static final i5 f6179j;
    public final transient Object[] d;

    /* renamed from: e, reason: collision with root package name */
    public final transient int f6180e;
    public final transient Object[] f;

    /* renamed from: g, reason: collision with root package name */
    public final transient int f6181g;

    /* renamed from: h, reason: collision with root package name */
    public final transient int f6182h;

    static {
        Object[] objArr = new Object[0];
        f6178i = objArr;
        f6179j = new i5(0, 0, 0, objArr, objArr);
    }

    public i5(int i6, int i10, int i11, Object[] objArr, Object[] objArr2) {
        this.d = objArr;
        this.f6180e = i6;
        this.f = objArr2;
        this.f6181g = i10;
        this.f6182h = i11;
    }

    @Override // d7.q1, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        if (obj != null) {
            Object[] objArr = this.f;
            if (objArr.length != 0) {
                int iB = d0.B(obj);
                while (true) {
                    int i6 = iB & this.f6181g;
                    Object obj2 = objArr[i6];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    iB = i6 + 1;
                }
            }
        }
        return false;
    }

    @Override // d7.q1
    public final int d(Object[] objArr, int i6) {
        Object[] objArr2 = this.d;
        int i10 = this.f6182h;
        System.arraycopy(objArr2, 0, objArr, i6, i10);
        return i6 + i10;
    }

    @Override // d7.q1
    public final Object[] e() {
        return this.d;
    }

    @Override // d7.q1
    public final int f() {
        return this.f6182h;
    }

    @Override // d7.q1
    public final int g() {
        return 0;
    }

    @Override // d7.q1
    public final boolean h() {
        return false;
    }

    @Override // d7.k2, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f6180e;
    }

    @Override // d7.q1
    public final s5 i() {
        return c().listIterator(0);
    }

    @Override // d7.k2
    public final u1 m() {
        return u1.j(this.d, this.f6182h);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f6182h;
    }
}
