package ea;

import android.widget.SeekBar;
import org.bitspark.android.Spark;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Spark f6616a;

    public a0(Spark spark) {
        this.f6616a = spark;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i6, boolean z7) {
        Spark spark = this.f6616a;
        if (spark.F0) {
            spark.x1.setText(org.bitspark.android.utils.m.q(((int) ((spark.L1.getDuration() * seekBar.getProgress()) / 100)) / 1000));
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        Spark spark = this.f6616a;
        spark.L1.pause();
        spark.o0();
        int duration = (int) ((spark.L1.getDuration() * seekBar.getProgress()) / 100);
        spark.F0 = true;
        spark.x1.setText(org.bitspark.android.utils.m.q(duration / 1000));
        Spark.X1.removeMessages(96);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        long progress = seekBar.getProgress();
        Spark spark = this.f6616a;
        spark.L1.seekTo((int) ((spark.L1.getDuration() * progress) / 100));
        if (Spark.f8672m2 == 1) {
            spark.L1.d();
        } else {
            spark.L1.start();
        }
        spark.F0 = false;
        spark.i0();
        Spark.f8669j2 = false;
        spark.R.setSelected(false);
        spark.x1.setText(org.bitspark.android.utils.m.q(r0 / 1000));
    }
}
