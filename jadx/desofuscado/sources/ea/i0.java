package ea;

import android.media.MediaPlayer;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 implements MediaPlayer.OnCompletionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6699a;

    public i0(Spark spark) {
        this.f6699a = spark;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        Spark spark = this.f6699a;
        long currentPosition = spark.L1.getCurrentPosition();
        if (Spark.f8672m2 == 0) {
            String strS = a2.a.s("iqHu21hv\n", "yPKjujEBlOM=\n");
            String strS2 = a2.a.s("l04/87tbI8SWBzT4l2In0Y1CL/+7Y2qPzwl1\n", "4SdbltQNSqE=\n");
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(strS, strS2);
            Log.i(a2.a.s("I/M4d7gG\n", "YaB1FtFoMZc=\n"), a2.a.s("F7xLU7KvdmkW9UBYnpZyfA2wW1+ylz98DqZGQrSWcePdWktDr5hrZQ67FRY=\n", "YdUvNt35Hww=\n") + currentPosition + a2.a.s("4YJb\n", "Dj7UPocwf8g=\n") + spark.F1);
            spark.f8700i1 = System.currentTimeMillis();
            if (spark.V()) {
                spark.f8700i1 = System.currentTimeMillis();
                return;
            }
            Constants$VIDEO_TYPE constants$VIDEO_TYPE = spark.E1;
            if (constants$VIDEO_TYPE != Constants$VIDEO_TYPE.BSPALYBACK && constants$VIDEO_TYPE != Constants$VIDEO_TYPE.BSVOD && constants$VIDEO_TYPE != Constants$VIDEO_TYPE.STATIC) {
                if (currentPosition == 0 || spark.F1 == currentPosition) {
                    return;
                }
                spark.f8700i1 = System.currentTimeMillis();
                spark.G1 = currentPosition;
                Spark.f8670k2.pause();
                return;
            }
            Log.i(a2.a.s("HNp1JfFi\n", "Xok4RJgME4U=\n"), a2.a.s("2JLRnzS7D9nZ28aONJ020M+C15s4hkbq57/wtQS5P+zr2w==\n", "rvu1+lvtZrw=\n") + spark.E1);
            spark.o0();
            spark.j0();
            spark.L1.c();
            if (Spark.D(spark, spark.Y)) {
                return;
            }
            spark.F0(true);
        }
    }
}
