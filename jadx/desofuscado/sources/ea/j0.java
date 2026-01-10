package ea;

import android.media.MediaPlayer;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 implements MediaPlayer.OnErrorListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6703a;

    public j0(Spark spark) {
        this.f6703a = spark;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i6, int i10) {
        String strS = a2.a.s("ayLXP5SB\n", "KXGaXv3vsmk=\n");
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("9uESBjc9SL/3qBMRKgRT4A==\n", "gIh2Y1hrIdo=\n"));
        sb.append(i6);
        sb.append(a2.a.s("DQVjNqgLGZs=\n", "LWAbQtpqI7s=\n"));
        sb.append(i10);
        sb.append(a2.a.s("XCP5rwe6/8hGbg==\n", "fE672mHcmro=\n"));
        Spark spark = this.f6703a;
        sb.append(spark.f8693e1);
        String string = sb.toString();
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, string);
        Spark.f8670k2.stopPlayback();
        Spark.f8670k2.setVideoURI(null);
        spark.f8700i1 = System.currentTimeMillis();
        return true;
    }
}
