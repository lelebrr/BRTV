package ga;

import com.alibaba.fastjson.JSON;
import com.lzy.okgo.callback.StringCallback;
import com.lzy.okgo.model.Response;
import com.p2elite.brtv2.R;
import com.tencent.bugly.proguard.i0;
import com.tencent.mars.xlog.Log;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Iterator;
import java.util.Locale;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.GroupBeanModel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends StringCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7118a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f7119b;

    public /* synthetic */ c(int i6, Object obj) {
        this.f7118a = i6;
        this.f7119b = obj;
    }

    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    public void onCacheSuccess(Response response) {
        Object obj = this.f7119b;
        switch (this.f7118a) {
            case 0:
                String strS = a2.a.s("3DdRQQ7LxEny\n", "nmQSKW+lqiw=\n");
                String strS2 = a2.a.s("sf1jPOOSfj24/Xs85ohwPvb7dn/onz88vQ==\n", "1pgXHID6H1M=\n");
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, strS2);
                String str = (String) response.body();
                ((d) obj).getClass();
                new i0(1, str).start();
                break;
            case 1:
                String strS3 = a2.a.s("PxJjFpuS\n", "fUE2Zf7gC70=\n");
                String str2 = a2.a.s("fB0ODkrgNiA7HghBRrUhKXgQHw5E/mJlJVg=\n", "G3h6LiuVQkg=\n") + ((String) response.body());
                boolean z10 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS3, str2);
                m.c((m) obj, (String) response.body(), response.code());
                break;
            case 2:
                String strS4 = a2.a.s("LEcMeicdipAAej95\n", "bhRaFUNe4vE=\n");
                String strS5 = a2.a.s("daZGhLtvs556olzKqGz3u2CsX4SuYbS1d+Ndzw==\n", "EsMypM0A190=\n");
                boolean z11 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS4, strS5);
                break;
            default:
                super.onCacheSuccess(response);
                break;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x020a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x018d -> B:72:0x01a9). Please report as a decompilation issue!!! */
    @Override // com.lzy.okgo.callback.AbsCallback, com.lzy.okgo.callback.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onError(com.lzy.okgo.model.Response r9) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 542
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ga.c.onError(com.lzy.okgo.model.Response):void");
    }

    @Override // com.lzy.okgo.callback.Callback
    public final void onSuccess(Response response) {
        int i6 = 1;
        switch (this.f7118a) {
            case 0:
                String strS = a2.a.s("M24ZY2RxqNwd\n", "cT1aCwUfxrk=\n");
                String strS2 = a2.a.s("VW9vQAwIgNZcb3dACRKO1RJ5fhIZBZOYXWE=\n", "MgobYG9g4bg=\n");
                boolean z7 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS, strS2);
                String str = (String) response.body();
                ((d) this.f7119b).getClass();
                new i0(i6, str).start();
                Spark.f8663d2.g(a2.a.s("5qOvUyChjg==\n", "hcvOPU7E4pk=\n"));
                da.c cVar = Spark.f8663d2;
                String strS3 = a2.a.s("JDvQjyWbgQ==\n", "R1Ox4Uv+7YM=\n");
                String str2 = (String) response.body();
                int i10 = ea.h.f6679j / 1000;
                cVar.getClass();
                new da.a(cVar, strS3, o9.e.n(i10) + str2).start();
                return;
            case 1:
                boolean zIsSuccessful = response.isSuccessful();
                m mVar = (m) this.f7119b;
                if (!zIsSuccessful) {
                    String strS4 = a2.a.s("tBMQLJv7\n", "9kBFX/6Jp1I=\n");
                    String str3 = a2.a.s("187KX1xD4E3LmrlEUFSlV8vz7ElcRfZN3tX1Cg==\n", "uKCZKj8ghT4=\n") + response.headers() + a2.a.s("Tokc\n", "Y6QxPqiqV5Y=\n") + ((String) response.body());
                    boolean z10 = org.bitspark.android.utils.m.f8784b;
                    Log.i(strS4, str3);
                    m.a(mVar, a2.a.s("9w==\n", "xSR/ks84huA=\n"));
                    if (m.b(mVar)) {
                        mVar.e();
                        return;
                    }
                    Spark.m0(1, mVar.f7151a.getString(R.string.login_error_msg) + a2.a.s("Dg==\n", "PBLQ6btZBC8=\n"));
                    org.bitspark.android.utils.m.l(ea.g.f6658a);
                    Spark.X1.sendEmptyMessage(10);
                    a2.a.s("qQ==\n", "mxtwlUN8KVI=\n");
                    String str4 = ea.h.f6672a;
                    return;
                }
                String strS5 = a2.a.s("FmtqoI1c\n", "VDg/0+guEhw=\n");
                String str5 = a2.a.s("mQyur8MDs6zeD6jgz1a0oYwfv/2CGazk01f6\n", "/mnaj6J2x8Q=\n") + ((String) response.body());
                boolean z11 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS5, str5);
                String str6 = response.headers().get(a2.a.s("HqcJ8Q==\n", "WsZ9lNFz7i4=\n"));
                Log.i(a2.a.s("ZZsKDKZu\n", "J8hff8McSqE=\n"), a2.a.s("dXbNuLzUWYVPftr0+Q==\n", "JhO/ztmmefE=\n") + str6);
                if (str6 != null) {
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(a2.a.s("mQv8pZzujweRA/SpxfOSXvwG8bPR59FUr27D\n", "3E65ibyK6yc=\n"), Locale.US);
                    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(a2.a.s("DM+aKbokHHEEx/984zlFHAHC5Wj3ek9PadA=\n", "SYrfBZpAPDw=\n"), Locale.getDefault());
                    try {
                        m.d = simpleDateFormat.parse(str6).getTime();
                        Log.i(a2.a.s("KSIcv5vI\n", "a3FJzP66nwE=\n"), a2.a.s("Ne+F0Nb8ROQP+5Oekw==\n", "Zpb2pLORZJA=\n") + simpleDateFormat2.format(Long.valueOf(System.currentTimeMillis())));
                        if (Math.abs(m.d - System.currentTimeMillis()) > 600000) {
                            org.bitspark.android.utils.m.f8783a = m.d - System.currentTimeMillis();
                            Log.i(a2.a.s("qJtFkMRn\n", "6sgQ46EVqqs=\n"), a2.a.s("CxrmxkQAt4cCGpCy\n", "T1+qkgVf484=\n") + org.bitspark.android.utils.m.q((int) (org.bitspark.android.utils.m.f8783a / 1000)));
                        }
                    } catch (ParseException unused) {
                        Log.i(a2.a.s("dqMj0/pL\n", "NPB2oJ85HBY=\n"), a2.a.s("6DS5PR+2V430YMoYHadBm8IiiS0MoVuR6Xo=\n", "h1rqSHzVMv4=\n") + response.headers() + a2.a.s("ejAx\n", "Vx0cBBogvuw=\n") + ((String) response.body()));
                        m.a(mVar, a2.a.s("8g==\n", "wcKF6nDKgwc=\n"));
                        if (m.b(mVar)) {
                            mVar.e();
                            return;
                        }
                        Spark.m0(1, mVar.f7151a.getString(R.string.login_error_msg) + a2.a.s("ew==\n", "SA8b04zTKSY=\n"));
                        org.bitspark.android.utils.m.l(ea.g.f6658a);
                        Spark.X1.sendEmptyMessage(10);
                        a2.a.s("KQ==\n", "GoImOs5lN0c=\n");
                        String str7 = ea.h.f6672a;
                        return;
                    }
                }
                m.c(mVar, (String) response.body(), response.code());
                Log.i(m.f7149c, a2.a.s("51LRpEb0aXvoWMW+Eoc=\n", "iz22zSinHBg=\n") + a2.a.s("xg==\n", "9mBI2GW74QA=\n") + a2.a.s("PP82ew==\n", "HNIbW9OshT0=\n") + mVar.f7152b);
                mVar.f7152b = 0;
                return;
            case 2:
                String strS6 = a2.a.s("fCB3dzomkINQHUR0\n", "PnMhGF5l+OI=\n");
                String strS7 = a2.a.s("PabSmwJpC8UyosjVEWpP4Cisy5sHYx3wP7GG1B8=\n", "WsOmu3QGb4Y=\n");
                boolean z12 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS6, strS7);
                o oVar = (o) this.f7119b;
                String str8 = (String) response.body();
                oVar.getClass();
                try {
                    try {
                        o.f = JSON.parseArray(str8, GroupBeanModel.class);
                        Collections.sort(o.f, new a0.e(4));
                        Iterator it = o.f.iterator();
                        while (it.hasNext()) {
                            Collections.sort(((GroupBeanModel) it.next()).items, new n());
                        }
                        if (o.f != null) {
                            o.a();
                        }
                        a2.a.s("diq+u+CXkLRyKuy+6tPJ+yhl7A==\n", "BkvMyIW39NU=\n");
                    } catch (Exception e5) {
                        String str9 = o.f7153a;
                        String str10 = a2.a.s("s7IYGgEydWOnkAIICnxmYOO3Cx0FMmZ+sbwYSEQ=\n", "w9NqaWQSAww=\n") + e5.toString();
                        boolean z13 = org.bitspark.android.utils.m.f8784b;
                        Log.i(str9, str10);
                    }
                    Spark.X1.sendEmptyMessage(22);
                    return;
                } catch (Throwable th) {
                    Spark.X1.sendEmptyMessage(22);
                    throw th;
                }
            default:
                boolean zIsSuccessful2 = response.isSuccessful();
                org.bitspark.android.utils.j jVar = (org.bitspark.android.utils.j) this.f7119b;
                if (zIsSuccessful2) {
                    jVar.a(a2.a.s("YaWXvOBXoQ==\n", "Lu63ks55gRo=\n"));
                    return;
                }
                String strS8 = a2.a.s("gbPf21PC4G+7v8ff\n", "z9arrDywizo=\n");
                String str11 = a2.a.s("QHViKyMVIwl1c3g8ZgIyE3c6eSs1AzQDZml/IzMadxJmaXwqKAUyWiM6IWUFGTMFOTo=\n", "AxoMRUZ2V2A=\n") + response.code();
                boolean z14 = org.bitspark.android.utils.m.f8784b;
                Log.i(strS8, str11);
                jVar.b(a2.a.s("UtC44cZVb/w5jOQ=\n", "F6LKjrR1Xtw=\n"));
                return;
        }
    }
}
