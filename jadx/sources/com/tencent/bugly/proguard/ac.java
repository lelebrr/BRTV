package com.tencent.bugly.proguard;

import android.content.Context;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ac {

    /* renamed from: a, reason: collision with root package name */
    public static int f5597a = 1000;

    /* renamed from: b, reason: collision with root package name */
    public static long f5598b = 259200000;
    private static ac d;

    /* renamed from: i, reason: collision with root package name */
    private static String f5599i;

    /* renamed from: c, reason: collision with root package name */
    public final ak f5600c;

    /* renamed from: e, reason: collision with root package name */
    private final List<o> f5601e;
    private final StrategyBean f;

    /* renamed from: g, reason: collision with root package name */
    private StrategyBean f5602g = null;

    /* renamed from: h, reason: collision with root package name */
    private Context f5603h;

    private ac(Context context, List<o> list) {
        this.f5603h = context;
        if (aa.a(context) != null) {
            String str = aa.a(context).H;
            if ("oversea".equals(str)) {
                StrategyBean.f5498a = "https://astat.bugly.qcloud.com/rqd/async";
                StrategyBean.f5499b = "https://astat.bugly.qcloud.com/rqd/async";
            } else if ("na_https".equals(str)) {
                StrategyBean.f5498a = "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
                StrategyBean.f5499b = "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async";
            }
        }
        this.f = new StrategyBean();
        this.f5601e = list;
        this.f5600c = ak.a();
    }

    public static StrategyBean d() {
        byte[] bArr;
        List<y> listA = w.a().a(2);
        if (listA == null || listA.size() <= 0 || (bArr = listA.get(0).f5979g) == null) {
            return null;
        }
        return (StrategyBean) ap.a(bArr, StrategyBean.CREATOR);
    }

    public final StrategyBean c() {
        StrategyBean strategyBean = this.f5602g;
        if (strategyBean != null) {
            if (!ap.d(strategyBean.f5512q)) {
                this.f5602g.f5512q = StrategyBean.f5498a;
            }
            if (!ap.d(this.f5602g.f5513r)) {
                this.f5602g.f5513r = StrategyBean.f5499b;
            }
            return this.f5602g;
        }
        if (!ap.b(f5599i) && ap.d(f5599i)) {
            StrategyBean strategyBean2 = this.f;
            String str = f5599i;
            strategyBean2.f5512q = str;
            strategyBean2.f5513r = str;
        }
        return this.f;
    }

    public final synchronized boolean b() {
        return this.f5602g != null;
    }

    public static synchronized ac a(Context context, List<o> list) {
        try {
            if (d == null) {
                d = new ac(context, list);
            }
        } catch (Throwable th) {
            throw th;
        }
        return d;
    }

    public static synchronized ac a() {
        return d;
    }

    public final void a(StrategyBean strategyBean, boolean z7) {
        al.c("[Strategy] Notify %s", s.class.getName());
        s.a(strategyBean, z7);
        for (o oVar : this.f5601e) {
            try {
                al.c("[Strategy] Notify %s", oVar.getClass().getName());
                oVar.onServerStrategyChanged(strategyBean);
            } catch (Throwable th) {
                if (!al.a(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static void a(String str) {
        if (!ap.b(str) && ap.d(str)) {
            f5599i = str;
        } else {
            al.d("URL user set is invalid.", new Object[0]);
        }
    }

    public final void a(bt btVar) throws NumberFormatException {
        int i6;
        if (btVar == null) {
            return;
        }
        StrategyBean strategyBean = this.f5602g;
        if (strategyBean == null || btVar.f5861h != strategyBean.f5510o) {
            StrategyBean strategyBean2 = new StrategyBean();
            strategyBean2.f = btVar.f5856a;
            strategyBean2.f5503h = btVar.f5858c;
            strategyBean2.f5502g = btVar.f5857b;
            if (ap.b(f5599i) || !ap.d(f5599i)) {
                if (ap.d(btVar.d)) {
                    al.c("[Strategy] Upload url changes to %s", btVar.d);
                    strategyBean2.f5512q = btVar.d;
                }
                if (ap.d(btVar.f5859e)) {
                    al.c("[Strategy] Exception upload url changes to %s", btVar.f5859e);
                    strategyBean2.f5513r = btVar.f5859e;
                }
            }
            bs bsVar = btVar.f;
            if (bsVar != null && !ap.b(bsVar.f5851a)) {
                strategyBean2.f5514s = btVar.f.f5851a;
            }
            long j10 = btVar.f5861h;
            if (j10 != 0) {
                strategyBean2.f5510o = j10;
            }
            Map<String, String> map = btVar.f5860g;
            if (map != null && map.size() > 0) {
                Map<String, String> map2 = btVar.f5860g;
                strategyBean2.f5515t = map2;
                String str = map2.get("B11");
                strategyBean2.f5504i = str != null && str.equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                String str2 = btVar.f5860g.get("B3");
                if (str2 != null) {
                    strategyBean2.f5518w = Long.parseLong(str2);
                }
                int i10 = btVar.f5865l;
                strategyBean2.f5511p = i10;
                strategyBean2.f5517v = i10;
                String str3 = btVar.f5860g.get("B27");
                if (str3 != null && str3.length() > 0) {
                    try {
                        int i11 = Integer.parseInt(str3);
                        if (i11 > 0) {
                            strategyBean2.f5516u = i11;
                        }
                    } catch (Exception e5) {
                        if (!al.a(e5)) {
                            e5.printStackTrace();
                        }
                    }
                }
                String str4 = btVar.f5860g.get("B25");
                strategyBean2.f5506k = str4 != null && str4.equals(IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            }
            al.a("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", Boolean.valueOf(strategyBean2.f), Boolean.valueOf(strategyBean2.f5503h), Boolean.valueOf(strategyBean2.f5502g), Boolean.valueOf(strategyBean2.f5504i), Boolean.valueOf(strategyBean2.f5505j), Boolean.valueOf(strategyBean2.f5508m), Boolean.valueOf(strategyBean2.f5509n), Long.valueOf(strategyBean2.f5511p), Boolean.valueOf(strategyBean2.f5506k), Long.valueOf(strategyBean2.f5510o));
            this.f5602g = strategyBean2;
            if (ap.d(btVar.d)) {
                i6 = 0;
            } else {
                i6 = 0;
                al.c("[Strategy] download url is null", new Object[0]);
                this.f5602g.f5512q = "";
            }
            if (!ap.d(btVar.f5859e)) {
                al.c("[Strategy] download crashurl is null", new Object[i6]);
                this.f5602g.f5513r = "";
            }
            w.a().b(2);
            y yVar = new y();
            yVar.f5976b = 2;
            yVar.f5975a = strategyBean2.d;
            yVar.f5978e = strategyBean2.f5501e;
            yVar.f5979g = ap.a(strategyBean2);
            w.a().a(yVar);
            a(strategyBean2, true);
        }
    }
}
