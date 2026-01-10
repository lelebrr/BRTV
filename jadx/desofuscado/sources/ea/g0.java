package ea;

import android.media.MediaPlayer;
import com.p2elite.brtv2.R;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 implements MediaPlayer.OnBufferingUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h0 f6671a;

    public g0(h0 h0Var) {
        this.f6671a = h0Var;
    }

    @Override // android.media.MediaPlayer.OnBufferingUpdateListener
    public final void onBufferingUpdate(MediaPlayer mediaPlayer, int i6) {
        String strS = a2.a.s("9PH4PSdz\n", "tqK1XE4dX6Y=\n");
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("Ak5dyeBr3b0DB1bCzUjSvhFVUMLoaMS8FVNcjPlU0L0bc0Dc6geU\n", "dCc5rI89tNg=\n"));
        h0 h0Var = this.f6671a;
        sb.append(h0Var.f6696a.E1);
        sb.append(a2.a.s("y4OxVWtNaDiOgvZWa1Z6JJmUrFhhTBZ4\n", "6/XYMQ4iPlE=\n"));
        sb.append(Spark.f8670k2.getDuration());
        String string = sb.toString();
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, string);
        Spark spark = h0Var.f6696a;
        Constants$VIDEO_TYPE constants$VIDEO_TYPE = spark.E1;
        if (constants$VIDEO_TYPE == Constants$VIDEO_TYPE.BSPALYBACK || constants$VIDEO_TYPE == Constants$VIDEO_TYPE.BSVOD || constants$VIDEO_TYPE == Constants$VIDEO_TYPE.STATIC) {
            spark.G1 = Spark.f8670k2.getCurrentPosition();
            spark.F1 = Spark.f8670k2.getDuration();
            Log.i(a2.a.s("NR0m0anw\n", "d05rsMCelIA=\n"), a2.a.s("y2UFs8NIWFjKLAKj3mxUU8lcDqXFalhS0yw=\n", "vQxh1qweMT0=\n") + spark.G1 + a2.a.s("JtNb2bSf24Jolw==\n", "Brcuq9Xrsu0=\n") + spark.F1 + a2.a.s("jzg3x/WmkNjKKCHE/bfC\n", "r1pCoZPD4og=\n") + i6);
            int i10 = spark.F1;
            if (i10 > 0) {
                long j10 = spark.G1;
                long j11 = (100 * j10) / i10;
                spark.x1.setText(org.bitspark.android.utils.m.q(j10 / 1000));
                spark.f8732y1.setText(org.bitspark.android.utils.m.q(spark.F1 / 1000));
                if (!spark.H1.a()) {
                    int i11 = (int) j11;
                    spark.f8735z1.setProgress(i11);
                    spark.A1.setProgress(i11);
                }
                spark.f8735z1.setSecondaryProgress(i6);
                spark.A1.setSecondaryProgress(i6);
                Log.i(a2.a.s("jS+KswI/\n", "z3zH0mtRHGk=\n"), a2.a.s("mVDJ/YmrUmA=\n", "+yWvm+zZaEA=\n") + i6);
                String strB0 = Spark.b0(spark.Y);
                if (spark.F1 - spark.G1 >= 20000 || strB0 == null) {
                    return;
                }
                spark.f8702j1.setText(String.format(a2.a.s("aNCPRpxZ\n", "TaO1ZrkqgJs=\n"), spark.getString(R.string.video_playback_auto_start_next), strB0));
                spark.z0(2000);
            }
        }
    }
}
