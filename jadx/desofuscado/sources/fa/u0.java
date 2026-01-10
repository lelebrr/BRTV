package fa;

import android.view.View;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.request.GetRequest;
import com.tencent.mars.xlog.Log;
import java.util.HashMap;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6960a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w0 f6961b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ChannelBean f6962c;
    public final /* synthetic */ x0 d;

    public u0(x0 x0Var, int i6, w0 w0Var, ChannelBean channelBean) {
        this.d = x0Var;
        this.f6960a = i6;
        this.f6961b = w0Var;
        this.f6962c = channelBean;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        x0 x0Var = this.d;
        int i6 = x0Var.f6926b;
        int i10 = this.f6960a;
        x0Var.f6926b = i10;
        x0Var.notifyItemChanged(i6);
        x0Var.notifyItemChanged(i10);
        ka.m0.F0 = ea.d.f6633e;
        ka.m0.I0 = this.f6961b.itemView;
        o0 o0Var = x0Var.f6978p;
        if (o0Var != null) {
            o0Var.a(i10, view);
            androidx.media3.common.x xVar = x0Var.f6980r;
            if (xVar != null) {
                ka.m0 m0Var = (ka.m0) xVar.f2104b;
                m0Var.f7836v0.f10266v = true;
                ChannelBean channelBean = this.f6962c;
                String strValueOf = String.valueOf(channelBean.getChid());
                HashMap map = m0Var.f7839z0;
                boolean zContainsKey = map.containsKey(strValueOf);
                String str = ka.m0.B0;
                if (zContainsKey) {
                    m0Var.f7836v0.f10266v = Boolean.TRUE.equals(map.get(strValueOf));
                    String strS = a2.a.s("7+7VWunhMRL16spB6f4HNPzlng9pJfe2JgRMgDt09NN1NCM=\n", "nYukL4ySRVE=\n");
                    boolean z7 = org.bitspark.android.utils.m.f8784b;
                    Log.i(str, strS);
                    return;
                }
                String strD = ga.m.d(ga.m.g(ga.l.f7143h) + a2.a.s("w6Y=\n", "7ObOPrYQ64k=\n") + channelBean.getChid());
                try {
                    OkGo.getInstance().cancelTag(m0Var);
                    ((GetRequest) ((GetRequest) ((GetRequest) ((GetRequest) OkGo.get(strD).removeHeader(a2.a.s("gmnrGjFO+xe5bg==\n", "1xqOaBwPnHI=\n"))).headers(a2.a.s("Gy2MMLlGBpIgKg==\n", "Tl7pQpQHYfc=\n"), ea.a.f6609m)).tag(m0Var)).cacheMode(CacheMode.NO_CACHE)).execute(new ka.l0(m0Var, strValueOf, channelBean, i10));
                } catch (Exception unused) {
                    String strS2 = a2.a.s("IH5DOjGRXu4vell0IpIazDdyF381jFXfZg==\n", "Rxs3Gkf+Oq0=\n");
                    boolean z10 = org.bitspark.android.utils.m.f8784b;
                    Log.i(str, strS2);
                }
            }
        }
    }
}
