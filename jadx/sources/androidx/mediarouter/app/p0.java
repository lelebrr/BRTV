package androidx.mediarouter.app;

import android.widget.SeekBar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p0 implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ q0 f2653a;

    public p0(q0 q0Var) {
        this.f2653a = q0Var;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i6, boolean z7) {
        if (z7) {
            q1.s0 s0Var = (q1.s0) seekBar.getTag();
            h0 h0Var = (h0) this.f2653a.f2673u.get(s0Var.f9131c);
            if (h0Var != null) {
                h0Var.c(i6 == 0);
            }
            s0Var.j(i6);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        q0 q0Var = this.f2653a;
        if (q0Var.f2674v != null) {
            q0Var.f2669q.removeMessages(2);
        }
        q0Var.f2674v = (q1.s0) seekBar.getTag();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        this.f2653a.f2669q.sendEmptyMessageDelayed(2, 500L);
    }
}
