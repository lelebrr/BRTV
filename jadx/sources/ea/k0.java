package ea;

import android.media.MediaPlayer;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k0 implements MediaPlayer.OnInfoListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6706a;

    public k0(Spark spark) {
        this.f6706a = spark;
    }

    @Override // android.media.MediaPlayer.OnInfoListener
    public final boolean onInfo(MediaPlayer mediaPlayer, int i6, int i10) {
        if (i6 != 3) {
            return false;
        }
        String strS = a2.a.s("IsiM1ryj\n", "YJvBt9XNP6o=\n");
        String strS2 = a2.a.s("zUFLD7DO9v35QV1Go/v0+OVWRgi2vvTz9wQBSP+w\n", "gCQvZtGempw=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        long jCurrentTimeMillis = System.currentTimeMillis();
        Spark spark = this.f6706a;
        spark.f8700i1 = jCurrentTimeMillis;
        spark.G0 = true;
        spark.i0();
        return false;
    }
}
