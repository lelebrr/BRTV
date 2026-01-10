package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageButton;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class h0 extends p1 {

    /* renamed from: a, reason: collision with root package name */
    public q1.s0 f2606a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageButton f2607b;

    /* renamed from: c, reason: collision with root package name */
    public final MediaRouteVolumeSlider f2608c;
    public final /* synthetic */ q0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(q0 q0Var, View view, ImageButton imageButton, MediaRouteVolumeSlider mediaRouteVolumeSlider) {
        int i6;
        int i10;
        super(view);
        this.d = q0Var;
        this.f2607b = imageButton;
        this.f2608c = mediaRouteVolumeSlider;
        Context context = q0Var.f2665m;
        Drawable drawableW = n5.d.W(com.bumptech.glide.c.h(context, R.drawable.mr_cast_mute_button));
        if (o9.d.t(context)) {
            g0.a.g(drawableW, u7.d.i(context, R.color.mr_dynamic_dialog_icon_light));
        }
        imageButton.setImageDrawable(drawableW);
        Context context2 = q0Var.f2665m;
        if (o9.d.t(context2)) {
            i6 = u7.d.i(context2, R.color.mr_cast_progressbar_progress_and_thumb_light);
            i10 = u7.d.i(context2, R.color.mr_cast_progressbar_background_light);
        } else {
            i6 = u7.d.i(context2, R.color.mr_cast_progressbar_progress_and_thumb_dark);
            i10 = u7.d.i(context2, R.color.mr_cast_progressbar_background_dark);
        }
        mediaRouteVolumeSlider.a(i6, i10);
    }

    public final void b(q1.s0 s0Var) {
        this.f2606a = s0Var;
        int i6 = s0Var.f9142p;
        boolean z7 = i6 == 0;
        ImageButton imageButton = this.f2607b;
        imageButton.setActivated(z7);
        imageButton.setOnClickListener(new g0(0, this));
        q1.s0 s0Var2 = this.f2606a;
        MediaRouteVolumeSlider mediaRouteVolumeSlider = this.f2608c;
        mediaRouteVolumeSlider.setTag(s0Var2);
        mediaRouteVolumeSlider.setMax(s0Var.f9143q);
        mediaRouteVolumeSlider.setProgress(i6);
        mediaRouteVolumeSlider.setOnSeekBarChangeListener(this.d.f2672t);
    }

    public final void c(boolean z7) {
        ImageButton imageButton = this.f2607b;
        if (imageButton.isActivated() == z7) {
            return;
        }
        imageButton.setActivated(z7);
        q0 q0Var = this.d;
        if (z7) {
            q0Var.f2675w.put(this.f2606a.f9131c, Integer.valueOf(this.f2608c.getProgress()));
        } else {
            q0Var.f2675w.remove(this.f2606a.f9131c);
        }
    }
}
