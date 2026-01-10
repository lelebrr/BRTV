package ga;

import com.tencent.mars.xlog.Log;
import ea.q;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.EpgBeans;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ File f7125a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ h f7126b;

    public g(h hVar, File file) {
        this.f7126b = hVar;
        this.f7125a = file;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        long j10 = Runtime.getRuntime().totalMemory();
        String strS = a2.a.s("39wX2Lk=\n", "nY9SiP6XXgw=\n");
        StringBuilder sb = new StringBuilder();
        sb.append(a2.a.s("uKEVFx3Ra+i4oRUXHZg5oeTwZU9NgySsv7w=\n", "hZwoKiDsVtU=\n"));
        sb.append(j10);
        String strJ = q.j("xk640NQacUOcSOOT\n", "5i3Zs7x/Iio=\n", sb, (int) j10);
        boolean z7 = org.bitspark.android.utils.m.f8784b;
        Log.i(strS, strJ);
        long jC = org.bitspark.android.utils.m.c(new Date().getTime() + org.bitspark.android.utils.m.f8783a + 86400000);
        Log.i(a2.a.s("fNqqe24=\n", "PonvKymCgTE=\n"), a2.a.s("WO9GbTixrk1b2k5yOJe1T0mg\n", "LIArAFfD3CI=\n") + this.f7126b.f7129a.format(Long.valueOf(jC)));
        try {
            long time = new Date().getTime();
            ArrayList arrayListE = h.e(this.f7125a);
            for (int i6 = 0; i6 < arrayListE.size(); i6++) {
                HashMap map = new HashMap();
                ArrayList arrayList = new ArrayList();
                List<EpgBeans.EpgBean> epg = ((EpgBeans) arrayListE.get(i6)).getEpg();
                Collections.sort(epg, new f());
                long j11 = 0;
                for (int i10 = 0; i10 < epg.size(); i10++) {
                    String str = ea.h.f6672a;
                    long jC2 = org.bitspark.android.utils.m.c(epg.get(i10).getTime().longValue());
                    if (j11 != jC2) {
                        if (j11 != 0) {
                            map.put(Long.valueOf(j11), arrayList);
                            arrayList = new ArrayList();
                        }
                        arrayList.add(epg.get(i10));
                        j11 = jC2;
                    } else {
                        arrayList.add(epg.get(i10));
                    }
                }
                if (arrayList.size() > 0) {
                    map.put(Long.valueOf(j11), arrayList);
                }
                if (map.size() > 0) {
                    Spark.f8663d2.g(a2.a.s("byx2deUt2W0hIHZi5Q==\n", "DEQXG8hIqQo=\n") + ((EpgBeans) arrayListE.get(i6)).getId());
                    Spark.f8663d2.d(a2.a.s("bdWwRcHqMd8j2bBSwQ==\n", "Dr3RK+yPQbg=\n") + ((EpgBeans) arrayListE.get(i6)).getId(), map, ea.h.f6679j / 1000);
                }
            }
            Spark.X1.sendEmptyMessage(301);
            Log.i(a2.a.s("Xc5v6QY=\n", "H50quUFmGRA=\n"), a2.a.s("5K64nHhDqVHo67yAPxSkSu6u+d52Gg==\n", "gMvZ8Fg0wCU=\n") + (new Date().getTime() - time));
        } catch (Exception e5) {
            Log.i(a2.a.s("l+4ooV0=\n", "1b1t8RrDGFA=\n"), a2.a.s("qoglshaHq929yTOgB8buyKibOLNS\n", "2ulXwXOnzq0=\n"));
            e5.printStackTrace();
        } catch (Throwable th) {
            throw th;
        }
    }
}
