package ga;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.lzy.okgo.OkGo;
import com.lzy.okgo.cache.CacheMode;
import com.lzy.okgo.model.HttpParams;
import com.lzy.okgo.request.PostRequest;
import com.p2elite.brtv2.R;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.mars.xlog.Log;
import ea.q;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
import java.util.UUID;
import org.bitspark.android.Spark;
import org.bitspark.android.Utils;
import org.bitspark.android.beans.AuthInfo;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m {

    /* renamed from: c, reason: collision with root package name */
    public static final String f7149c = a2.a.s("/+Wb+X8c\n", "vbbOihpuS50=\n");
    public static long d = 0;

    /* renamed from: e, reason: collision with root package name */
    public static AuthInfo f7150e;

    /* renamed from: a, reason: collision with root package name */
    public final Context f7151a;

    /* renamed from: b, reason: collision with root package name */
    public int f7152b = 0;

    public m(Context context) {
        this.f7151a = context;
    }

    public static void a(m mVar, String str) {
        mVar.getClass();
        String str2 = a2.a.s("yKL6ZGmG13vIqPk3Jw==\n", "pM2dDQfAthI=\n") + str + a2.a.s("6mch/g==\n", "ykoM3lUeAaM=\n") + mVar.f7152b;
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(f7149c, str2);
        mVar.f7152b++;
    }

    public static boolean b(m mVar) {
        boolean z7 = mVar.f7152b == 1 && !TextUtils.isEmpty(g(l.f7147l));
        String str = a2.a.s("jBnFw0x3UziGPcXRSX1GLZ4YxIwAMypn3w==\n", "/3GqtiATB0o=\n") + mVar.f7152b + " " + z7;
        boolean z10 = org.bitspark.android.utils.m.f8784b;
        Log.i(f7149c, str);
        return z7;
    }

    public static void c(m mVar, String str, int i6) {
        String string;
        mVar.getClass();
        try {
            String str2 = ea.g.f6658a;
            org.bitspark.android.utils.m.l(str2);
            AuthInfo authInfo = (AuthInfo) JSON.parseObject(str, AuthInfo.class);
            f7150e = authInfo;
            org.bitspark.android.utils.m.m(authInfo.code, str2);
            AuthInfo authInfo2 = f7150e;
            if (authInfo2 == null) {
                Spark.m0(0, "2131886504" + a2.a.s("TgI=\n", "dCJEcDzZOQ0=\n") + i6);
                org.bitspark.android.utils.m.l(str2);
                Spark.X1.sendEmptyMessage(10);
                return;
            }
            int i10 = authInfo2.code;
            if (i10 == 0) {
                Spark.X1.sendEmptyMessage(15);
                return;
            }
            Context context = mVar.f7151a;
            if (i10 == -11) {
                string = context.getString(R.string.no_such_accout_err);
            } else if (i10 == -10) {
                string = context.getString(R.string.password_err);
            } else {
                string = f7150e.result + a2.a.s("tqw=\n", "jIzaRZOubnY=\n") + f7150e.code + a2.a.s("wX12\n", "4VJW5YzrdMw=\n") + i6;
            }
            Spark.m0(1, string);
            org.bitspark.android.utils.m.l(str2);
            Spark.X1.sendEmptyMessage(10);
        } catch (Exception unused) {
            String strS = a2.a.s("wlGnuJiO457XQvWvnNr3zddCp6SPjw==\n", "sjDVy/2ulu0=\n");
            boolean z7 = org.bitspark.android.utils.m.f8784b;
            Log.i(f7149c, strS);
            Spark.m0(1, a2.a.s("mG/kkFKjNxetfLaHVvcjRK185IxFuWI=\n", "yA6W4zeDQmQ=\n") + i6);
            Spark.X1.sendEmptyMessage(10);
        }
    }

    public static String d(String str) {
        AuthInfo.ServiceBean serviceBean;
        AuthInfo authInfo = f7150e;
        if (authInfo == null || (serviceBean = authInfo.service) == null || serviceBean.token == null) {
            return str;
        }
        if (str == null || str.isEmpty()) {
            return "";
        }
        if (str.indexOf(a2.a.s("AQ==\n", "PsQj5fYr/wc=\n")) > 0) {
            StringBuilder sbM = q.m(str);
            sbM.append(a2.a.s("l3H9\n", "sQXAEbsbxkI=\n"));
            sbM.append(f7150e.service.token);
            return sbM.toString();
        }
        StringBuilder sbM2 = q.m(str);
        sbM2.append(a2.a.s("rqGR\n", "kdWsBUNHfOI=\n"));
        sbM2.append(f7150e.service.token);
        return sbM2.toString();
    }

    public static String g(l lVar) {
        AuthInfo authInfo = f7150e;
        String strD = "";
        if ((authInfo == null || authInfo.service == null) && lVar != l.f7139b && lVar != l.f7138a && lVar != l.f7147l) {
            return "";
        }
        switch (lVar.ordinal()) {
            case 0:
                strD = ea.h.f6672a;
                break;
            case 1:
                strD = ea.h.f6673b;
                break;
            case 2:
                strD = f7150e.service.auth_url;
                break;
            case 3:
                strD = f7150e.service.brand_url;
                break;
            case 4:
                strD = d(f7150e.service.ch_url);
                break;
            case 5:
                strD = d(f7150e.service.vod_url);
                break;
            case 6:
                strD = d(f7150e.service.epg_url);
                break;
            case 7:
                strD = d(f7150e.service.update_url);
                break;
            case 8:
                strD = d(f7150e.service.message_url);
                break;
            case 9:
                strD = d(f7150e.service.vod_tag_url);
                break;
            case 10:
                strD = f7150e.service.vod_search_url;
                break;
            case 11:
                strD = f7150e.service.vod_tag_url;
                break;
            case 12:
                strD = d(f7150e.service.event_url);
                break;
            case 13:
                strD = d(f7150e.service.wsguard_url);
                break;
            case 14:
                strD = ea.h.f6674c;
                break;
        }
        int iIntValue = org.bitspark.android.utils.m.f(0, a2.a.s("KFCvSpE0\n", "exX9HNRmuwU=\n")).intValue();
        if (iIntValue == 0) {
            return strD;
        }
        return strD.replaceFirst(a2.a.s("BxE=\n", "Wz9rpW9RyDE=\n"), a2.a.s("Ve0=\n", "eI9BQpcfTtY=\n") + iIntValue + a2.a.s("HA==\n", "Mp6fgxPe+48=\n"));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e() {
        HttpParams httpParams = new HttpParams();
        httpParams.put(a2.a.s("SjlvfA==\n", "LEsAETJaaGY=\n"), a2.a.s("0Lw=\n", "scycJScxnq8=\n"), new boolean[0]);
        int iIntValue = org.bitspark.android.utils.m.f(0, ea.g.f6659b).intValue();
        if (iIntValue != 2 && iIntValue != 1) {
            Spark.X1.sendEmptyMessage(10);
            return;
        }
        String str = ea.g.f6661e;
        String strG = org.bitspark.android.utils.m.g(str, "");
        boolean zIsEmpty = strG.isEmpty();
        Context context = this.f7151a;
        if (!zIsEmpty) {
            CrashReport.setUserId(context, strG);
        }
        httpParams.put(a2.a.s("/xyVgIMvzws=\n", "im/w8u1Oom4=\n"), strG, new boolean[0]);
        String strS = a2.a.s("C8WOk08mmpc=\n", "e6T94DhJ6PM=\n");
        String str2 = ea.g.f;
        httpParams.put(strS, org.bitspark.android.utils.m.g(str2, ""), new boolean[0]);
        httpParams.put(a2.a.s("BIBMLHMzsqw=\n", "YOU6RRBW++g=\n"), r4.b.l(context), new boolean[0]);
        httpParams.put(a2.a.s("R8W/7tdMS/VWybk=\n", "N6TchbYrLrs=\n"), ea.a.f6600b, new boolean[0]);
        httpParams.put(a2.a.s("wI573lf/qQ==\n", "of4LkDaSzFw=\n"), ea.a.f6608l, new boolean[0]);
        httpParams.put(a2.a.s("bIkZdlWg4BBilw==\n", "DflpIDDSk3k=\n"), ea.a.f6602e, new boolean[0]);
        httpParams.put(a2.a.s("xLeLN45zN8PIpg==\n", "psLiW+oxRaI=\n"), Build.BRAND, new boolean[0]);
        httpParams.put(a2.a.s("4lssCRsf5wrkWyYR\n", "gC5FZX9PlWU=\n"), Build.PRODUCT, new boolean[0]);
        httpParams.put(a2.a.s("ng6Ai7sfx8+OHw==\n", "/Hvp599dqK4=\n"), Build.BOARD, new boolean[0]);
        httpParams.put(a2.a.s("gyZTif14oZ8=\n", "4VM65Zk549Y=\n"), Build.CPU_ABI, new boolean[0]);
        httpParams.put(a2.a.s("Z/e5oqwPy6Jn47k=\n", "CIfc0M17ru8=\n"), org.bitspark.android.utils.m.f(0, a2.a.s("nyXkY0ZI7BmJKu9+U1s=\n", "zHW7JwMepVo=\n")).intValue(), new boolean[0]);
        httpParams.put(a2.a.s("ljLwFHdPNxqEK/gB\n", "9EeZeBMLXmk=\n"), Build.DISPLAY, new boolean[0]);
        httpParams.put(a2.a.s("ioXJZF2IB3mNnA==\n", "6PCgCDnFaB0=\n"), Build.MODEL, new boolean[0]);
        httpParams.put(a2.a.s("dNJe5ZnHYCNoxQ==\n", "B6sts/y1E0o=\n"), Build.VERSION.RELEASE, new boolean[0]);
        String strG2 = g(l.f7139b);
        if (this.f7152b == 1) {
            strG2 = g(l.f7147l);
        }
        Log.i(f7149c, a2.a.s("Jg2xueyNwa4pIw==\n", "R3jF1qDipsc=\n") + this.f7152b + a2.a.s("E6gjQ+6lcCcV\n", "TogOY5vXHB0=\n") + strG2 + a2.a.s("KtLqSWU=\n", "d/LHZEW1yj8=\n") + org.bitspark.android.utils.m.g(str, "") + a2.a.s("/A==\n", "xiOqayZzWLU=\n") + org.bitspark.android.utils.m.g(str2, ""));
        OkGo.getInstance().cancelTag(this);
        PostRequest postRequest = (PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) ((PostRequest) OkGo.post(strG2).removeHeader(a2.a.s("/Rk2dHARa4XGHg==\n", "qGpTBl1QDOA=\n"))).headers(a2.a.s("yosTXGGT1mvxjA==\n", "n/h2LkzSsQ4=\n"), ea.a.f6609m)).params(httpParams)).tag(this)).cacheMode(CacheMode.REQUEST_FAILED_READ_CACHE)).cacheTime(259200000L);
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("XSet\n", "PkyARKSfBL8=\n"));
        sb.append(strG2);
        sb.append(a2.a.s("Rw==\n", "aoP393haGXY=\n"));
        sb.append(org.bitspark.android.utils.m.g(str, ""));
        ((PostRequest) postRequest.cacheKey(sb.toString())).execute(new c(1, this));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void f() {
        String str = ea.g.f6660c;
        String strG = org.bitspark.android.utils.m.g(str, "");
        if (strG.equals("")) {
            strG = ea.a.f6604h;
            org.bitspark.android.utils.m.n(str, strG);
        }
        if (strG.equals("")) {
            String string = UUID.randomUUID().toString();
            System.out.println(string);
            strG = string.replace(a2.a.s("Hg==\n", "Mxy0hHwovWU=\n"), "").substring(0, 12).toUpperCase();
            org.bitspark.android.utils.m.n(str, strG);
        }
        Log.i(f7149c, q.k("FMD3+V63DVJmwfXmRKANDGY=\n", "RqWQkC3DaCA=\n", new StringBuilder(), strG));
        ((PostRequest) ((PostRequest) ((PostRequest) OkGo.post(g(l.f7138a)).params(a2.a.s("NcS6\n", "Ua3edn/MqDo=\n"), strG, new boolean[0])).tag(this)).cacheMode(CacheMode.NO_CACHE)).execute(new j(1));
    }

    public final void h() throws IOException {
        String property;
        String property2;
        String str = ea.h.f6672a;
        String str2 = ea.g.f6659b;
        if (org.bitspark.android.utils.m.f(0, str2).intValue() == 2 && !org.bitspark.android.utils.m.g(ea.g.f6660c, "").equals("")) {
            this.f7152b = 0;
            e();
            return;
        }
        if (org.bitspark.android.utils.m.f(0, str2).intValue() == 1 && !org.bitspark.android.utils.m.g(ea.g.f6661e, "").equals("")) {
            this.f7152b = 0;
            e();
            return;
        }
        Context context = this.f7151a;
        String strS = a2.a.s("fYgY+6ac1390iwP8oYfSeXaJOt+hm9ZZdMxNm/I=\n", "Gu1sutPovzY=\n");
        String str3 = f7149c;
        Log.i(str3, strS);
        Properties properties = new Properties();
        try {
        } catch (FileNotFoundException e5) {
            e5.printStackTrace();
            Log.i(str3, a2.a.s("NIFgOQqsWDQ3wSx0T+VRe3HLL38IrRd6NoM=\n", "F6JDGimMNls=\n"));
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        if (context.getFileStreamPath(a2.a.s("fVW8ZgF+eVYxTLp6AXp5SXZZuw==\n", "HzzIFXEfCz0=\n")).exists()) {
            FileInputStream fileInputStreamOpenFileInput = context.openFileInput(a2.a.s("gxi50Xmkvl3PAb/NeaC+QogUvg==\n", "4XHNognFzDY=\n"));
            properties.load(fileInputStreamOpenFileInput);
            fileInputStreamOpenFileInput.close();
            if (properties.getProperty(a2.a.s("3hGmkDzYeqE=\n", "q2LD4nK5F8Q=\n")) != null) {
                property = properties.getProperty(a2.a.s("bJMCzuv5CTw=\n", "GeBnvKWYZFk=\n"));
                int i6 = Utils.f8739a;
                if (property.length() >= 16) {
                    property = Utils.enc(0, property);
                }
            } else {
                property = "";
            }
            if (properties.getProperty(a2.a.s("I4ocB3RYyl0=\n", "U+tvdCM3uDk=\n")) != null) {
                property2 = properties.getProperty(a2.a.s("NPq4gMGZr5I=\n", "RJvL85b23fY=\n"));
                int i10 = Utils.f8739a;
                if (property2.length() >= 16) {
                    property2 = Utils.enc(0, property2);
                }
            } else {
                property2 = "";
            }
            if (!property.equals("") && !property2.equals("")) {
                Log.i(str3, a2.a.s("NFt2UdEKTzQ1Vn8Unlk=\n", "WzcScaR5KkY=\n") + property + a2.a.s("ww7PZJcvCAbbDdkg3W4=\n", "rGKrROdOe3U=\n") + property2);
                org.bitspark.android.utils.m.m(1, str2);
                org.bitspark.android.utils.m.n(ea.g.f6661e, property);
                org.bitspark.android.utils.m.n(ea.g.f, property2);
            }
            Spark.X1.sendEmptyMessage(10);
            return;
        }
        this.f7152b = 0;
        e();
    }
}
