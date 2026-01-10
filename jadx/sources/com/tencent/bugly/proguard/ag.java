package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class ag {

    /* renamed from: a, reason: collision with root package name */
    private final SimpleDateFormat f5608a;

    /* renamed from: b, reason: collision with root package name */
    private final ad f5609b;

    /* compiled from: MyApplication */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private static final ag f5610a = new ag(0);
    }

    /* compiled from: MyApplication */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        String f5611a;

        /* renamed from: b, reason: collision with root package name */
        public long f5612b;

        /* renamed from: c, reason: collision with root package name */
        public String f5613c;

        public final String toString() {
            StringBuilder sb = new StringBuilder("SLAData{uuid='");
            sb.append(this.f5611a);
            sb.append("', time=");
            sb.append(this.f5612b);
            sb.append(", data='");
            return a.e.t(sb, this.f5613c, "'}");
        }
    }

    public /* synthetic */ ag(byte b8) {
        this();
    }

    public static void c(List<b> list) {
        if (list == null || list.isEmpty()) {
            al.c("sla batch report data is empty", new Object[0]);
            return;
        }
        al.c("sla batch report list size:%s", Integer.valueOf(list.size()));
        if (list.size() > 30) {
            list = list.subList(0, 29);
        }
        ArrayList arrayList = new ArrayList();
        Iterator<b> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().f5613c);
        }
        Pair<Integer, String> pairA = ad.a(arrayList);
        al.c("sla batch report result, rspCode:%s rspMsg:%s", pairA.first, pairA.second);
        if (((Integer) pairA.first).intValue() == 200) {
            d(list);
        }
    }

    public static void d(List<b> list) {
        if (list == null || list.isEmpty()) {
            al.c("sla batch delete list is null", new Object[0]);
            return;
        }
        al.c("sla batch delete list size:%s", Integer.valueOf(list.size()));
        try {
            String str = "_id in (" + a(",", list) + ")";
            al.c("sla batch delete where:%s", str);
            w.a().a("t_sla", str);
        } catch (Throwable th) {
            al.b(th);
        }
    }

    private static void e(List<b> list) {
        for (b bVar : list) {
            al.c("sla save id:%s time:%s msg:%s", bVar.f5611a, Long.valueOf(bVar.f5612b), bVar.f5613c);
            try {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_id", bVar.f5611a);
                contentValues.put("_tm", Long.valueOf(bVar.f5612b));
                contentValues.put("_dt", bVar.f5613c);
                w.a().a("t_sla", contentValues, (v) null);
            } catch (Throwable th) {
                al.b(th);
            }
        }
    }

    public final void a(List<c> list) {
        if (list == null || list.isEmpty()) {
            al.d("sla batch report event is null", new Object[0]);
            return;
        }
        al.c("sla batch report event size:%s", Integer.valueOf(list.size()));
        ArrayList arrayList = new ArrayList();
        Iterator<c> it = list.iterator();
        while (it.hasNext()) {
            b bVarB = b(it.next());
            if (bVarB != null) {
                arrayList.add(bVarB);
            }
        }
        e(arrayList);
        b(arrayList);
    }

    public final void b(List<b> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            ak.a().a(new a.f(11, list));
        } else {
            c(list);
        }
    }

    private ag() {
        this.f5608a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS", Locale.US);
        this.f5609b = new ad();
    }

    private b b(c cVar) {
        if (cVar != null && !TextUtils.isEmpty(cVar.f5615b)) {
            aa aaVarB = aa.b();
            if (aaVarB == null) {
                al.d("sla convert failed because ComInfoManager is null", new Object[0]);
                return null;
            }
            StringBuilder sb = new StringBuilder("&app_version=");
            sb.append(aaVarB.f5582o);
            sb.append("&app_name=");
            sb.append(aaVarB.f5584q);
            sb.append("&app_bundle_id=");
            sb.append(aaVarB.f5572c);
            sb.append("&client_type=android&user_id=");
            sb.append(aaVarB.f());
            sb.append("&sdk_version=");
            sb.append(aaVarB.f5575h);
            sb.append("&event_code=");
            sb.append(cVar.f5615b);
            sb.append("&event_result=");
            sb.append(cVar.d ? 1 : 0);
            sb.append("&event_time=");
            sb.append(this.f5608a.format(new Date(cVar.f5616c)));
            sb.append("&event_cost=");
            sb.append(cVar.f5617e);
            sb.append("&device_id=");
            sb.append(aaVarB.g());
            sb.append("&debug=");
            sb.append(aaVarB.D ? 1 : 0);
            sb.append("&param_0=");
            sb.append(cVar.f);
            sb.append("&param_1=");
            sb.append(cVar.f5614a);
            sb.append("&param_2=");
            sb.append(aaVarB.M ? "rqd" : "ext");
            sb.append("&param_4=");
            sb.append(aaVarB.e());
            String string = sb.toString();
            if (!TextUtils.isEmpty(cVar.f5618g)) {
                StringBuilder sbW = a.e.w(string, "&param_3=");
                sbW.append(cVar.f5618g);
                string = sbW.toString();
            }
            al.c("sla convert eventId:%s eventType:%s, eventTime:%s success:%s cost:%s from:%s uploadMsg:", cVar.f5614a, cVar.f5615b, Long.valueOf(cVar.f5616c), Boolean.valueOf(cVar.d), Long.valueOf(cVar.f5617e), cVar.f, cVar.f5618g);
            String str = cVar.f5614a + "-" + cVar.f5615b;
            b bVar = new b();
            bVar.f5611a = str;
            bVar.f5612b = cVar.f5616c;
            bVar.f5613c = string;
            return bVar;
        }
        al.d("sla convert event is null", new Object[0]);
        return null;
    }

    /* compiled from: MyApplication */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        String f5614a;

        /* renamed from: b, reason: collision with root package name */
        String f5615b;

        /* renamed from: c, reason: collision with root package name */
        long f5616c;
        boolean d;

        /* renamed from: e, reason: collision with root package name */
        long f5617e;
        String f;

        /* renamed from: g, reason: collision with root package name */
        String f5618g;

        public c(String str, String str2, long j10, boolean z7, long j11, String str3, String str4) {
            this.f5614a = str;
            this.f5615b = str2;
            this.f5616c = j10;
            this.d = z7;
            this.f5617e = j11;
            this.f = str3;
            this.f5618g = str4;
        }

        public c() {
        }
    }

    private static String a(String str, Iterable<b> iterable) {
        Iterator<b> it = iterable.iterator();
        if (!it.hasNext()) {
            return "";
        }
        StringBuilder sb = new StringBuilder("'");
        sb.append(it.next().f5611a);
        sb.append("'");
        while (it.hasNext()) {
            sb.append(str);
            sb.append("'");
            sb.append(it.next().f5611a);
            sb.append("'");
        }
        return sb.toString();
    }

    public static List<b> a() {
        Cursor cursorA = w.a().a("t_sla", new String[]{"_id", "_tm", "_dt"}, (String) null, "_tm", "30");
        if (cursorA == null) {
            return null;
        }
        if (cursorA.getCount() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        while (cursorA.moveToNext()) {
            try {
                b bVar = new b();
                bVar.f5611a = cursorA.getString(cursorA.getColumnIndex("_id"));
                bVar.f5612b = cursorA.getLong(cursorA.getColumnIndex("_tm"));
                bVar.f5613c = cursorA.getString(cursorA.getColumnIndex("_dt"));
                al.c(bVar.toString(), new Object[0]);
                arrayList.add(bVar);
            } finally {
                try {
                    return arrayList;
                } finally {
                }
            }
        }
        return arrayList;
    }

    public final void a(c cVar) {
        if (TextUtils.isEmpty(cVar.f5615b)) {
            al.d("sla report event is null", new Object[0]);
        } else {
            al.c("sla report single event", new Object[0]);
            a(Collections.singletonList(cVar));
        }
    }
}
