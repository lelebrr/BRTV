package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import androidx.lifecycle.u0;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r {

    /* renamed from: e, reason: collision with root package name */
    private static boolean f5945e = true;

    /* renamed from: a, reason: collision with root package name */
    private Context f5946a;

    /* renamed from: b, reason: collision with root package name */
    private long f5947b;

    /* renamed from: c, reason: collision with root package name */
    private int f5948c;
    private boolean d;

    public r(Context context, boolean z7) {
        this.f5946a = context;
        this.d = z7;
    }

    private static void b(List<UserInfoBean> list, List<UserInfoBean> list2) {
        Iterator<UserInfoBean> it = list.iterator();
        while (it.hasNext()) {
            UserInfoBean next = it.next();
            if (next.f != -1) {
                it.remove();
                if (next.f5481e < ap.b()) {
                    list2.add(next);
                }
            }
        }
    }

    public final void a(int i6, boolean z7) {
        ac acVarA = ac.a();
        if (acVarA != null && !acVarA.c().f5502g && i6 != 1 && i6 != 3) {
            al.e("UserInfo is disable", new Object[0]);
            return;
        }
        if (i6 == 1 || i6 == 3) {
            this.f5948c++;
        }
        aa aaVarA = aa.a(this.f5946a);
        UserInfoBean userInfoBean = new UserInfoBean();
        userInfoBean.f5479b = i6;
        userInfoBean.f5480c = aaVarA.d;
        userInfoBean.d = aaVarA.f();
        userInfoBean.f5481e = System.currentTimeMillis();
        userInfoBean.f = -1L;
        userInfoBean.f5489n = aaVarA.f5582o;
        userInfoBean.f5490o = i6 == 1 ? 1 : 0;
        userInfoBean.f5487l = aaVarA.a();
        userInfoBean.f5488m = aaVarA.f5592y;
        userInfoBean.f5482g = aaVarA.f5593z;
        userInfoBean.f5483h = aaVarA.A;
        userInfoBean.f5484i = aaVarA.B;
        userInfoBean.f5486k = aaVarA.C;
        userInfoBean.f5493r = aaVarA.t();
        userInfoBean.f5494s = aaVarA.y();
        userInfoBean.f5491p = aaVarA.z();
        userInfoBean.f5492q = aaVarA.f5591x;
        ak.a().a(new u0(this, userInfoBean, z7), 0L);
    }

    public final void b() {
        ak akVarA = ak.a();
        if (akVarA != null) {
            akVarA.a(new n0(this, 0));
        }
    }

    private static void b(List<UserInfoBean> list) {
        if (list.size() == 0) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        for (int i6 = 0; i6 < list.size() && i6 < 50; i6++) {
            UserInfoBean userInfoBean = list.get(i6);
            sb.append(" or _id = ");
            sb.append(userInfoBean.f5478a);
        }
        String string = sb.toString();
        if (string.length() > 0) {
            string = string.substring(4);
        }
        sb.setLength(0);
        try {
            al.c("[Database] deleted %s data %d", "t_ui", Integer.valueOf(w.a().a("t_ui", string)));
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static ContentValues b(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j10 = userInfoBean.f5478a;
            if (j10 > 0) {
                contentValues.put("_id", Long.valueOf(j10));
            }
            contentValues.put("_tm", Long.valueOf(userInfoBean.f5481e));
            contentValues.put("_ut", Long.valueOf(userInfoBean.f));
            contentValues.put("_tp", Integer.valueOf(userInfoBean.f5479b));
            contentValues.put("_pc", userInfoBean.f5480c);
            contentValues.put("_dt", ap.a(userInfoBean));
            return contentValues;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public final void a(long j10) {
        ak.a().a(new com.google.android.material.datepicker.i(this, j10, 1), j10);
    }

    public final void a() {
        this.f5947b = ap.b() + 86400000;
        ak.a().a(new n0(this, 1), (this.f5947b - System.currentTimeMillis()) + 5000);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0089 A[Catch: Exception -> 0x0078, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x0078, blocks: (B:37:0x0089, B:26:0x0074, B:14:0x0038, B:16:0x004c, B:19:0x0056, B:22:0x0061), top: B:39:0x0036, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean b(boolean r15) throws java.io.IOException {
        /*
            r14 = this;
            boolean r0 = com.tencent.bugly.proguard.r.f5945e
            r1 = 1
            if (r0 != 0) goto L6
            return r1
        L6:
            java.io.File r0 = new java.io.File
            android.content.Context r2 = r14.f5946a
            java.io.File r2 = r2.getFilesDir()
            java.lang.String r3 = "bugly_last_us_up_tm"
            r0.<init>(r2, r3)
            long r2 = java.lang.System.currentTimeMillis()
            r4 = 1024(0x400, double:5.06E-321)
            r6 = 0
            if (r15 == 0) goto L24
            java.lang.String r15 = java.lang.String.valueOf(r2)
            com.tencent.bugly.proguard.am.a(r0, r15, r4, r6)
            return r1
        L24:
            boolean r15 = r0.exists()
            if (r15 != 0) goto L32
            java.lang.String r15 = java.lang.String.valueOf(r2)
            com.tencent.bugly.proguard.am.a(r0, r15, r4, r6)
            goto L8c
        L32:
            java.io.BufferedReader r15 = com.tencent.bugly.proguard.ap.a(r0)
            if (r15 == 0) goto L87
            java.lang.String r7 = r15.readLine()     // Catch: java.lang.Throwable -> L69
            java.lang.String r7 = r7.trim()     // Catch: java.lang.Throwable -> L69
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L69
            long r7 = r7.longValue()     // Catch: java.lang.Throwable -> L69
            int r9 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
            if (r9 < 0) goto L61
            long r9 = r2 - r7
            r11 = 86400000(0x5265c00, double:4.2687272E-316)
            int r13 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r13 <= 0) goto L56
            goto L61
        L56:
            long r7 = r2 - r7
            r9 = 300000(0x493e0, double:1.482197E-318)
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 >= 0) goto L61
            r1 = 0
            goto L87
        L61:
            java.lang.String r7 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L69
            com.tencent.bugly.proguard.am.a(r0, r7, r4, r6)     // Catch: java.lang.Throwable -> L69
            goto L87
        L69:
            r7 = move-exception
            com.tencent.bugly.proguard.al.b(r7)     // Catch: java.lang.Throwable -> L7d
            java.lang.String r2 = java.lang.String.valueOf(r2)     // Catch: java.lang.Throwable -> L7d
            com.tencent.bugly.proguard.am.a(r0, r2, r4, r6)     // Catch: java.lang.Throwable -> L7d
            r15.close()     // Catch: java.lang.Exception -> L78
            goto L8c
        L78:
            r15 = move-exception
            com.tencent.bugly.proguard.al.a(r15)
            goto L8c
        L7d:
            r0 = move-exception
            r15.close()     // Catch: java.lang.Exception -> L82
            goto L86
        L82:
            r15 = move-exception
            com.tencent.bugly.proguard.al.a(r15)
        L86:
            throw r0
        L87:
            if (r15 == 0) goto L8c
            r15.close()     // Catch: java.lang.Exception -> L78
        L8c:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.r.b(boolean):boolean");
    }

    private static void a(List<UserInfoBean> list, List<UserInfoBean> list2) {
        int size = list.size() - 20;
        if (size > 0) {
            int i6 = 0;
            while (i6 < list.size() - 1) {
                int i10 = i6 + 1;
                for (int i11 = i10; i11 < list.size(); i11++) {
                    if (list.get(i6).f5481e > list.get(i11).f5481e) {
                        UserInfoBean userInfoBean = list.get(i6);
                        list.set(i6, list.get(i11));
                        list.set(i11, userInfoBean);
                    }
                }
                i6 = i10;
            }
            for (int i12 = 0; i12 < size; i12++) {
                list2.add(list.get(i12));
            }
        }
    }

    private static int a(List<UserInfoBean> list) {
        int i6;
        long jCurrentTimeMillis = System.currentTimeMillis();
        int i10 = 0;
        for (UserInfoBean userInfoBean : list) {
            if (userInfoBean.f5481e > jCurrentTimeMillis - 600000 && ((i6 = userInfoBean.f5479b) == 1 || i6 == 4 || i6 == 3)) {
                i10++;
            }
        }
        return i10;
    }

    private void a(List<UserInfoBean> list, boolean z7) {
        aa aaVarB;
        if (!b(z7)) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            for (UserInfoBean userInfoBean : list) {
                userInfoBean.f = jCurrentTimeMillis;
                a(userInfoBean, true);
            }
            al.d("uploadCheck failed", new Object[0]);
            return;
        }
        int i6 = this.f5948c == 1 ? 1 : 2;
        bv bvVar = null;
        if (list != null && list.size() != 0 && (aaVarB = aa.b()) != null) {
            aaVarB.o();
            bv bvVar2 = new bv();
            bvVar2.f5875b = aaVarB.d;
            bvVar2.f5876c = aaVarB.g();
            ArrayList<bu> arrayList = new ArrayList<>();
            Iterator<UserInfoBean> it = list.iterator();
            while (it.hasNext()) {
                bu buVarA = ae.a(it.next());
                if (buVarA != null) {
                    arrayList.add(buVarA);
                }
            }
            bvVar2.d = arrayList;
            HashMap map = new HashMap();
            bvVar2.f5877e = map;
            map.put("A7", "");
            bvVar2.f5877e.put("A6", aa.n());
            bvVar2.f5877e.put("A5", aaVarB.m());
            Map<String, String> map2 = bvVar2.f5877e;
            StringBuilder sb = new StringBuilder();
            sb.append(aaVarB.k());
            map2.put("A2", sb.toString());
            Map<String, String> map3 = bvVar2.f5877e;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aaVarB.k());
            map3.put("A1", sb2.toString());
            bvVar2.f5877e.put("A24", aaVarB.f5578k);
            Map<String, String> map4 = bvVar2.f5877e;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(aaVarB.l());
            map4.put("A17", sb3.toString());
            bvVar2.f5877e.put("A15", aaVarB.q());
            Map<String, String> map5 = bvVar2.f5877e;
            StringBuilder sb4 = new StringBuilder();
            sb4.append(aaVarB.r());
            map5.put("A13", sb4.toString());
            bvVar2.f5877e.put("F08", aaVarB.E);
            bvVar2.f5877e.put("F09", aaVarB.F);
            Map<String, String> mapY = aaVarB.y();
            if (mapY != null && mapY.size() > 0) {
                for (Map.Entry<String, String> entry : mapY.entrySet()) {
                    bvVar2.f5877e.put("C04_" + entry.getKey(), entry.getValue());
                }
            }
            if (i6 == 1) {
                bvVar2.f5874a = (byte) 1;
            } else if (i6 != 2) {
                al.e("unknown up type %d ", Integer.valueOf(i6));
            } else {
                bvVar2.f5874a = (byte) 2;
            }
            bvVar = bvVar2;
        }
        if (bvVar == null) {
            al.d("[UserInfo] Failed to create UserInfoPackage.", new Object[0]);
            return;
        }
        byte[] bArrA = ae.a((m) bvVar);
        if (bArrA == null) {
            al.d("[UserInfo] Failed to encode data.", new Object[0]);
            return;
        }
        bq bqVarA = ae.a(this.f5946a, 840, bArrA);
        if (bqVarA == null) {
            al.d("[UserInfo] Request package is null.", new Object[0]);
            return;
        }
        ai.a().a(1001, bqVarA, ac.a().c().f5512q, StrategyBean.f5498a, new a7.f(this, 14, list), this.f5948c == 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(UserInfoBean userInfoBean, boolean z7) {
        List<UserInfoBean> listA;
        if (userInfoBean == null) {
            return;
        }
        if (!z7 && userInfoBean.f5479b != 1 && (listA = a(aa.a(this.f5946a).d)) != null && listA.size() >= 20) {
            al.a("[UserInfo] There are too many user info in local: %d", Integer.valueOf(listA.size()));
            return;
        }
        long jA = w.a().a("t_ui", b(userInfoBean), (v) null);
        if (jA >= 0) {
            al.c("[Database] insert %s success with ID: %d", "t_ui", Long.valueOf(jA));
            userInfoBean.f5478a = jA;
        }
    }

    public static List<UserInfoBean> a(String str) {
        Cursor cursorA;
        String str2;
        try {
            if (ap.b(str)) {
                str2 = null;
            } else {
                str2 = "_pc = '" + str + "'";
            }
            cursorA = w.a().a("t_ui", (String[]) null, str2);
            if (cursorA == null) {
                return null;
            }
            try {
                StringBuilder sb = new StringBuilder();
                ArrayList arrayList = new ArrayList();
                while (cursorA.moveToNext()) {
                    UserInfoBean userInfoBeanA = a(cursorA);
                    if (userInfoBeanA != null) {
                        arrayList.add(userInfoBeanA);
                    } else {
                        try {
                            long j10 = cursorA.getLong(cursorA.getColumnIndex("_id"));
                            sb.append(" or _id = ");
                            sb.append(j10);
                        } catch (Throwable unused) {
                            al.d("[Database] unknown id.", new Object[0]);
                        }
                    }
                }
                String string = sb.toString();
                if (string.length() > 0) {
                    al.d("[Database] deleted %s error data %d", "t_ui", Integer.valueOf(w.a().a("t_ui", string.substring(4))));
                }
                cursorA.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                try {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    return null;
                } finally {
                    if (cursorA != null) {
                        cursorA.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
            cursorA = null;
        }
    }

    private static UserInfoBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j10 = cursor.getLong(cursor.getColumnIndex("_id"));
            UserInfoBean userInfoBean = (UserInfoBean) ap.a(blob, UserInfoBean.CREATOR);
            if (userInfoBean != null) {
                userInfoBean.f5478a = j10;
            }
            return userInfoBean;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0064 A[Catch: all -> 0x0026, TryCatch #0 {, blocks: (B:4:0x0003, B:7:0x0008, B:10:0x000f, B:13:0x0016, B:15:0x001c, B:21:0x0028, B:23:0x003b, B:25:0x0049, B:28:0x005e, B:30:0x0064, B:32:0x0069, B:35:0x0070, B:38:0x0086, B:26:0x0058), top: B:43:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void a(boolean r8) {
        /*
            r7 = this;
            r0 = 1
            r1 = 0
            monitor-enter(r7)
            boolean r2 = r7.d     // Catch: java.lang.Throwable -> L26
            if (r2 != 0) goto L8
            goto L24
        L8:
            com.tencent.bugly.proguard.ai r2 = com.tencent.bugly.proguard.ai.a()     // Catch: java.lang.Throwable -> L26
            if (r2 != 0) goto Lf
            goto L24
        Lf:
            com.tencent.bugly.proguard.ac r3 = com.tencent.bugly.proguard.ac.a()     // Catch: java.lang.Throwable -> L26
            if (r3 != 0) goto L16
            goto L24
        L16:
            boolean r3 = r3.b()     // Catch: java.lang.Throwable -> L26
            if (r3 == 0) goto L28
            r3 = 1001(0x3e9, float:1.403E-42)
            boolean r2 = r2.b(r3)     // Catch: java.lang.Throwable -> L26
            if (r2 != 0) goto L28
        L24:
            monitor-exit(r7)
            return
        L26:
            r8 = move-exception
            goto L8f
        L28:
            android.content.Context r2 = r7.f5946a     // Catch: java.lang.Throwable -> L26
            com.tencent.bugly.proguard.aa r2 = com.tencent.bugly.proguard.aa.a(r2)     // Catch: java.lang.Throwable -> L26
            java.lang.String r2 = r2.d     // Catch: java.lang.Throwable -> L26
            java.util.ArrayList r3 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L26
            r3.<init>()     // Catch: java.lang.Throwable -> L26
            java.util.List r2 = a(r2)     // Catch: java.lang.Throwable -> L26
            if (r2 == 0) goto L58
            a(r2, r3)     // Catch: java.lang.Throwable -> L26
            b(r2, r3)     // Catch: java.lang.Throwable -> L26
            int r4 = a(r2)     // Catch: java.lang.Throwable -> L26
            r5 = 15
            if (r4 <= r5) goto L5d
            java.lang.String r5 = "[UserInfo] Upload user info too many times in 10 min: %d"
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L26
            java.lang.Object[] r6 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L26
            r6[r1] = r4     // Catch: java.lang.Throwable -> L26
            com.tencent.bugly.proguard.al.d(r5, r6)     // Catch: java.lang.Throwable -> L26
            r4 = 0
            goto L5e
        L58:
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L26
            r2.<init>()     // Catch: java.lang.Throwable -> L26
        L5d:
            r4 = 1
        L5e:
            int r5 = r3.size()     // Catch: java.lang.Throwable -> L26
            if (r5 <= 0) goto L67
            b(r3)     // Catch: java.lang.Throwable -> L26
        L67:
            if (r4 == 0) goto L86
            int r3 = r2.size()     // Catch: java.lang.Throwable -> L26
            if (r3 != 0) goto L70
            goto L86
        L70:
            java.lang.String r3 = "[UserInfo] Upload user info(size: %d)"
            int r4 = r2.size()     // Catch: java.lang.Throwable -> L26
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L26
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L26
            r0[r1] = r4     // Catch: java.lang.Throwable -> L26
            com.tencent.bugly.proguard.al.c(r3, r0)     // Catch: java.lang.Throwable -> L26
            r7.a(r2, r8)     // Catch: java.lang.Throwable -> L26
            monitor-exit(r7)
            return
        L86:
            java.lang.String r8 = "[UserInfo] There is no user info in local database."
            java.lang.Object[] r0 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L26
            com.tencent.bugly.proguard.al.c(r8, r0)     // Catch: java.lang.Throwable -> L26
            monitor-exit(r7)
            return
        L8f:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L26
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.r.a(boolean):void");
    }

    public static /* synthetic */ void a(UserInfoBean userInfoBean) {
        aa aaVarB;
        if (userInfoBean == null || (aaVarB = aa.b()) == null) {
            return;
        }
        userInfoBean.f5485j = aaVarB.d();
    }
}
