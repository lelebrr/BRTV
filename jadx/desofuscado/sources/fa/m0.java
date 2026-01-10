package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.r2;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.HistoryBean;
import org.bitspark.android.view.MyProcessRelativeLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m0 extends androidx.recyclerview.widget.k0 {

    /* renamed from: a, reason: collision with root package name */
    public o0 f6915a;

    /* renamed from: b, reason: collision with root package name */
    public View.OnKeyListener f6916b;

    /* renamed from: c, reason: collision with root package name */
    public int f6917c;
    public ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public ChannelBean f6918e;

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.d.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        int i10;
        l0 l0Var = (l0) p1Var;
        ChannelBean.SourcesBean sourcesBean = (ChannelBean.SourcesBean) this.d.get(i6);
        l0Var.f6910a.setText(sourcesBean.getSubTitle());
        HistoryBean historyBeanA = ga.i.a(this.f6918e.getChid(), "" + sourcesBean.getId());
        long j10 = 0;
        if (historyBeanA != null) {
            long j11 = historyBeanA.lastPosition;
            if (j11 > 0) {
                j10 = j11;
            }
        }
        if (historyBeanA == null || (i10 = historyBeanA.duration) <= 0) {
            i10 = 0;
        }
        MyProcessRelativeLayout myProcessRelativeLayout = l0Var.f6911b;
        if (i10 > 0) {
            myProcessRelativeLayout.setProgress((((int) j10) * 100) / i10);
        } else {
            myProcessRelativeLayout.setProgress(0);
        }
        l0Var.itemView.setTag(sourcesBean);
        l0Var.itemView.setOnClickListener(new q(this, i6, 3));
        l0Var.itemView.setOnTouchListener(new j0(this, l0Var, i6, 0));
        l0Var.itemView.setOnFocusChangeListener(new r2(5, this));
        l0Var.itemView.setOnKeyListener(new k0(this, i6, l0Var));
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.vod_new_episode_item, viewGroup, false);
        l0 l0Var = new l0(viewI);
        l0Var.f6910a = (TextView) viewI.findViewById(R.id.item_tv);
        l0Var.f6911b = (MyProcessRelativeLayout) viewI.findViewById(R.id.item_vod_new_episode);
        return l0Var;
    }
}
