package fa;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.R$drawable;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.EpgBeans;
import org.bitspark.android.beans.HistoryBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t extends u implements Filterable {

    /* renamed from: g, reason: collision with root package name */
    public List f6949g;

    /* renamed from: h, reason: collision with root package name */
    public o0 f6950h;

    /* renamed from: i, reason: collision with root package name */
    public final Constants$VIDEO_TYPE f6951i;

    /* renamed from: j, reason: collision with root package name */
    public final SimpleDateFormat f6952j;

    static {
        a2.a.s("ch1qL9fgRAteFWkv3eA=\n", "OnQZW7iSPUo=\n");
    }

    public t(List list, Constants$VIDEO_TYPE constants$VIDEO_TYPE) {
        super(constants$VIDEO_TYPE);
        this.f6952j = new SimpleDateFormat(a2.a.s("9u10bbvILZCooFQ=\n", "ks05IPboZdg=\n"), Locale.getDefault());
        this.f6951i = constants$VIDEO_TYPE;
        this.f6949g = list;
        new r(this).filter(null);
    }

    @Override // android.widget.Filterable
    public final Filter getFilter() {
        return new r(this);
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        List list = this.f6949g;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(androidx.recyclerview.widget.p1 p1Var, int i6) {
        s sVar = (s) p1Var;
        boolean z7 = i6 == this.f6958b;
        boolean z10 = z7 && this.f6959c >= 0;
        sVar.itemView.setSelected(z7);
        HistoryBean historyBean = (HistoryBean) this.f6949g.get(i6);
        sVar.f6948c.setText(this.f6952j.format(historyBean.date));
        sVar.f6946a.setText(historyBean.name);
        if (historyBean.type != Constants$VIDEO_TYPE.BSLIVE || ga.d.f7122c == null || ga.d.f7122c.get(Integer.valueOf(historyBean.chid)) == null) {
            TextView textView = sVar.f6947b;
            StringBuilder sb = new StringBuilder();
            Long lValueOf = Long.valueOf(historyBean.lastPosition);
            boolean z11 = org.bitspark.android.utils.m.f8784b;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(a2.a.s("NlDoxWB2yA==\n", "fmqFqFoFu+U=\n"), Locale.CHINESE);
            simpleDateFormat.setTimeZone(TimeZone.getTimeZone(a2.a.s("PZdPPX6xRBg=\n", "etobFk6LdCg=\n")));
            sb.append(simpleDateFormat.format(lValueOf));
            sb.append(" ");
            sb.append(historyBean.subTitle);
            textView.setText(sb.toString());
        } else {
            int epgSameAs = ((ChannelBean) ga.d.f7122c.get(Integer.valueOf(historyBean.chid))).getEpgSameAs() > 0 ? ((ChannelBean) ga.d.f7122c.get(Integer.valueOf(historyBean.chid))).getEpgSameAs() : historyBean.chid;
            TextView textView2 = sVar.f6947b;
            ArrayList arrayListC = ga.h.c(epgSameAs);
            textView2.setText((arrayListC == null || arrayListC.isEmpty()) ? "" : ((EpgBeans.EpgBean) arrayListC.get(0)).getName());
        }
        if (z10) {
            sVar.f6946a.setTextColor(-1);
            sVar.itemView.setBackgroundResource(R$drawable.history_focus_bg);
        } else {
            sVar.f6946a.setTextColor(-1342177281);
            sVar.itemView.setBackgroundResource(R$drawable.history_unfocus_bg);
        }
        sVar.itemView.setOnClickListener(new q(this, i6, 0));
    }

    @Override // androidx.recyclerview.widget.k0
    public final androidx.recyclerview.widget.p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        View viewI = a.e.i(viewGroup, R.layout.history_item, viewGroup, false);
        s sVar = new s(viewI);
        sVar.f6946a = (TextView) viewI.findViewById(R.id.history_name);
        sVar.f6947b = (TextView) viewI.findViewById(R.id.program_now);
        sVar.f6948c = (TextView) viewI.findViewById(R.id.visit_at);
        return sVar;
    }
}
