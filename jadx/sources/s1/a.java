package s1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f9705a;

    /* renamed from: b, reason: collision with root package name */
    public int f9706b;

    /* renamed from: c, reason: collision with root package name */
    public int f9707c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f9708e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f9709g;

    /* renamed from: h, reason: collision with root package name */
    public int f9710h;

    /* renamed from: i, reason: collision with root package name */
    public int f9711i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ b f9712j;

    public a(b bVar, int i6, int i10) {
        this.f9712j = bVar;
        this.f9705a = i6;
        this.f9706b = i10;
        a();
    }

    public final void a() {
        b bVar = this.f9712j;
        int[] iArr = bVar.f9713a;
        int[] iArr2 = bVar.f9714b;
        int i6 = Integer.MAX_VALUE;
        int i10 = Integer.MAX_VALUE;
        int i11 = Integer.MAX_VALUE;
        int i12 = Integer.MIN_VALUE;
        int i13 = Integer.MIN_VALUE;
        int i14 = Integer.MIN_VALUE;
        int i15 = 0;
        for (int i16 = this.f9705a; i16 <= this.f9706b; i16++) {
            int i17 = iArr[i16];
            i15 += iArr2[i17];
            int i18 = (i17 >> 10) & 31;
            int i19 = (i17 >> 5) & 31;
            int i20 = i17 & 31;
            if (i18 > i12) {
                i12 = i18;
            }
            if (i18 < i6) {
                i6 = i18;
            }
            if (i19 > i13) {
                i13 = i19;
            }
            if (i19 < i10) {
                i10 = i19;
            }
            if (i20 > i14) {
                i14 = i20;
            }
            if (i20 < i11) {
                i11 = i20;
            }
        }
        this.d = i6;
        this.f9708e = i12;
        this.f = i10;
        this.f9709g = i13;
        this.f9710h = i11;
        this.f9711i = i14;
        this.f9707c = i15;
    }

    public final int b() {
        return ((this.f9711i - this.f9710h) + 1) * ((this.f9709g - this.f) + 1) * ((this.f9708e - this.d) + 1);
    }
}
