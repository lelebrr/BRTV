package androidx.mediarouter.app;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n0 extends h0 {

    /* renamed from: e, reason: collision with root package name */
    public final View f2633e;
    public final ImageView f;

    /* renamed from: g, reason: collision with root package name */
    public final ProgressBar f2634g;

    /* renamed from: h, reason: collision with root package name */
    public final TextView f2635h;

    /* renamed from: i, reason: collision with root package name */
    public final RelativeLayout f2636i;

    /* renamed from: j, reason: collision with root package name */
    public final CheckBox f2637j;

    /* renamed from: k, reason: collision with root package name */
    public final float f2638k;

    /* renamed from: l, reason: collision with root package name */
    public final int f2639l;

    /* renamed from: m, reason: collision with root package name */
    public final g0 f2640m;

    /* renamed from: n, reason: collision with root package name */
    public final /* synthetic */ o0 f2641n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(o0 o0Var, View view) throws Resources.NotFoundException {
        super(o0Var.f2651j, view, (ImageButton) view.findViewById(R.id.mr_cast_mute_button), (MediaRouteVolumeSlider) view.findViewById(R.id.mr_cast_volume_slider));
        this.f2641n = o0Var;
        this.f2640m = new g0(4, this);
        this.f2633e = view;
        this.f = (ImageView) view.findViewById(R.id.mr_cast_route_icon);
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_cast_route_progress_bar);
        this.f2634g = progressBar;
        this.f2635h = (TextView) view.findViewById(R.id.mr_cast_route_name);
        this.f2636i = (RelativeLayout) view.findViewById(R.id.mr_cast_volume_layout);
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.mr_cast_checkbox);
        this.f2637j = checkBox;
        q0 q0Var = o0Var.f2651j;
        Context context = q0Var.f2665m;
        Drawable drawableW = n5.d.W(com.bumptech.glide.c.h(context, R.drawable.mr_cast_checkbox));
        if (o9.d.t(context)) {
            g0.a.g(drawableW, u7.d.i(context, R.color.mr_dynamic_dialog_icon_light));
        }
        checkBox.setButtonDrawable(drawableW);
        o9.d.C(q0Var.f2665m, progressBar);
        this.f2638k = o9.d.m(q0Var.f2665m);
        Resources resources = q0Var.f2665m.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        TypedValue typedValue = new TypedValue();
        resources.getValue(R.dimen.mr_dynamic_dialog_row_height, typedValue, true);
        this.f2639l = (int) typedValue.getDimension(displayMetrics);
    }

    public final boolean d(q1.s0 s0Var) {
        if (s0Var.g()) {
            return true;
        }
        q1.p0 p0VarA = this.f2641n.f2651j.f2660h.a();
        if (p0VarA != null) {
            q1.z zVar = (q1.z) p0VarA.f9106x.get(s0Var.f9131c);
            if ((zVar != null ? zVar.f9186b : 4) == 3) {
                return true;
            }
        }
        return false;
    }

    public final void e(boolean z7, boolean z10) {
        CheckBox checkBox = this.f2637j;
        checkBox.setEnabled(false);
        this.f2633e.setEnabled(false);
        checkBox.setChecked(z7);
        if (z7) {
            this.f.setVisibility(4);
            this.f2634g.setVisibility(0);
        }
        if (z10) {
            this.f2641n.a(z7 ? this.f2639l : 0, this.f2636i);
        }
    }
}
