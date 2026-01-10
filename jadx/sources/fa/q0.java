package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q0 extends androidx.recyclerview.widget.k0 {

    /* renamed from: a, reason: collision with root package name */
    public float f6943a;

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return 5;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        p0 p0Var = (p0) p1Var;
        float f = this.f6943a;
        float f3 = i6;
        if ((f - 1.0f) - f3 > 0.0f) {
            p0Var.f6936a.setSelected(true);
            p0Var.f6936a.setActivated(true);
        } else if (f > f3) {
            p0Var.f6936a.setActivated(false);
            p0Var.f6936a.setSelected(true);
        } else {
            p0Var.f6936a.setSelected(false);
            p0Var.f6936a.setSelected(false);
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.item_vod_detail_ratingbar, viewGroup, false);
        p0 p0Var = new p0(viewI);
        p0Var.f6936a = (ImageView) viewI.findViewById(R.id.imageView);
        return p0Var;
    }
}
