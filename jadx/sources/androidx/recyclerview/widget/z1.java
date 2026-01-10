package androidx.recyclerview.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z1 {

    /* renamed from: a, reason: collision with root package name */
    public int f2991a;

    /* renamed from: b, reason: collision with root package name */
    public int f2992b;

    /* renamed from: c, reason: collision with root package name */
    public int f2993c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f2994e;

    public final boolean a() {
        int i6 = this.f2991a;
        int i10 = 2;
        if ((i6 & 7) != 0) {
            int i11 = this.d;
            int i12 = this.f2992b;
            if (((i11 > i12 ? 1 : i11 == i12 ? 2 : 4) & i6) == 0) {
                return false;
            }
        }
        if ((i6 & 112) != 0) {
            int i13 = this.d;
            int i14 = this.f2993c;
            if ((((i13 > i14 ? 1 : i13 == i14 ? 2 : 4) << 4) & i6) == 0) {
                return false;
            }
        }
        if ((i6 & 1792) != 0) {
            int i15 = this.f2994e;
            int i16 = this.f2992b;
            if ((((i15 > i16 ? 1 : i15 == i16 ? 2 : 4) << 8) & i6) == 0) {
                return false;
            }
        }
        if ((i6 & 28672) != 0) {
            int i17 = this.f2994e;
            int i18 = this.f2993c;
            if (i17 > i18) {
                i10 = 1;
            } else if (i17 != i18) {
                i10 = 4;
            }
            if ((i6 & (i10 << 12)) == 0) {
                return false;
            }
        }
        return true;
    }
}
