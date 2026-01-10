package ea;

import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6740a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Spark f6741b;

    public /* synthetic */ v(Spark spark, int i6) {
        this.f6740a = i6;
        this.f6741b = spark;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i6;
        Spark spark = this.f6741b;
        switch (this.f6740a) {
            case 0:
                spark.f8686b0.setVisibility(8);
                String strS = a2.a.s("c1yPoMp7\n", "MQ/CwaMVF/s=\n");
                String strS2 = a2.a.s("nbJXluVjFZO5skCH621Z1g==\n", "9dsz86kKY/Y=\n");
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, strS2);
                break;
            case 1:
                spark.f8730y.setTranslationX(0.0f);
                break;
            default:
                u uVar = Spark.X1;
                if (!spark.V()) {
                    spark.G1 = spark.L1.getCurrentPosition();
                    spark.F1 = (int) spark.L1.getDuration();
                    int bufferedPercentage = spark.L1.getBufferedPercentage();
                    int i10 = spark.F1;
                    if (i10 > 0) {
                        long j10 = i10;
                        long j11 = spark.G1;
                        if (j10 > j11) {
                            long j12 = (j11 * 100) / j10;
                            spark.f8732y1.setText(org.bitspark.android.utils.m.q(i10 / 1000));
                            if (!spark.H1.a()) {
                                spark.x1.setText(org.bitspark.android.utils.m.q(spark.G1 / 1000));
                                int i11 = (int) j12;
                                spark.f8735z1.setProgress(i11);
                                spark.A1.setProgress(i11);
                            }
                            spark.f8735z1.setSecondaryProgress(bufferedPercentage);
                            String strB0 = Spark.b0(spark.Y);
                            int i12 = spark.F1;
                            if (i12 > 20000) {
                                long j13 = spark.G1;
                                if (j13 > 20000 && i12 - j13 < 20000 && strB0 != null) {
                                    spark.f8702j1.setText(String.format(a2.a.s("1pvDK/9c\n", "8+j5C9ov7HE=\n"), spark.getString(R.string.video_playback_auto_start_next), strB0));
                                    if (!spark.f8708m1.isShown()) {
                                        spark.z0(95);
                                    }
                                }
                            }
                        }
                    }
                }
                o0 o0Var = spark.P1;
                if (o0Var != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j14 = jCurrentTimeMillis - o0Var.f6721c;
                    if (j14 < 1000) {
                        i6 = -1;
                    } else {
                        long j15 = o0Var.f6719a;
                        long j16 = j15 - o0Var.f6720b;
                        o0Var.f6720b = j15;
                        o0Var.f6721c = jCurrentTimeMillis;
                        i6 = (int) ((j16 * 1000) / j14);
                    }
                    if (i6 >= 0 && spark.E1 == Constants$VIDEO_TYPE.STATIC) {
                        spark.n0(org.bitspark.android.utils.m.b(i6));
                    }
                }
                Spark.X1.postDelayed(this, 1000L);
                break;
        }
    }
}
