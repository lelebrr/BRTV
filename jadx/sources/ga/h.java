package ga;

import com.alibaba.fastjson.JSONReader;
import ea.q;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;
import org.bitspark.android.beans.EpgBeans;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: b, reason: collision with root package name */
    public static final String f7127b = a2.a.s("epF49Cc=\n", "OMI9pGC7+RQ=\n");

    /* renamed from: c, reason: collision with root package name */
    public static final String f7128c = a2.a.s("ubDpfwMy0jL3vOloAw==\n", "2tiIES5XolU=\n");
    public static final SimpleDateFormat d;

    /* renamed from: a, reason: collision with root package name */
    public SimpleDateFormat f7129a;

    static {
        a2.a.s("IxWxT+RAkk4+CO9i7kWXWTcB8kW6I4wwCTY=\n", "WmzINskN32M=\n");
        d = new SimpleDateFormat(a2.a.s("pYNxVvG0VrW4ni97+7FTorGXMlyv10jLj6A=\n", "3PoIL9z5G5g=\n"), Locale.getDefault());
    }

    public static HashMap a(int i6) {
        Object objB = Spark.f8663d2.b(f7128c + i6);
        if (objB == null) {
            return null;
        }
        return (HashMap) objB;
    }

    public static EpgBeans.EpgBean b(int i6, String str) {
        HashMap mapA = a(i6);
        if (mapA == null) {
            return null;
        }
        Iterator it = mapA.entrySet().iterator();
        while (it.hasNext()) {
            for (EpgBeans.EpgBean epgBean : (List) ((Map.Entry) it.next()).getValue()) {
                if (epgBean.getId().equals(str)) {
                    return epgBean;
                }
            }
        }
        return null;
    }

    public static ArrayList c(int i6) {
        long jLongValue;
        long jLongValue2;
        long jLongValue3;
        int i10;
        HashMap mapA = a(i6);
        if (mapA == null) {
            return null;
        }
        long time = new Date().getTime() + org.bitspark.android.utils.m.f8783a;
        ArrayList arrayList = new ArrayList(mapA.keySet());
        Collections.sort(arrayList);
        int i11 = 0;
        while (true) {
            if (i11 >= arrayList.size()) {
                jLongValue = 0;
                jLongValue2 = 0;
                jLongValue3 = 0;
                break;
            }
            if (((Long) arrayList.get(i11)).longValue() <= time || i11 - 1 < 0) {
                i11++;
            } else {
                jLongValue2 = ((Long) arrayList.get(i10)).longValue();
                jLongValue3 = ((Long) arrayList.get(i11)).longValue();
                int i12 = i11 - 2;
                jLongValue = i12 >= 0 ? ((Long) arrayList.get(i12)).longValue() : 0L;
            }
        }
        if (jLongValue2 == 0 && arrayList.size() >= 1) {
            long jLongValue4 = ((Long) q.e(1, arrayList)).longValue();
            if (jLongValue4 + 86400000 > time) {
                if (arrayList.size() >= 2) {
                    jLongValue = ((Long) q.e(2, arrayList)).longValue();
                }
                jLongValue2 = jLongValue4;
            }
        }
        List list = (List) mapA.get(Long.valueOf(jLongValue2));
        if (list == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i13 = 0; i13 < list.size(); i13++) {
            if (((EpgBeans.EpgBean) list.get(i13)).getTime().longValue() <= time && time <= ((EpgBeans.EpgBean) list.get(i13)).getEndTime().longValue()) {
                arrayList2.add((EpgBeans.EpgBean) list.get(i13));
                int i14 = i13 + 1;
                if (i14 < list.size()) {
                    arrayList2.add((EpgBeans.EpgBean) list.get(i14));
                } else if (mapA.get(Long.valueOf(jLongValue3)) != null && !((List) mapA.get(Long.valueOf(jLongValue3))).isEmpty()) {
                    arrayList2.add((EpgBeans.EpgBean) ((List) mapA.get(Long.valueOf(jLongValue3))).get(0));
                }
                return arrayList2;
            }
        }
        List list2 = (List) mapA.get(Long.valueOf(jLongValue));
        if (list2 == null) {
            return null;
        }
        for (int i15 = 0; i15 < list2.size(); i15++) {
            if (((EpgBeans.EpgBean) list2.get(i15)).getTime().longValue() <= time && time <= ((EpgBeans.EpgBean) list2.get(i15)).getEndTime().longValue()) {
                arrayList2.add((EpgBeans.EpgBean) list2.get(i15));
                int i16 = i15 + 1;
                if (i16 < list2.size()) {
                    arrayList2.add((EpgBeans.EpgBean) list2.get(i16));
                } else if (!list.isEmpty()) {
                    arrayList2.add((EpgBeans.EpgBean) list.get(0));
                }
                return arrayList2;
            }
        }
        return null;
    }

    public static int d(ChannelBean channelBean) {
        return channelBean.getEpgSameAs() > 0 ? channelBean.getEpgSameAs() : channelBean.getChid();
    }

    public static ArrayList e(File file) throws IOException {
        FileReader fileReader = new FileReader(file);
        JSONReader jSONReader = new JSONReader(fileReader);
        jSONReader.startArray();
        ArrayList arrayList = new ArrayList();
        while (jSONReader.hasNext()) {
            jSONReader.startObject();
            EpgBeans epgBeans = new EpgBeans();
            while (jSONReader.hasNext()) {
                String string = jSONReader.readString();
                if (string.equals(a2.a.s("XcE5\n", "OLFeGex/Tdg=\n"))) {
                    jSONReader.startArray();
                    ArrayList arrayList2 = new ArrayList();
                    while (jSONReader.hasNext()) {
                        jSONReader.startObject();
                        EpgBeans.EpgBean epgBean = new EpgBeans.EpgBean();
                        while (jSONReader.hasNext()) {
                            String string2 = jSONReader.readString();
                            Object object = jSONReader.readObject();
                            String string3 = object != null ? object.toString() : "";
                            boolean zEquals = string2.equals(a2.a.s("CRmm0mL25A==\n", "bHfChgubgao=\n"));
                            SimpleDateFormat simpleDateFormat = d;
                            if (zEquals) {
                                epgBean.setEndTime(Long.valueOf(simpleDateFormat.parse(string3.replace(a2.a.s("6w==\n", "sYXUmG0/6Fg=\n"), a2.a.s("ojeXucI=\n", "iQenifLZesU=\n"))).getTime()));
                            }
                            if (string2.equals(a2.a.s("QV8=\n", "KDvsEDzlqbc=\n"))) {
                                epgBean.setId(string3);
                            }
                            if (string2.equals(a2.a.s("fdbhyw==\n", "E7eMrpeQrWQ=\n"))) {
                                epgBean.setName(string3);
                            }
                            if (string2.equals(a2.a.s("N+F7LV4qOkUS/3Y=\n", "R40aVDxLWS4=\n"))) {
                                epgBean.setPlaybackUrl(string3);
                            } else if (string2.equals(a2.a.s("7vgVyQ==\n", "mpF4rC24AB0=\n"))) {
                                epgBean.setTime(Long.valueOf(simpleDateFormat.parse(string3.replace(a2.a.s("lA==\n", "ztS5djcDnto=\n"), a2.a.s("lTllK2Q=\n", "vglVG1RqzzQ=\n"))).getTime()));
                            }
                        }
                        jSONReader.endObject();
                        arrayList2.add(epgBean);
                    }
                    jSONReader.endArray();
                    epgBeans.setEpg(arrayList2);
                } else if (string.equals(a2.a.s("eSGVAkI/vXRwI40=\n", "EUDmUi5exDY=\n"))) {
                    epgBeans.setHasPlayBack(Boolean.parseBoolean(jSONReader.readObject().toString()));
                } else if (string.equals(a2.a.s("rV4=\n", "xDquDRLj0F4=\n"))) {
                    epgBeans.setId(Integer.parseInt(jSONReader.readObject().toString()));
                } else {
                    jSONReader.readObject();
                }
            }
            arrayList.add(epgBeans);
            jSONReader.endObject();
        }
        jSONReader.endArray();
        jSONReader.close();
        fileReader.close();
        return arrayList;
    }
}
