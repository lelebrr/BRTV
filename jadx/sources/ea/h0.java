package ea;

import android.media.MediaPlayer;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 implements MediaPlayer.OnPreparedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6696a;

    public h0(Spark spark) {
        this.f6696a = spark;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) throws IllegalStateException {
        if (Spark.f8672m2 == 0) {
            String strS = a2.a.s("E4g7jbTJ\n", "Udt27N2njXo=\n");
            StringBuilder sb = new StringBuilder();
            sb.append(a2.a.s("fbFJ+rZkcYR8+ELxiUB9kWqqSPv5RHGFbrd55qlXIsE=\n", "C9gtn9kyGOE=\n"));
            Spark spark = this.f6696a;
            sb.append(spark.E1);
            sb.append(a2.a.s("yZU+fvtf5BqMlHl9+0T2BpuCI3PxXppa\n", "6eNXGp4wsnM=\n"));
            sb.append(Spark.f8670k2.getDuration());
            String string = sb.toString();
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS, string);
            mediaPlayer.start();
            mediaPlayer.setOnBufferingUpdateListener(new g0(this));
            spark.z0(5000);
            spark.f8728w1.setVisibility(8);
            Log.i(a2.a.s("NF85Qjut\n", "dgx0I1LDV9o=\n"), a2.a.s("kme1WYlQUSqYbd9dhURVN6tggFzMU1Ussme1WYlQUSqYbalCn1RVNph7xVueT1cqmHqWC4tPXj0=\n", "/QnlK+wgMFg=\n"));
        }
    }
}
