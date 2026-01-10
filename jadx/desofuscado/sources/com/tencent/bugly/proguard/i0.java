package com.tencent.bugly.proguard;

import com.alibaba.fastjson.JSON;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.ag;
import com.tencent.mars.xlog.Log;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.bitspark.android.Spark;
import org.bitspark.android.beans.ChannelBean;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5910a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f5911b;

    public /* synthetic */ i0(int i6, Object obj) {
        this.f5910a = i6;
        this.f5911b = obj;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        List<CrashDetailBean> list;
        switch (this.f5910a) {
            case 0:
                at atVar = (at) this.f5911b;
                if (!ap.a(atVar.f5706c, "local_crash_lock")) {
                    al.c("Failed to lock file for uploading local crash.", new Object[0]);
                    return;
                }
                ag agVar = ag.a.f5610a;
                List<ag.b> listA = ag.a();
                if (listA == null || listA.isEmpty()) {
                    al.c("sla local data is null", new Object[0]);
                } else {
                    al.c("sla load local data list size:%s", Integer.valueOf(listA.size()));
                    Iterator<ag.b> it = listA.iterator();
                    ArrayList arrayList = new ArrayList();
                    while (it.hasNext()) {
                        ag.b next = it.next();
                        if (next.f5612b < ap.b() - 604800000) {
                            al.c("sla local data is expired:%s", next.f5613c);
                            arrayList.add(next);
                            it.remove();
                        }
                    }
                    ag.d(arrayList);
                    agVar.b(listA);
                }
                List<CrashDetailBean> listA2 = as.a();
                if (listA2 == null || listA2.size() <= 0) {
                    al.c("no crash need to be uploaded at this start", new Object[0]);
                } else {
                    al.c("Size of crash list: %s", Integer.valueOf(listA2.size()));
                    int size = listA2.size();
                    if (size > 20) {
                        ArrayList arrayList2 = new ArrayList();
                        Collections.sort(listA2);
                        for (int i6 = 0; i6 < 20; i6++) {
                            arrayList2.add(listA2.get((size - 1) - i6));
                        }
                        list = arrayList2;
                    } else {
                        list = listA2;
                    }
                    atVar.f5707s.a(list, 0L, false, false, false);
                }
                ap.b(atVar.f5706c, "local_crash_lock");
                return;
            default:
                try {
                    try {
                        ga.d.f7121b = JSON.parseArray((String) this.f5911b, ChannelBean.class);
                        ga.d.a();
                    } catch (Exception e5) {
                        String strS = a2.a.s("XPdnyzJSPPdy\n", "HqQko1M8UpI=\n");
                        String str = a2.a.s("L6TW9B+wLxs+q8riFrAoEiukhOII4iMBfg==\n", "X8Wkh3qQTHM=\n") + e5.toString();
                        boolean z7 = org.bitspark.android.utils.m.f8784b;
                        Log.i(strS, str);
                    }
                    return;
                } finally {
                    Spark.X1.sendEmptyMessage(20);
                }
        }
    }
}
