package com.tencent.bugly.proguard;

import android.content.Context;
import android.text.TextUtils;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ae {
    public static bu a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        bu buVar = new bu();
        buVar.f5867a = userInfoBean.f5481e;
        buVar.f5870e = userInfoBean.f5485j;
        buVar.d = userInfoBean.f5480c;
        buVar.f5869c = userInfoBean.d;
        buVar.f5872h = userInfoBean.f5490o == 1;
        int i6 = userInfoBean.f5479b;
        if (i6 == 1) {
            buVar.f5868b = (byte) 1;
        } else if (i6 == 2) {
            buVar.f5868b = (byte) 4;
        } else if (i6 == 3) {
            buVar.f5868b = (byte) 2;
        } else if (i6 == 4) {
            buVar.f5868b = (byte) 3;
        } else if (i6 == 8) {
            buVar.f5868b = (byte) 8;
        } else {
            if (i6 < 10 || i6 >= 20) {
                al.e("unknown uinfo type %d ", Integer.valueOf(i6));
                return null;
            }
            buVar.f5868b = (byte) i6;
        }
        HashMap map = new HashMap();
        buVar.f = map;
        if (userInfoBean.f5491p >= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(userInfoBean.f5491p);
            map.put("C01", sb.toString());
        }
        if (userInfoBean.f5492q >= 0) {
            Map<String, String> map2 = buVar.f;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(userInfoBean.f5492q);
            map2.put("C02", sb2.toString());
        }
        Map<String, String> map3 = userInfoBean.f5493r;
        if (map3 != null && map3.size() > 0) {
            for (Map.Entry<String, String> entry : userInfoBean.f5493r.entrySet()) {
                buVar.f.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map4 = userInfoBean.f5494s;
        if (map4 != null && map4.size() > 0) {
            for (Map.Entry<String, String> entry2 : userInfoBean.f5494s.entrySet()) {
                buVar.f.put("C04_" + entry2.getKey(), entry2.getValue());
            }
        }
        Map<String, String> map5 = buVar.f;
        StringBuilder sb3 = new StringBuilder();
        sb3.append(!userInfoBean.f5487l);
        map5.put("A36", sb3.toString());
        Map<String, String> map6 = buVar.f;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(userInfoBean.f5482g);
        map6.put("F02", sb4.toString());
        Map<String, String> map7 = buVar.f;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(userInfoBean.f5483h);
        map7.put("F03", sb5.toString());
        buVar.f.put("F04", userInfoBean.f5485j);
        Map<String, String> map8 = buVar.f;
        StringBuilder sb6 = new StringBuilder();
        sb6.append(userInfoBean.f5484i);
        map8.put("F05", sb6.toString());
        buVar.f.put("F06", userInfoBean.f5488m);
        Map<String, String> map9 = buVar.f;
        StringBuilder sb7 = new StringBuilder();
        sb7.append(userInfoBean.f5486k);
        map9.put("F10", sb7.toString());
        al.c("summary type %d vm:%d", Byte.valueOf(buVar.f5868b), Integer.valueOf(buVar.f.size()));
        return buVar;
    }

    public static <T extends m> T a(byte[] bArr, Class<T> cls) {
        if (bArr != null && bArr.length > 0) {
            try {
                T tNewInstance = cls.newInstance();
                k kVar = new k(bArr);
                kVar.a("utf-8");
                tNewInstance.a(kVar);
                return tNewInstance;
            } catch (Throwable th) {
                if (!al.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static bq a(Context context, int i6, byte[] bArr) {
        String str;
        aa aaVarB = aa.b();
        StrategyBean strategyBeanC = ac.a().c();
        if (aaVarB != null && strategyBeanC != null) {
            try {
                bq bqVar = new bq();
                synchronized (aaVarB) {
                    try {
                        bqVar.f5821a = aaVarB.f5571b;
                        bqVar.f5822b = aaVarB.e();
                        bqVar.f5823c = aaVarB.f5572c;
                        bqVar.d = aaVarB.f5582o;
                        bqVar.f5824e = aaVarB.f5586s;
                        bqVar.f = aaVarB.f5575h;
                        bqVar.f5825g = i6;
                        if (bArr == null) {
                            bArr = "".getBytes();
                        }
                        bqVar.f5826h = bArr;
                        bqVar.f5827i = aaVarB.h();
                        bqVar.f5828j = aaVarB.f5578k;
                        bqVar.f5829k = new HashMap();
                        bqVar.f5830l = aaVarB.d();
                        bqVar.f5831m = strategyBeanC.f5510o;
                        bqVar.f5833o = aaVarB.g();
                        bqVar.f5834p = ab.c(context);
                        bqVar.f5835q = System.currentTimeMillis();
                        bqVar.f5837s = aaVarB.i();
                        bqVar.f5840v = aaVarB.g();
                        bqVar.f5841w = bqVar.f5834p;
                        bqVar.f5832n = "com.tencent.bugly";
                        bqVar.f5829k.put("A26", aaVarB.s());
                        Map<String, String> map = bqVar.f5829k;
                        StringBuilder sb = new StringBuilder();
                        sb.append(aa.C());
                        map.put("A62", sb.toString());
                        Map<String, String> map2 = bqVar.f5829k;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(aa.D());
                        map2.put("A63", sb2.toString());
                        Map<String, String> map3 = bqVar.f5829k;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(aaVarB.J);
                        map3.put("F11", sb3.toString());
                        Map<String, String> map4 = bqVar.f5829k;
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(aaVarB.I);
                        map4.put("F12", sb4.toString());
                        bqVar.f5829k.put("D3", aaVarB.f5584q);
                        List<o> list = p.f5935b;
                        if (list != null) {
                            for (o oVar : list) {
                                String str2 = oVar.versionKey;
                                if (str2 != null && (str = oVar.version) != null) {
                                    bqVar.f5829k.put(str2, str);
                                }
                            }
                        }
                        bqVar.f5829k.put("G15", ap.d("G15", ""));
                        bqVar.f5829k.put("G10", ap.d("G10", ""));
                        bqVar.f5829k.put("D4", ap.d("D4", SessionDescription.SUPPORTED_SDP_VERSION));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                Map<String, String> mapX = aaVarB.x();
                if (mapX != null) {
                    for (Map.Entry<String, String> entry : mapX.entrySet()) {
                        if (!TextUtils.isEmpty(entry.getValue())) {
                            bqVar.f5829k.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
                return bqVar;
            } catch (Throwable th2) {
                if (!al.b(th2)) {
                    th2.printStackTrace();
                }
                return null;
            }
        }
        al.e("Can not create request pkg for parameters is invalid.", new Object[0]);
        return null;
    }

    public static byte[] a(Object obj) {
        try {
            e eVar = new e();
            eVar.b();
            eVar.a("utf-8");
            eVar.c();
            eVar.b("RqdServer");
            eVar.c("sync");
            eVar.a("detail", obj);
            return eVar.a();
        } catch (Throwable th) {
            if (al.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public static br a(byte[] bArr) {
        if (bArr != null) {
            try {
                e eVar = new e();
                eVar.b();
                eVar.a("utf-8");
                eVar.a(bArr);
                Object objB = eVar.b("detail", new br());
                if (br.class.isInstance(objB)) {
                    return (br) br.class.cast(objB);
                }
                return null;
            } catch (Throwable th) {
                if (!al.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static byte[] a(m mVar) {
        try {
            l lVar = new l();
            lVar.a("utf-8");
            mVar.a(lVar);
            byte[] bArr = new byte[lVar.f5922a.position()];
            System.arraycopy(lVar.f5922a.array(), 0, bArr, 0, lVar.f5922a.position());
            return bArr;
        } catch (Throwable th) {
            if (al.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
