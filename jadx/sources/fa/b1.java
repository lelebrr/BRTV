package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b1 extends c {
    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        a1 a1Var = (a1) p1Var;
        int i10 = this.f6817e;
        if (i10 == i6) {
            this.f = a1Var.itemView;
        }
        a1Var.itemView.setSelected(i10 == i6);
        ChannelBean.SourcesBean sourcesBean = (ChannelBean.SourcesBean) this.f6819h.get(i6);
        int i11 = this.f6817e;
        ImageView imageView = a1Var.f6811b;
        if (i6 == i11) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
        a1Var.f6810a.setText(sourcesBean.getSubTitle());
        if (this.f6816c != null) {
            a1Var.itemView.setOnFocusChangeListener(new y0(this, a1Var, sourcesBean, i6));
        }
        a1Var.itemView.setOnTouchListener(new j0(this, a1Var, i6, 1));
        if (this.d != null) {
            a1Var.itemView.setOnKeyListener(new z0(0, this));
        }
        if (this.f6818g != null) {
            a1Var.itemView.setOnClickListener(new q(this, i6, 4));
        }
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.item_vod_episode, viewGroup, false);
        a1 a1Var = new a1(viewI);
        a1Var.f6810a = (TextView) viewI.findViewById(R.id.item_tv);
        a1Var.f6811b = (ImageView) viewI.findViewById(R.id.iv_playing);
        return a1Var;
    }
}
