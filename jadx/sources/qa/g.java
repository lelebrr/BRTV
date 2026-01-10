package qa;

import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final Spark f9390a;

    /* renamed from: b, reason: collision with root package name */
    public final w8.i f9391b;

    /* renamed from: c, reason: collision with root package name */
    public final b f9392c;

    public g(Spark spark) {
        j9.i.f(spark, a2.a.s("tZsZQoY=\n", "xut4MO16/kI=\n"));
        this.f9390a = spark;
        this.f9391b = new w8.i(new a(0, this));
        this.f9392c = new b(0, this);
        spark.D0.setOnClickListener(new androidx.mediarouter.app.b(1, this));
    }

    public final o a() {
        return (o) this.f9391b.getValue();
    }
}
