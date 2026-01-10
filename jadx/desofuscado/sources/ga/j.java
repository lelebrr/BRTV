package ga;

import com.alibaba.fastjson.JSON;
import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.tencent.mars.xlog.Log;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.RegisterInfo;
import org.bitspark.android.beans.UpdateInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends StringCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7135a;

    public /* synthetic */ j(int i6) {
        this.f7135a = i6;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public void onError(Response response) {
        switch (this.f7135a) {
            case 0:
                Spark.X1.sendEmptyMessage(61);
                break;
            case 1:
            default:
                super.onError(response);
                break;
            case 2:
            case 3:
                break;
        }
    }

    @Override // com.lzy.okgo.callback.Callback
    public final void onSuccess(Response response) {
        switch (this.f7135a) {
            case 0:
                if (!response.isSuccessful()) {
                    Spark.X1.sendEmptyMessage(61);
                    break;
                } else {
                    try {
                        k.f7137b = (UpdateInfo) JSON.parseObject((String) response.body(), UpdateInfo.class);
                        Spark.X1.sendEmptyMessage(60);
                        String strS = a2.a.s("o8Ozy/GPoCA=\n", "4ZDmu5Xu1EU=\n");
                        String str = (String) response.body();
                        boolean z7 = org.bitspark.android.utils.m.f8784b;
                        Log.i(strS, str);
                        break;
                    } catch (Exception unused) {
                        String strS2 = a2.a.s("i7HcDiMmbrs=\n", "yeKJfkdHGt4=\n");
                        String strS3 = a2.a.s("LXr5ydDCpLc5ev/flYawszw77sjHjaPm\n", "XRuLurXi0cc=\n");
                        boolean z10 = org.bitspark.android.utils.m.f8784b;
                        Log.i(strS2, strS3);
                        Spark.X1.sendEmptyMessage(61);
                        return;
                    }
                }
            case 1:
                if (response.isSuccessful()) {
                    RegisterInfo registerInfo = (RegisterInfo) JSON.parseObject((String) response.body(), RegisterInfo.class);
                    int i6 = registerInfo.code;
                    if (i6 != 0 && i6 != -20) {
                        Spark.m0(0, a2.a.s("oxfdMyW9713RF8goObumD4MXzigv6eZOhRfIew==\n", "8XK6WlbJii8=\n"));
                        Spark.X1.sendEmptyMessage(12);
                        break;
                    } else {
                        org.bitspark.android.utils.m.n(ea.g.f6661e, registerInfo.user_name);
                        org.bitspark.android.utils.m.n(ea.g.f, a2.a.s("DHFPiNNQ\n", "PUB+ueJhuZc=\n"));
                        org.bitspark.android.utils.m.m(2, ea.g.f6659b);
                        Spark.X1.sendEmptyMessage(11);
                        break;
                    }
                }
                break;
        }
    }

    private final void a(Response response) {
    }

    private final void b(Response response) {
    }

    private final void c(Response response) {
    }

    private final void d(Response response) {
    }
}
