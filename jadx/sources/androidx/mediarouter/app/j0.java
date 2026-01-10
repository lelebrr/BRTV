package androidx.mediarouter.app;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 extends p1 {

    /* renamed from: a, reason: collision with root package name */
    public final View f2613a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f2614b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressBar f2615c;
    public final TextView d;

    /* renamed from: e, reason: collision with root package name */
    public final float f2616e;
    public q1.s0 f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ o0 f2617g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(o0 o0Var, View view) {
        super(view);
        this.f2617g = o0Var;
        this.f2613a = view;
        this.f2614b = (ImageView) view.findViewById(R.id.mr_cast_group_icon);
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_cast_group_progress_bar);
        this.f2615c = progressBar;
        this.d = (TextView) view.findViewById(R.id.mr_cast_group_name);
        this.f2616e = o9.d.m(o0Var.f2651j.f2665m);
        o9.d.C(o0Var.f2651j.f2665m, progressBar);
    }
}
