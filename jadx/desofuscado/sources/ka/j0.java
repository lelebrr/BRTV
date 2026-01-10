package ka;

import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.tencent.mars.xlog.Log;
import fa.x0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 extends StringCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7805a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m0 f7806b;

    public j0(m0 m0Var, int i6) {
        this.f7806b = m0Var;
        this.f7805a = i6;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onCacheSuccess(Response response) {
        String strS = a2.a.s("rMBMt4U=\n", "7pMa2OEQqMg=\n");
        String strS2 = a2.a.s("ujBIjh7gBDi1NFLADeNAHa86UY4L7gMTuHVTxQ==\n", "3VU8rmiPYHs=\n");
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strS2);
        m0.E0.post(new a.f(24, this));
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public final void onError(Response response) {
        this.f7806b.f7822g0.setVisibility(8);
        String strS = a2.a.s("G4XHrTg=\n", "WdaRwlynqB8=\n");
        String str = a2.a.s("YctwXtjFgMNuz2oQy8bE72jrdgzB2N4=\n", "Bq4Efq6q5IA=\n") + response.getException().toString();
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
    }

    @Override // com.lzy.okgo.callback.Callback
    public final void onSuccess(Response response) {
        String strS = a2.a.s("OVNJ/vo=\n", "ewAfkZ6rUKc=\n");
        String str = a2.a.s("Ta2mck+eV0xCqbw8XJ0TaVinv3JKlEF5T7ryNlafVjUK\n", "KsjSUjnxMw8=\n") + ((String) response.body()).length();
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, str);
        m0 m0Var = this.f7806b;
        String str2 = (String) response.body();
        int i6 = this.f7805a;
        String str3 = m0.B0;
        m0Var.getClass();
        a2.a.s("YqSIZxVp1zphj75qL2TzGHyih2R7NoA=\n", "DsvpA1sMoGw=\n");
        a2.a.s("KUNZljYV+sIpQ1mWNhU=\n", "FH5kqwsox/8=\n");
        if (i6 == m0Var.f7835u0) {
            if (str2.isEmpty()) {
                m0.C0.setVisibility(8);
                if (i6 == -5) {
                    m0.D0.setVisibility(0);
                }
            } else if (m0Var.R(i6)) {
                try {
                    x0 x0Var = new x0(str2, m0Var.h(), i6);
                    m0Var.f7819d0 = x0Var;
                    if (m0.G0) {
                        x0Var.f6929g = 5;
                    }
                    x0Var.f6930h = new a7.f((Object) m0Var, 29, (Object) 3);
                    m0Var.f7819d0.f6978p = new k0(m0Var, i6, 0);
                } catch (Exception e5) {
                    String str4 = m0.B0;
                    String string = e5.toString();
                    boolean z10 = org.bitspark.android.utils.m.f8784b;
                    Log.i(str4, string);
                }
                m0.D0.setVisibility(8);
                m0.C0.setAdapter(m0Var.f7819d0);
                if (m0.C0.getVisibility() == 8) {
                    m0.C0.setVisibility(0);
                }
                m0.C0.setItemAnimator(null);
            }
        }
        this.f7806b.f7822g0.setVisibility(8);
    }
}
