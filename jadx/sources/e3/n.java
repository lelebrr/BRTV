package e3;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n {

    /* renamed from: b, reason: collision with root package name */
    public static final n f6512b = new n(2);

    /* renamed from: c, reason: collision with root package name */
    public static final n f6513c = new n(0);
    public static final n d;

    /* renamed from: e, reason: collision with root package name */
    public static final n f6514e;
    public static final n f;

    /* renamed from: g, reason: collision with root package name */
    public static final v2.g f6515g;

    /* renamed from: h, reason: collision with root package name */
    public static final boolean f6516h;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6517a;

    static {
        n nVar = new n(1);
        d = nVar;
        f6514e = new n(3);
        f = nVar;
        f6515g = v2.g.a(nVar, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy");
        f6516h = true;
    }

    public /* synthetic */ n(int i6) {
        this.f6517a = i6;
    }

    public final int a(int i6, int i10, int i11, int i12) {
        switch (this.f6517a) {
            case 0:
                if (b(i6, i10, i11, i12) != 1.0f) {
                    break;
                }
                break;
            case 2:
                if (f6516h) {
                }
                break;
        }
        return 2;
    }

    public final float b(int i6, int i10, int i11, int i12) {
        switch (this.f6517a) {
            case 0:
                return Math.min(1.0f, f6512b.b(i6, i10, i11, i12));
            case 1:
                return Math.max(i11 / i6, i12 / i10);
            case 2:
                if (f6516h) {
                    return Math.min(i11 / i6, i12 / i10);
                }
                if (Math.max(i10 / i12, i6 / i11) == 0) {
                    return 1.0f;
                }
                return 1.0f / Integer.highestOneBit(r2);
            default:
                return 1.0f;
        }
    }
}
