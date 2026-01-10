package ka;

import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.tencent.mars.xlog.Log;
import java.util.Objects;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l0 extends StringCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f7812a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ChannelBean f7813b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f7814c;
    public final /* synthetic */ m0 d;

    public l0(m0 m0Var, String str, ChannelBean channelBean, int i6) {
        this.d = m0Var;
        this.f7812a = str;
        this.f7813b = channelBean;
        this.f7814c = i6;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onCacheSuccess(Response response) {
        String strS = a2.a.s("W1Kgv70=\n", "GQH20NnoVyw=\n");
        String strS2 = a2.a.s("T0VwwLfxbelAQWqOpPIpzFpPacCi/2rCTQBriw==\n", "KCAE4MGeCao=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
    }

    @Override // com.lzy.okgo.callback.Callback
    public final void onSuccess(Response response) {
        String str = (String) response.body();
        String str2 = this.f7812a;
        p8.c cVar = new p8.c(new androidx.media3.exoplayer.hls.b(this, str, str2, 9));
        m0 m0Var = this.d;
        o8.a aVar = m0Var.A0;
        if (aVar != null && !aVar.g()) {
            o8.a aVar2 = m0Var.A0;
            aVar2.getClass();
            m8.a.b(aVar2);
        }
        q8.h hVar = u8.e.f10457a;
        Objects.requireNonNull(hVar, "scheduler is null");
        p8.g gVar = new p8.g(cVar, hVar);
        i8.f fVar = h8.b.f7274a;
        if (fVar == null) {
            throw new NullPointerException("scheduler == null");
        }
        p8.e eVarV = gVar.v(fVar);
        o8.a aVar3 = new o8.a(new androidx.media3.exoplayer.analytics.w(this, str2, this.f7813b, this.f7814c, 3));
        eVarV.F(aVar3);
        m0Var.A0 = aVar3;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onError(Response response) {
    }
}
