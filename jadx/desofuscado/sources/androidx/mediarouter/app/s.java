package androidx.mediarouter.app;

import android.widget.SeekBar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final i f2690a = new i(1, this);

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f2691b;

    public s(u uVar) {
        this.f2691b = uVar;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i6, boolean z7) {
        if (z7) {
            q1.s0 s0Var = (q1.s0) seekBar.getTag();
            int i10 = u.f2694p0;
            s0Var.j(i6);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        u uVar = this.f2691b;
        if (uVar.L != null) {
            uVar.J.removeCallbacks(this.f2690a);
        }
        uVar.L = (q1.s0) seekBar.getTag();
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        this.f2691b.J.postDelayed(this.f2690a, 500L);
    }
}
