package ka;

import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.tencent.mars.xlog.Log;
import java.util.Objects;
import org.bitspark.android.beans.HistoryBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends StringCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HistoryBean f7760a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f7761b;

    public c(e eVar, HistoryBean historyBean) {
        this.f7761b = eVar;
        this.f7760a = historyBean;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onCacheSuccess(Response response) {
        String strS = a2.a.s("D9nMP8P+SUg0\n", "TYqEVrCKJjo=\n");
        String strS2 = a2.a.s("grI0Vm/WyIaNti4YfNWMo5e4LVZ62M+tgPcvHQ==\n", "5ddAdhm5rMU=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
    }

    @Override // com.lzy.okgo.callback.Callback
    public final void onSuccess(Response response) {
        p8.c cVar = new p8.c(new androidx.media3.exoplayer.analytics.b(this, 14, (String) response.body()));
        e eVar = this.f7761b;
        o8.a aVar = eVar.f7778h0;
        if (aVar != null && !aVar.g()) {
            o8.a aVar2 = eVar.f7778h0;
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
        o8.a aVar3 = new o8.a(new androidx.media3.exoplayer.analytics.b(this, 15, this.f7760a));
        eVarV.F(aVar3);
        eVar.f7778h0 = aVar3;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onError(Response response) {
    }
}
