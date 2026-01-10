package ea;

import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f0 {

    /* renamed from: e, reason: collision with root package name */
    public final u f6651e;

    /* renamed from: l, reason: collision with root package name */
    public final /* synthetic */ Spark f6657l;

    /* renamed from: a, reason: collision with root package name */
    public final String f6648a = a2.a.s("J9qLu6mu8KkO+4usrbvevg==\n", "d7bqwszcu8w=\n");

    /* renamed from: b, reason: collision with root package name */
    public boolean f6649b = false;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6650c = false;
    public long d = 0;
    public final ra.d f = new ra.d(this, 0);

    /* renamed from: g, reason: collision with root package name */
    public long f6652g = 0;

    /* renamed from: h, reason: collision with root package name */
    public int f6653h = 5;

    /* renamed from: i, reason: collision with root package name */
    public final int f6654i = 4;

    /* renamed from: j, reason: collision with root package name */
    public int f6655j = 0;

    /* renamed from: k, reason: collision with root package name */
    public final ra.d f6656k = new ra.d(this, 1);

    public f0(Spark spark, u uVar) {
        this.f6657l = spark;
        this.f6651e = uVar;
    }

    public final boolean a() {
        return this.f6649b || this.f6650c;
    }

    public final void b(long j10) {
        if (j10 < 0) {
            return;
        }
        Spark spark = this.f6657l;
        long duration = spark.L1.getDuration();
        if (duration <= 0) {
            return;
        }
        spark.f8735z1.setProgress((int) ((100 * j10) / duration));
        spark.B1.setText(org.bitspark.android.utils.m.q((int) (j10 / 1000)));
        spark.B1.setX(((spark.f8735z1.getX() + spark.f8735z1.getThumb().getBounds().centerX()) - (spark.B1.getWidth() / 2.0f)) + 100.0f);
        if (spark.B1.getWidth() < 84) {
            spark.B1.setVisibility(4);
        } else {
            spark.B1.setVisibility(0);
        }
    }
}
