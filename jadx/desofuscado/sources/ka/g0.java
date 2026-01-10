package ka;

import android.os.Bundle;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import com.p2elite.brtv2.R;
import org.bitspark.android.Constants$VIDEO_TYPE;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ChannelBean f7785a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ i0 f7786b;

    public g0(i0 i0Var, ChannelBean channelBean) {
        this.f7786b = i0Var;
        this.f7785a = channelBean;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        i0 i0Var = this.f7786b;
        ta.a aVar = i0Var.U;
        if (!aVar.f10266v) {
            ba.d.a(i0Var.j(), 0, i0Var.m().getString(R.string.advise_delete_outdated_programs)).show();
            return;
        }
        ChannelBean channelBean = this.f7785a;
        aVar.f10262r = channelBean.getSources().get(0);
        ta.a aVar2 = i0Var.U;
        aVar2.G = true;
        Message message = new Message();
        message.what = 80;
        ChannelBean.SourcesBean sourcesBean = channelBean.getSources().get(0);
        String address = sourcesBean.getAddress();
        if (TextUtils.isEmpty(address)) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString(a2.a.s("5twp\n", "k65FWJKJkuk=\n"), address);
        bundle.putInt(a2.a.s("2DRzjg==\n", "u1wa6v/wzWc=\n"), channelBean.getChid());
        bundle.putInt(a2.a.s("dfCwsPQ=\n", "GZXG1ZhnCjQ=\n"), channelBean.getLevel());
        bundle.putString(a2.a.s("EsaRwg==\n", "fKf8p6yRl7w=\n"), channelBean.getName().getInit());
        bundle.putString(a2.a.s("j066V0I=\n", "/DvYHiY7NNM=\n"), String.valueOf(sourcesBean.getId()));
        bundle.putString(a2.a.s("ypVuVudXpZ4=\n", "ueAMIo4jyfs=\n"), sourcesBean.getSubTitle());
        bundle.putString(a2.a.s("oqq9/X3BBdM=\n", "z8/TiCm4dbY=\n"), aVar2.f10260p.name());
        bundle.putString(a2.a.s("ItVLSA==\n", "Vqw7LQCPSyE=\n"), ((address.startsWith(a2.a.s("9zRtvFbg0Qc=\n", "g0IO3STa/ig=\n")) || address.startsWith(a2.a.s("AqPEIcqZ1GFZ\n", "dtWnQLjq7k4=\n"))) ? Constants$VIDEO_TYPE.BSVOD : Constants$VIDEO_TYPE.STATIC).name());
        message.setData(bundle);
        Spark.X1.sendMessage(message);
    }
}
