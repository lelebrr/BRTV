package fa;

import android.view.View;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b0 implements View.OnLongClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6814a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d0 f6815b;

    public b0(d0 d0Var, int i6) {
        this.f6815b = d0Var;
        this.f6814a = i6;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        d0 d0Var = this.f6815b;
        d0Var.f6832h = true;
        ka.n nVar = d0Var.f;
        int i6 = this.f6814a;
        nVar.getClass();
        String strS = a2.a.s("xE4ooHB/\n", "hh1lxR4KaXM=\n");
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("AjzN3EMQyuwCPM3cQxDK7AI8zpAOep2qTFOBkQdwhaZCdA==\n", "IR/u/2Az6c8=\n"));
        ka.r rVar = nVar.f7841b;
        sb.append(rVar.f7860m0);
        String string = sb.toString();
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, string);
        ChannelBean channelBean = (ChannelBean) view.getTag();
        if (channelBean != null) {
            rVar.j0(channelBean, i6);
        }
        return true;
    }
}
