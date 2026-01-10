package androidx.mediarouter.app;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 extends p1 {

    /* renamed from: a, reason: collision with root package name */
    public final View f2546a;

    /* renamed from: b, reason: collision with root package name */
    public final ImageView f2547b;

    /* renamed from: c, reason: collision with root package name */
    public final ProgressBar f2548c;
    public final TextView d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ b0 f2549e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(b0 b0Var, View view) {
        super(view);
        this.f2549e = b0Var;
        this.f2546a = view;
        this.f2547b = (ImageView) view.findViewById(R.id.mr_picker_route_icon);
        ProgressBar progressBar = (ProgressBar) view.findViewById(R.id.mr_picker_route_progress_bar);
        this.f2548c = progressBar;
        this.d = (TextView) view.findViewById(R.id.mr_picker_route_name);
        o9.d.C(b0Var.f2556g.f2560g, progressBar);
    }
}
