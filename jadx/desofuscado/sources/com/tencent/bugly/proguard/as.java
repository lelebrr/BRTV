package com.tencent.bugly.proguard;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Environment;
import android.text.TextUtils;
import android.util.Pair;
import androidx.media3.common.C;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.ag;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class as {

    /* renamed from: a, reason: collision with root package name */
    public static int f5681a;

    /* renamed from: h, reason: collision with root package name */
    private static final Map<Integer, Pair<String, String>> f5682h;

    /* renamed from: i, reason: collision with root package name */
    private static final ArrayList<h0> f5683i;

    /* renamed from: j, reason: collision with root package name */
    private static final Map<Integer, Integer> f5684j;

    /* renamed from: k, reason: collision with root package name */
    private static final Map<Integer, String> f5685k;

    /* renamed from: l, reason: collision with root package name */
    private static final Map<Integer, String> f5686l;

    /* renamed from: b, reason: collision with root package name */
    protected final Context f5687b;

    /* renamed from: c, reason: collision with root package name */
    protected final ai f5688c;
    protected final w d;

    /* renamed from: e, reason: collision with root package name */
    protected final ac f5689e;
    protected aw f;

    /* renamed from: g, reason: collision with root package name */
    protected BuglyStrategy.a f5690g;

    static {
        a0 a0Var = new a0();
        a0Var.put(3, new Pair("203", "103"));
        a0Var.put(7, new Pair("208", "108"));
        a0Var.put(0, new Pair("200", "100"));
        a0Var.put(1, new Pair("201", "101"));
        a0Var.put(2, new Pair("202", "102"));
        a0Var.put(4, new Pair("204", "104"));
        a0Var.put(6, new Pair("206", "106"));
        a0Var.put(5, new Pair("207", "107"));
        f5682h = a0Var;
        c cVar = new c();
        cVar.add(new h0(3, 0));
        cVar.add(new h0(7, 1));
        cVar.add(new h0(2, 2));
        cVar.add(new h0(0, 3));
        cVar.add(new h0(1, 6));
        cVar.add(new h0(4, 7));
        cVar.add(new h0(5, 4));
        cVar.add(new h0(6, 5));
        f5683i = cVar;
        f0 f0Var = new f0();
        f0Var.put(3, 4);
        f0Var.put(7, 7);
        f0Var.put(2, 1);
        f0Var.put(0, 0);
        f0Var.put(1, 2);
        f0Var.put(4, 3);
        f0Var.put(5, 5);
        f0Var.put(6, 6);
        f5684j = f0Var;
        a0 a0Var2 = new a0();
        a0Var2.put(3, "BuglyAnrCrash");
        a0Var2.put(0, "BuglyJavaCrash");
        a0Var2.put(1, "BuglyNativeCrash");
        f5685k = a0Var2;
        a0 a0Var3 = new a0();
        a0Var3.put(3, "BuglyAnrCrashReport");
        a0Var3.put(0, "BuglyJavaCrashReport");
        a0Var3.put(1, "BuglyNativeCrashReport");
        f5686l = a0Var3;
    }

    public as(Context context, ai aiVar, w wVar, ac acVar, BuglyStrategy.a aVar) {
        f5681a = 1004;
        this.f5687b = context;
        this.f5688c = aiVar;
        this.d = wVar;
        this.f5689e = acVar;
        this.f5690g = aVar;
        this.f = null;
    }

    private static List<ar> a(List<ar> list) {
        if (list == null || list.size() == 0) {
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ArrayList arrayList = new ArrayList();
        for (ar arVar : list) {
            if (arVar.d && arVar.f5678b <= jCurrentTimeMillis - 86400000) {
                arrayList.add(arVar);
            }
        }
        return arrayList;
    }

    private static void b(CrashDetailBean crashDetailBean, List<ar> list) {
        StringBuilder sb = new StringBuilder(64);
        for (ar arVar : list) {
            if (!arVar.f5680e && !arVar.d) {
                String str = crashDetailBean.f5536s;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(arVar.f5678b);
                if (!str.contains(sb2.toString())) {
                    crashDetailBean.f5537t++;
                    sb.append(arVar.f5678b);
                    sb.append("\n");
                }
            }
        }
        crashDetailBean.f5536s += sb.toString();
    }

    private static ContentValues c(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return null;
        }
        try {
            ContentValues contentValues = new ContentValues();
            long j10 = crashDetailBean.f5519a;
            if (j10 > 0) {
                contentValues.put("_id", Long.valueOf(j10));
            }
            contentValues.put("_tm", Long.valueOf(crashDetailBean.f5535r));
            contentValues.put("_s1", crashDetailBean.f5538u);
            contentValues.put("_up", Integer.valueOf(crashDetailBean.d ? 1 : 0));
            contentValues.put("_me", Integer.valueOf(crashDetailBean.f5527j ? 1 : 0));
            contentValues.put("_uc", Integer.valueOf(crashDetailBean.f5529l));
            contentValues.put("_dt", ap.a(crashDetailBean));
            return contentValues;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static void d(List<ar> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        StringBuilder sbM = ea.q.m("_id in (");
        Iterator<ar> it = list.iterator();
        while (it.hasNext()) {
            sbM.append(it.next().f5677a);
            sbM.append(",");
        }
        StringBuilder sb = new StringBuilder(sbM.substring(0, sbM.lastIndexOf(",")));
        sb.append(")");
        String string = sb.toString();
        sb.setLength(0);
        try {
            al.c("deleted %s data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", string)));
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static void e(List<CrashDetailBean> list) {
        try {
            if (list.size() == 0) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            for (CrashDetailBean crashDetailBean : list) {
                sb.append(" or _id = ");
                sb.append(crashDetailBean.f5519a);
            }
            String string = sb.toString();
            if (string.length() > 0) {
                string = string.substring(4);
            }
            sb.setLength(0);
            al.c("deleted %s data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", string)));
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private static void b(List<ar> list) {
        List<CrashDetailBean> listC = c(list);
        if (listC == null || listC.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (CrashDetailBean crashDetailBean : listC) {
            String str = f5686l.get(Integer.valueOf(crashDetailBean.f5521b));
            if (!TextUtils.isEmpty(str)) {
                al.c("find expired data,crashId:%s eventType:%s", crashDetailBean.f5522c, str);
                arrayList.add(new ag.c(crashDetailBean.f5522c, str, crashDetailBean.f5535r, false, 0L, "expired", null));
            }
        }
        ag.a.f5610a.a(arrayList);
    }

    private static CrashDetailBean a(List<ar> list, CrashDetailBean crashDetailBean) {
        CrashDetailBean crashDetailBean2;
        List<CrashDetailBean> listC;
        if (list.isEmpty()) {
            return crashDetailBean;
        }
        ArrayList arrayList = new ArrayList(10);
        for (ar arVar : list) {
            if (arVar.f5680e) {
                arrayList.add(arVar);
            }
        }
        if (arrayList.isEmpty() || (listC = c(arrayList)) == null || listC.isEmpty()) {
            crashDetailBean2 = null;
        } else {
            Collections.sort(listC);
            crashDetailBean2 = listC.get(0);
            a(crashDetailBean2, listC);
        }
        if (crashDetailBean2 == null) {
            crashDetailBean.f5527j = true;
            crashDetailBean.f5537t = 0;
            crashDetailBean.f5536s = "";
            crashDetailBean2 = crashDetailBean;
        }
        b(crashDetailBean2, list);
        if (crashDetailBean2.f5535r != crashDetailBean.f5535r) {
            String str = crashDetailBean2.f5536s;
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.f5535r);
            if (!str.contains(sb.toString())) {
                crashDetailBean2.f5537t++;
                StringBuilder sb2 = new StringBuilder();
                sb2.append(crashDetailBean2.f5536s);
                crashDetailBean2.f5536s = a.e.s(sb2, crashDetailBean.f5535r, "\n");
            }
        }
        return crashDetailBean2;
    }

    private static List<CrashDetailBean> c(List<ar> list) {
        Cursor cursorA;
        if (list == null || list.size() == 0) {
            return null;
        }
        StringBuilder sbM = ea.q.m("_id in (");
        Iterator<ar> it = list.iterator();
        while (it.hasNext()) {
            sbM.append(it.next().f5677a);
            sbM.append(",");
        }
        if (sbM.toString().contains(",")) {
            sbM = new StringBuilder(sbM.substring(0, sbM.lastIndexOf(",")));
        }
        sbM.append(")");
        String string = sbM.toString();
        sbM.setLength(0);
        try {
            cursorA = w.a().a("t_cr", (String[]) null, string);
            if (cursorA == null) {
                return null;
            }
            try {
                ArrayList arrayList = new ArrayList();
                sbM.append("_id in (");
                int i6 = 0;
                while (cursorA.moveToNext()) {
                    CrashDetailBean crashDetailBeanA = a(cursorA);
                    if (crashDetailBeanA != null) {
                        arrayList.add(crashDetailBeanA);
                    } else {
                        try {
                            sbM.append(cursorA.getLong(cursorA.getColumnIndex("_id")));
                            sbM.append(",");
                            i6++;
                        } catch (Throwable unused) {
                            al.d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (sbM.toString().contains(",")) {
                    sbM = new StringBuilder(sbM.substring(0, sbM.lastIndexOf(",")));
                }
                sbM.append(")");
                String string2 = sbM.toString();
                if (i6 > 0) {
                    al.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", string2)));
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

    private static String e(CrashDetailBean crashDetailBean) {
        try {
            Pair<String, String> pair = f5682h.get(Integer.valueOf(crashDetailBean.f5521b));
            if (pair == null) {
                al.e("crash type error! %d", Integer.valueOf(crashDetailBean.f5521b));
                return "";
            }
            if (crashDetailBean.f5527j) {
                return (String) pair.first;
            }
            return (String) pair.second;
        } catch (Exception e5) {
            al.a(e5);
            return "";
        }
    }

    private boolean d(CrashDetailBean crashDetailBean) {
        String absolutePath;
        try {
            al.c("save eup logs", new Object[0]);
            aa aaVarB = aa.b();
            String str = "#--------\npackage:" + aaVarB.e() + "\nversion:" + aaVarB.f5582o + "\nsdk:" + aaVarB.f5575h + "\nprocess:" + crashDetailBean.A + "\ndate:" + ap.a(new Date(crashDetailBean.f5535r)) + "\ntype:" + crashDetailBean.f5531n + "\nmessage:" + crashDetailBean.f5532o + "\nstack:\n" + crashDetailBean.f5534q + "\neupID:" + crashDetailBean.f5522c + "\n";
            if (at.f5700m == null) {
                if (Environment.getExternalStorageState().equals("mounted")) {
                    absolutePath = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Tencent/" + this.f5687b.getPackageName();
                } else {
                    absolutePath = null;
                }
            } else {
                File file = new File(at.f5700m);
                if (file.isFile()) {
                    file = file.getParentFile();
                }
                absolutePath = file.getAbsolutePath();
            }
            am.a(absolutePath + "/euplog.txt", str, at.f5701n);
            return true;
        } catch (Throwable th) {
            al.d("rqdp{  save error} %s", th.toString());
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }

    public final void b(CrashDetailBean crashDetailBean, boolean z7) {
        if (at.f5702o) {
            al.a("try to upload right now", new Object[0]);
            ArrayList arrayList = new ArrayList();
            arrayList.add(crashDetailBean);
            a(arrayList, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, z7, crashDetailBean.f5521b == 7, z7);
            return;
        }
        al.a("do not upload spot crash right now, crash would be uploaded when app next start", new Object[0]);
    }

    public final void b(CrashDetailBean crashDetailBean) {
        if (crashDetailBean == null) {
            return;
        }
        ContentValues contentValuesC = c(crashDetailBean);
        if (contentValuesC != null) {
            long jA = w.a().a("t_cr", contentValuesC, (v) null);
            if (jA >= 0) {
                al.c("insert %s success!", "t_cr");
                crashDetailBean.f5519a = jA;
            }
        }
        if (at.f5699l) {
            d(crashDetailBean);
        }
    }

    private static ar b(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            ar arVar = new ar();
            arVar.f5677a = cursor.getLong(cursor.getColumnIndex("_id"));
            arVar.f5678b = cursor.getLong(cursor.getColumnIndex("_tm"));
            arVar.f5679c = cursor.getString(cursor.getColumnIndex("_s1"));
            arVar.d = cursor.getInt(cursor.getColumnIndex("_up")) == 1;
            arVar.f5680e = cursor.getInt(cursor.getColumnIndex("_me")) == 1;
            arVar.f = cursor.getInt(cursor.getColumnIndex("_uc"));
            return arVar;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static void a(CrashDetailBean crashDetailBean, List<CrashDetailBean> list) {
        String[] strArrSplit;
        StringBuilder sb = new StringBuilder(128);
        for (int i6 = 1; i6 < list.size(); i6++) {
            String str = list.get(i6).f5536s;
            if (str != null && (strArrSplit = str.split("\n")) != null) {
                for (String str2 : strArrSplit) {
                    if (!crashDetailBean.f5536s.contains(str2)) {
                        crashDetailBean.f5537t++;
                        sb.append(str2);
                        sb.append("\n");
                    }
                }
            }
        }
        crashDetailBean.f5536s += sb.toString();
    }

    private static List<ar> b() {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor cursorA = w.a().a("t_cr", new String[]{"_id", "_tm", "_s1", "_up", "_me", "_uc"}, (String) null);
            if (cursorA == null) {
                if (cursorA != null) {
                    cursorA.close();
                }
                return null;
            }
            try {
                if (cursorA.getCount() <= 0) {
                    cursorA.close();
                    return arrayList;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("_id in (");
                int i6 = 0;
                while (cursorA.moveToNext()) {
                    ar arVarB = b(cursorA);
                    if (arVarB != null) {
                        arrayList.add(arVarB);
                    } else {
                        try {
                            sb.append(cursorA.getLong(cursorA.getColumnIndex("_id")));
                            sb.append(",");
                            i6++;
                        } catch (Throwable unused) {
                            al.d("unknown id!", new Object[0]);
                        }
                    }
                }
                if (sb.toString().contains(",")) {
                    sb = new StringBuilder(sb.substring(0, sb.lastIndexOf(",")));
                }
                sb.append(")");
                String string = sb.toString();
                sb.setLength(0);
                if (i6 > 0) {
                    al.d("deleted %s illegal data %d", "t_cr", Integer.valueOf(w.a().a("t_cr", string)));
                }
                cursorA.close();
                return arrayList;
            } catch (Throwable th) {
                th = th;
                cursor = cursorA;
                try {
                    if (!al.a(th)) {
                        th.printStackTrace();
                    }
                    return arrayList;
                } finally {
                    if (cursor != null) {
                        cursor.close();
                    }
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0109 A[Catch: all -> 0x00a9, TryCatch #1 {all -> 0x00a9, blocks: (B:34:0x0084, B:36:0x0092, B:39:0x00ac, B:41:0x00c1, B:43:0x00d7, B:48:0x00fb, B:50:0x0109, B:55:0x0130, B:61:0x0169, B:63:0x016d, B:65:0x017c, B:56:0x0138, B:58:0x013e, B:60:0x015b, B:59:0x0141, B:51:0x0117, B:53:0x011b, B:44:0x00e2, B:46:0x00e6), top: B:113:0x0084 }] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0117 A[Catch: all -> 0x00a9, TryCatch #1 {all -> 0x00a9, blocks: (B:34:0x0084, B:36:0x0092, B:39:0x00ac, B:41:0x00c1, B:43:0x00d7, B:48:0x00fb, B:50:0x0109, B:55:0x0130, B:61:0x0169, B:63:0x016d, B:65:0x017c, B:56:0x0138, B:58:0x013e, B:60:0x015b, B:59:0x0141, B:51:0x0117, B:53:0x011b, B:44:0x00e2, B:46:0x00e6), top: B:113:0x0084 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0130 A[Catch: all -> 0x00a9, TryCatch #1 {all -> 0x00a9, blocks: (B:34:0x0084, B:36:0x0092, B:39:0x00ac, B:41:0x00c1, B:43:0x00d7, B:48:0x00fb, B:50:0x0109, B:55:0x0130, B:61:0x0169, B:63:0x016d, B:65:0x017c, B:56:0x0138, B:58:0x013e, B:60:0x015b, B:59:0x0141, B:51:0x0117, B:53:0x011b, B:44:0x00e2, B:46:0x00e6), top: B:113:0x0084 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0138 A[Catch: all -> 0x00a9, TryCatch #1 {all -> 0x00a9, blocks: (B:34:0x0084, B:36:0x0092, B:39:0x00ac, B:41:0x00c1, B:43:0x00d7, B:48:0x00fb, B:50:0x0109, B:55:0x0130, B:61:0x0169, B:63:0x016d, B:65:0x017c, B:56:0x0138, B:58:0x013e, B:60:0x015b, B:59:0x0141, B:51:0x0117, B:53:0x011b, B:44:0x00e2, B:46:0x00e6), top: B:113:0x0084 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x016d A[Catch: all -> 0x00a9, TryCatch #1 {all -> 0x00a9, blocks: (B:34:0x0084, B:36:0x0092, B:39:0x00ac, B:41:0x00c1, B:43:0x00d7, B:48:0x00fb, B:50:0x0109, B:55:0x0130, B:61:0x0169, B:63:0x016d, B:65:0x017c, B:56:0x0138, B:58:0x013e, B:60:0x015b, B:59:0x0141, B:51:0x0117, B:53:0x011b, B:44:0x00e2, B:46:0x00e6), top: B:113:0x0084 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean a(com.tencent.bugly.crashreport.crash.CrashDetailBean r20, boolean r21) {
        /*
            Method dump skipped, instructions count: 706
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.as.a(com.tencent.bugly.crashreport.crash.CrashDetailBean, boolean):boolean");
    }

    private static void c(ArrayList<bn> arrayList, String str) {
        if (ap.b(str)) {
            return;
        }
        try {
            bn bnVar = new bn((byte) 1, "crashInfos.txt", str.getBytes("utf-8"));
            al.c("attach crash infos", new Object[0]);
            arrayList.add(bnVar);
        } catch (Exception e5) {
            e5.printStackTrace();
            al.a(e5);
        }
    }

    private static void b(ArrayList<bn> arrayList, String str) {
        if (str != null) {
            try {
                arrayList.add(new bn((byte) 1, "jniLog.txt", str.getBytes("utf-8")));
            } catch (Exception e5) {
                e5.printStackTrace();
                al.a(e5);
            }
        }
    }

    private static void b(ArrayList<bn> arrayList, CrashDetailBean crashDetailBean, Context context) {
        String str;
        if (crashDetailBean.f5521b == 1 && (str = crashDetailBean.f5539v) != null) {
            try {
                bn bnVarA = a("tomb.zip", context, str);
                if (bnVarA != null) {
                    al.c("attach tombs", new Object[0]);
                    arrayList.add(bnVarA);
                }
            } catch (Exception e5) {
                al.a(e5);
            }
        }
    }

    private static void b(ArrayList<bn> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            arrayList.add(new bn((byte) 1, "userExtraByteData", bArr));
            al.c("attach extraData", new Object[0]);
        } catch (Exception e5) {
            al.a(e5);
        }
    }

    private boolean b(CrashDetailBean crashDetailBean, List<ar> list, List<ar> list2) {
        boolean z7;
        int i6 = crashDetailBean.f5521b;
        boolean z10 = i6 == 0 || i6 == 1;
        boolean z11 = i6 == 3;
        if (p.f5936c) {
            z7 = false;
        } else {
            z7 = (z11 || z10) ? at.f5693e : true;
        }
        if (!z7) {
            return false;
        }
        ArrayList arrayList = new ArrayList(10);
        if (!a(crashDetailBean, list, arrayList)) {
            try {
                if (arrayList.size() >= at.d) {
                }
            } catch (Exception e5) {
                al.a(e5);
                al.d("Failed to merge crash.", new Object[0]);
            }
            return false;
        }
        al.a("same crash occur too much do merged!", new Object[0]);
        CrashDetailBean crashDetailBeanA = a((List<ar>) arrayList, crashDetailBean);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ar arVar = (ar) it.next();
            if (arVar.f5677a != crashDetailBeanA.f5519a) {
                list2.add(arVar);
            }
        }
        b(crashDetailBeanA);
        d(list2);
        al.b("[crash] save crash success. For this device crash many times, it will not upload crashes immediately", new Object[0]);
        return true;
    }

    private static boolean a(String str) {
        String str2 = at.f5705r;
        if (str2 != null && !str2.isEmpty()) {
            try {
                al.c("Crash regular filter for crash stack is: %s", at.f5705r);
                if (Pattern.compile(at.f5705r).matcher(str).find()) {
                    al.d("This crash matches the regular filter string set. It will not be record and upload.", new Object[0]);
                    return true;
                }
            } catch (Exception e5) {
                al.a(e5);
                al.d("Failed to compile " + at.f5705r, new Object[0]);
            }
        }
        return false;
    }

    private static boolean a(CrashDetailBean crashDetailBean, List<ar> list, List<ar> list2) {
        boolean z7 = false;
        for (ar arVar : list) {
            if (crashDetailBean.f5538u.equals(arVar.f5679c)) {
                if (arVar.f5680e) {
                    z7 = true;
                }
                list2.add(arVar);
            }
        }
        return z7;
    }

    public static List<CrashDetailBean> a() {
        StrategyBean strategyBeanC = ac.a().c();
        if (strategyBeanC == null) {
            al.d("have not synced remote!", new Object[0]);
            return null;
        }
        if (!strategyBeanC.f) {
            al.d("Crashreport remote closed, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            al.b("[init] WARNING! Crashreport closed by server, please check your APP ID correct and Version available, then uninstall and reinstall your app.", new Object[0]);
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jB = ap.b();
        List<ar> listB = b();
        al.c("Size of crash list loaded from DB: %s", Integer.valueOf(listB.size()));
        if (listB.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.addAll(a(listB));
        listB.removeAll(arrayList);
        Iterator<ar> it = listB.iterator();
        while (it.hasNext()) {
            ar next = it.next();
            long j10 = next.f5678b;
            if (j10 < jB - at.f5697j) {
                arrayList2.add(next);
                it.remove();
                arrayList.add(next);
            } else if (next.d) {
                if (j10 >= jCurrentTimeMillis - 86400000) {
                    it.remove();
                } else if (!next.f5680e) {
                    it.remove();
                    arrayList.add(next);
                }
            } else if (next.f >= 3 && j10 < jCurrentTimeMillis - 86400000) {
                it.remove();
                arrayList.add(next);
            }
        }
        b(arrayList2);
        if (arrayList.size() > 0) {
            d(arrayList);
        }
        ArrayList arrayList3 = new ArrayList();
        List<CrashDetailBean> listC = c(listB);
        if (listC != null && listC.size() > 0) {
            String str = aa.b().f5582o;
            Iterator<CrashDetailBean> it2 = listC.iterator();
            while (it2.hasNext()) {
                CrashDetailBean next2 = it2.next();
                if (!str.equals(next2.f)) {
                    it2.remove();
                    arrayList3.add(next2);
                }
            }
        }
        if (arrayList3.size() > 0) {
            e(arrayList3);
        }
        return listC;
    }

    public final void a(CrashDetailBean crashDetailBean) {
        int i6 = crashDetailBean.f5521b;
        if (i6 != 0) {
            if (i6 != 1) {
                if (i6 == 3 && !at.a().k()) {
                    return;
                }
            } else if (!at.a().j()) {
                return;
            }
        } else if (!at.a().j()) {
            return;
        }
        if (this.f != null) {
            al.c("Calling 'onCrashHandleEnd' of RQD crash listener.", new Object[0]);
        }
    }

    public final void a(List<CrashDetailBean> list, long j10, boolean z7, boolean z10, boolean z11) {
        if (!aa.a(this.f5687b).f) {
            al.d("warn: not upload process", new Object[0]);
            return;
        }
        ai aiVar = this.f5688c;
        if (aiVar == null) {
            al.d("warn: upload manager is null", new Object[0]);
            return;
        }
        if (!z11 && !aiVar.b(at.f5691a)) {
            al.d("warn: not crashHappen or not should upload", new Object[0]);
            return;
        }
        StrategyBean strategyBeanC = this.f5689e.c();
        if (!strategyBeanC.f) {
            al.d("remote report is disable!", new Object[0]);
            al.b("[crash] server closed bugly in this app. please check your appid if is correct, and re-install it", new Object[0]);
            return;
        }
        if (list != null && list.size() != 0) {
            try {
                String str = strategyBeanC.f5513r;
                String str2 = StrategyBean.f5499b;
                bp bpVarA = a(this.f5687b, list, aa.b());
                if (bpVarA == null) {
                    al.d("create eupPkg fail!", new Object[0]);
                    return;
                }
                byte[] bArrA = ae.a((m) bpVarA);
                if (bArrA == null) {
                    al.d("send encode fail!", new Object[0]);
                    return;
                }
                bq bqVarA = ae.a(this.f5687b, 830, bArrA);
                if (bqVarA == null) {
                    al.d("request package is null.", new Object[0]);
                    return;
                }
                g0 g0Var = new g0(System.currentTimeMillis(), list, z7);
                if (z7) {
                    this.f5688c.a(f5681a, bqVarA, str, str2, g0Var, j10, z10);
                    return;
                } else {
                    this.f5688c.a(f5681a, bqVarA, str, str2, g0Var, false);
                    return;
                }
            } catch (Throwable th) {
                al.e("req cr error %s", th.toString());
                if (al.b(th)) {
                    return;
                }
                th.printStackTrace();
                return;
            }
        }
        al.d("warn: crashList is null or crashList num is 0", new Object[0]);
    }

    public static void a(boolean z7, List<CrashDetailBean> list) {
        if (list != null && list.size() > 0) {
            al.c("up finish update state %b", Boolean.valueOf(z7));
            for (CrashDetailBean crashDetailBean : list) {
                al.c("pre uid:%s uc:%d re:%b me:%b", crashDetailBean.f5522c, Integer.valueOf(crashDetailBean.f5529l), Boolean.valueOf(crashDetailBean.d), Boolean.valueOf(crashDetailBean.f5527j));
                int i6 = crashDetailBean.f5529l + 1;
                crashDetailBean.f5529l = i6;
                crashDetailBean.d = z7;
                al.c("set uid:%s uc:%d re:%b me:%b", crashDetailBean.f5522c, Integer.valueOf(i6), Boolean.valueOf(crashDetailBean.d), Boolean.valueOf(crashDetailBean.f5527j));
            }
            Iterator<CrashDetailBean> it = list.iterator();
            while (it.hasNext()) {
                at.a().a(it.next());
            }
            al.c("update state size %d", Integer.valueOf(list.size()));
        }
        if (z7) {
            return;
        }
        al.b("[crash] upload fail.", new Object[0]);
    }

    private static CrashDetailBean a(Cursor cursor) {
        if (cursor == null) {
            return null;
        }
        try {
            byte[] blob = cursor.getBlob(cursor.getColumnIndex("_dt"));
            if (blob == null) {
                return null;
            }
            long j10 = cursor.getLong(cursor.getColumnIndex("_id"));
            CrashDetailBean crashDetailBean = (CrashDetailBean) ap.a(blob, CrashDetailBean.CREATOR);
            if (crashDetailBean != null) {
                crashDetailBean.f5519a = j10;
            }
            return crashDetailBean;
        } catch (Throwable th) {
            if (!al.a(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    private static bo a(Context context, CrashDetailBean crashDetailBean, aa aaVar) {
        ArrayList<bl> arrayList = null;
        if (context != null && crashDetailBean != null && aaVar != null) {
            bo boVar = new bo();
            boVar.f5798a = e(crashDetailBean);
            boVar.f5799b = crashDetailBean.f5535r;
            boVar.f5800c = crashDetailBean.f5531n;
            boVar.d = crashDetailBean.f5532o;
            boVar.f5801e = crashDetailBean.f5533p;
            boVar.f5802g = crashDetailBean.f5534q;
            boVar.f5803h = crashDetailBean.f5543z;
            boVar.f5804i = crashDetailBean.f5522c;
            boVar.f5805j = null;
            boVar.f5807l = crashDetailBean.f5530m;
            boVar.f5808m = crashDetailBean.f5523e;
            boVar.f = crashDetailBean.B;
            boVar.f5809n = null;
            Map<String, PlugInBean> map = crashDetailBean.f5525h;
            if (map != null && !map.isEmpty()) {
                arrayList = new ArrayList<>(crashDetailBean.f5525h.size());
                for (Map.Entry<String, PlugInBean> entry : crashDetailBean.f5525h.entrySet()) {
                    bl blVar = new bl();
                    blVar.f5783a = entry.getValue().f5495a;
                    blVar.f5785c = entry.getValue().f5497c;
                    blVar.f5786e = entry.getValue().f5496b;
                    arrayList.add(blVar);
                }
            }
            boVar.f5811p = arrayList;
            al.c("libInfo %s", boVar.f5810o);
            ArrayList<bn> arrayList2 = new ArrayList<>(20);
            a(arrayList2, crashDetailBean);
            a(arrayList2, crashDetailBean.f5540w);
            b(arrayList2, crashDetailBean.f5541x);
            c(arrayList2, crashDetailBean.Z);
            a(arrayList2, crashDetailBean.f5520aa, context);
            a(arrayList2, crashDetailBean.f5542y);
            a(arrayList2, crashDetailBean, context);
            b(arrayList2, crashDetailBean, context);
            a(arrayList2, aaVar.L);
            b(arrayList2, crashDetailBean.Y);
            boVar.f5812q = arrayList2;
            if (crashDetailBean.f5527j) {
                boVar.f5806k = crashDetailBean.f5537t;
            }
            boVar.f5813r = a(crashDetailBean, aaVar);
            boVar.f5814s = new HashMap();
            Map<String, String> map2 = crashDetailBean.S;
            if (map2 != null && map2.size() > 0) {
                boVar.f5814s.putAll(crashDetailBean.S);
                al.a("setted message size %d", Integer.valueOf(boVar.f5814s.size()));
            }
            Map<String, String> map3 = boVar.f5814s;
            al.c("pss:" + crashDetailBean.I + " vss:" + crashDetailBean.J + " javaHeap:" + crashDetailBean.K, new Object[0]);
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.I);
            map3.put("SDK_UPLOAD_U1", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.J);
            map3.put("SDK_UPLOAD_U2", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.K);
            map3.put("SDK_UPLOAD_U3", sb3.toString());
            al.c("%s rid:%s sess:%s ls:%ds isR:%b isF:%b isM:%b isN:%b mc:%d ,%s ,isUp:%b ,vm:%d", crashDetailBean.f5531n, crashDetailBean.f5522c, aaVar.d(), Long.valueOf((crashDetailBean.f5535r - crashDetailBean.Q) / 1000), Boolean.valueOf(crashDetailBean.f5528k), Boolean.valueOf(crashDetailBean.R), Boolean.valueOf(crashDetailBean.f5527j), Boolean.valueOf(crashDetailBean.f5521b == 1), Integer.valueOf(crashDetailBean.f5537t), crashDetailBean.f5536s, Boolean.valueOf(crashDetailBean.d), Integer.valueOf(boVar.f5813r.size()));
            return boVar;
        }
        al.d("enExp args == null", new Object[0]);
        return null;
    }

    private static bp a(Context context, List<CrashDetailBean> list, aa aaVar) {
        if (context != null && list != null && list.size() != 0 && aaVar != null) {
            bp bpVar = new bp();
            bpVar.f5818a = new ArrayList<>();
            Iterator<CrashDetailBean> it = list.iterator();
            while (it.hasNext()) {
                bpVar.f5818a.add(a(context, it.next(), aaVar));
            }
            return bpVar;
        }
        al.d("enEXPPkg args == null!", new Object[0]);
        return null;
    }

    private static bn a(String str, Context context, String str2) throws IOException {
        FileInputStream fileInputStream;
        if (str2 != null && context != null) {
            al.c("zip %s", str2);
            File file = new File(str2);
            File file2 = new File(context.getCacheDir(), str);
            if (!ap.a(file, file2)) {
                al.d("zip fail!", new Object[0]);
                return null;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                fileInputStream = new FileInputStream(file2);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i6 = fileInputStream.read(bArr);
                        if (i6 <= 0) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i6);
                        byteArrayOutputStream.flush();
                    }
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    al.c("read bytes :%d", Integer.valueOf(byteArray.length));
                    bn bnVar = new bn((byte) 2, file2.getName(), byteArray);
                    try {
                        fileInputStream.close();
                    } catch (IOException e5) {
                        if (!al.a(e5)) {
                            e5.printStackTrace();
                        }
                    }
                    if (file2.exists()) {
                        al.c("del tmp", new Object[0]);
                        file2.delete();
                    }
                    return bnVar;
                } catch (Throwable th) {
                    th = th;
                    try {
                        if (!al.a(th)) {
                            th.printStackTrace();
                        }
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e10) {
                                if (!al.a(e10)) {
                                    e10.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            al.c("del tmp", new Object[0]);
                            file2.delete();
                        }
                        return null;
                    } catch (Throwable th2) {
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e11) {
                                if (!al.a(e11)) {
                                    e11.printStackTrace();
                                }
                            }
                        }
                        if (file2.exists()) {
                            al.c("del tmp", new Object[0]);
                            file2.delete();
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
            }
        } else {
            al.d("rqdp{  createZipAttachment sourcePath == null || context == null ,pls check}", new Object[0]);
            return null;
        }
    }

    public static void a(String str, String str2, String str3, String str4, String str5, CrashDetailBean crashDetailBean) {
        String str6;
        aa aaVarB = aa.b();
        if (aaVarB == null) {
            return;
        }
        al.e("#++++++++++Record By Bugly++++++++++#", new Object[0]);
        al.e("# You can use Bugly(http:\\\\bugly.qq.com) to get more Crash Detail!", new Object[0]);
        al.e("# PKG NAME: %s", aaVarB.f5572c);
        al.e("# APP VER: %s", aaVarB.f5582o);
        al.e("# SDK VER: %s", aaVarB.f5575h);
        al.e("# LAUNCH TIME: %s", ap.a(new Date(aa.b().f5569a)));
        al.e("# CRASH TYPE: %s", str);
        al.e("# CRASH TIME: %s", str2);
        al.e("# CRASH PROCESS: %s", str3);
        al.e("# CRASH FOREGROUND: %s", Boolean.valueOf(aaVarB.a()));
        al.e("# CRASH THREAD: %s", str4);
        if (crashDetailBean != null) {
            al.e("# REPORT ID: %s", crashDetailBean.f5522c);
            al.e("# CRASH DEVICE: %s %s", aaVarB.h(), aaVarB.r().booleanValue() ? "ROOTED" : "UNROOT");
            al.e("# RUNTIME AVAIL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.C), Long.valueOf(crashDetailBean.D), Long.valueOf(crashDetailBean.E));
            al.e("# RUNTIME TOTAL RAM:%d ROM:%d SD:%d", Long.valueOf(crashDetailBean.F), Long.valueOf(crashDetailBean.G), Long.valueOf(crashDetailBean.H));
            if (!ap.b(crashDetailBean.O)) {
                al.e("# EXCEPTION FIRED BY %s %s", crashDetailBean.O, crashDetailBean.N);
            } else if (crashDetailBean.f5521b == 3) {
                if (crashDetailBean.T == null) {
                    str6 = "null";
                } else {
                    str6 = crashDetailBean.T.get("BUGLY_CR_01");
                }
                al.e("# EXCEPTION ANR MESSAGE:\n %s", str6);
            }
        }
        if (!ap.b(str5)) {
            al.e("# CRASH STACK: ", new Object[0]);
            al.e(str5, new Object[0]);
        }
        al.e("#++++++++++++++++++++++++++++++++++++++++++#", new Object[0]);
    }

    private static void a(CrashDetailBean crashDetailBean, Map<String, String> map) {
        String value;
        if (map != null && !map.isEmpty()) {
            crashDetailBean.S = new LinkedHashMap(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!ap.b(entry.getKey())) {
                    String key = entry.getKey();
                    if (key.length() > 100) {
                        key = key.substring(0, 100);
                        al.d("setted key length is over limit %d substring to %s", 100, key);
                    }
                    if (!ap.b(entry.getValue()) && entry.getValue().length() > 100000) {
                        value = entry.getValue().substring(entry.getValue().length() - 100000);
                        al.d("setted %s value length is over limit %d substring", key, 100000);
                    } else {
                        value = entry.getValue();
                    }
                    crashDetailBean.S.put(key, value);
                    al.a("add setted key %s value size:%d", key, Integer.valueOf(value.length()));
                }
            }
            return;
        }
        al.d("extra map is empty. CrashBean won't have userDatas.", new Object[0]);
    }

    private static void a(ArrayList<bn> arrayList, CrashDetailBean crashDetailBean) {
        String str;
        if (crashDetailBean.f5527j && (str = crashDetailBean.f5536s) != null && str.length() > 0) {
            try {
                arrayList.add(new bn((byte) 1, "alltimes.txt", crashDetailBean.f5536s.getBytes("utf-8")));
            } catch (Exception e5) {
                e5.printStackTrace();
                al.a(e5);
            }
        }
    }

    private static void a(ArrayList<bn> arrayList, String str) {
        if (str != null) {
            try {
                arrayList.add(new bn((byte) 1, "log.txt", str.getBytes("utf-8")));
            } catch (Exception e5) {
                e5.printStackTrace();
                al.a(e5);
            }
        }
    }

    private static void a(ArrayList<bn> arrayList, String str, Context context) {
        if (str != null) {
            try {
                bn bnVarA = a("backupRecord.zip", context, str);
                if (bnVarA != null) {
                    al.c("attach backup record", new Object[0]);
                    arrayList.add(bnVarA);
                }
            } catch (Exception e5) {
                al.a(e5);
            }
        }
    }

    private static void a(ArrayList<bn> arrayList, byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        try {
            bn bnVar = new bn((byte) 2, "buglylog.zip", bArr);
            al.c("attach user log", new Object[0]);
            arrayList.add(bnVar);
        } catch (Exception e5) {
            al.a(e5);
        }
    }

    private static void a(ArrayList<bn> arrayList, CrashDetailBean crashDetailBean, Context context) {
        bn bnVarA;
        if (crashDetailBean.f5521b != 3) {
            return;
        }
        al.c("crashBean.anrMessages:%s", crashDetailBean.T);
        try {
            Map<String, String> map = crashDetailBean.T;
            if (map != null && map.containsKey("BUGLY_CR_01")) {
                if (!TextUtils.isEmpty(crashDetailBean.T.get("BUGLY_CR_01"))) {
                    arrayList.add(new bn((byte) 1, "anrMessage.txt", crashDetailBean.T.get("BUGLY_CR_01").getBytes("utf-8")));
                    al.c("attach anr message", new Object[0]);
                }
                crashDetailBean.T.remove("BUGLY_CR_01");
            }
            String str = crashDetailBean.f5539v;
            if (str == null || (bnVarA = a("trace.zip", context, str)) == null) {
                return;
            }
            al.c("attach traces", new Object[0]);
            arrayList.add(bnVarA);
        } catch (Exception e5) {
            e5.printStackTrace();
            al.a(e5);
        }
    }

    private static void a(ArrayList<bn> arrayList, List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
        }
        try {
            arrayList.add(new bn((byte) 1, "martianlog.txt", sb.toString().getBytes("utf-8")));
            al.c("attach pageTracingList", new Object[0]);
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }

    private static Map<String, String> a(CrashDetailBean crashDetailBean, aa aaVar) {
        HashMap map = new HashMap(30);
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.C);
            map.put("A9", sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.D);
            map.put("A11", sb2.toString());
            StringBuilder sb3 = new StringBuilder();
            sb3.append(crashDetailBean.E);
            map.put("A10", sb3.toString());
            map.put("A23", crashDetailBean.f);
            aaVar.getClass();
            map.put("A7", "");
            map.put("A6", aa.n());
            map.put("A5", aaVar.m());
            map.put("A22", aaVar.g());
            StringBuilder sb4 = new StringBuilder();
            sb4.append(crashDetailBean.G);
            map.put("A2", sb4.toString());
            StringBuilder sb5 = new StringBuilder();
            sb5.append(crashDetailBean.F);
            map.put("A1", sb5.toString());
            map.put("A24", aaVar.f5578k);
            StringBuilder sb6 = new StringBuilder();
            sb6.append(crashDetailBean.H);
            map.put("A17", sb6.toString());
            map.put("A25", aaVar.g());
            map.put("A15", aaVar.q());
            StringBuilder sb7 = new StringBuilder();
            sb7.append(aaVar.r());
            map.put("A13", sb7.toString());
            map.put("A34", crashDetailBean.A);
            if (aaVar.G != null) {
                map.put("productIdentify", aaVar.G);
            }
            map.put("A26", URLEncoder.encode(crashDetailBean.L, "utf-8"));
            if (crashDetailBean.f5521b == 1) {
                map.put("A27", crashDetailBean.O);
                map.put("A28", crashDetailBean.N);
                StringBuilder sb8 = new StringBuilder();
                sb8.append(crashDetailBean.f5528k);
                map.put("A29", sb8.toString());
            }
            map.put("A30", crashDetailBean.P);
            StringBuilder sb9 = new StringBuilder();
            sb9.append(crashDetailBean.Q);
            map.put("A18", sb9.toString());
            StringBuilder sb10 = new StringBuilder();
            sb10.append(true ^ crashDetailBean.R);
            map.put("A36", sb10.toString());
            StringBuilder sb11 = new StringBuilder();
            sb11.append(aaVar.f5593z);
            map.put("F02", sb11.toString());
            StringBuilder sb12 = new StringBuilder();
            sb12.append(aaVar.A);
            map.put("F03", sb12.toString());
            map.put("F04", aaVar.d());
            StringBuilder sb13 = new StringBuilder();
            sb13.append(aaVar.B);
            map.put("F05", sb13.toString());
            map.put("F06", aaVar.f5592y);
            map.put("F08", aaVar.E);
            map.put("F09", aaVar.F);
            StringBuilder sb14 = new StringBuilder();
            sb14.append(aaVar.C);
            map.put("F10", sb14.toString());
            a(map, crashDetailBean);
        } catch (Exception e5) {
            e5.printStackTrace();
            al.a(e5);
        }
        return map;
    }

    private static void a(Map<String, String> map, CrashDetailBean crashDetailBean) {
        if (crashDetailBean.U >= 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(crashDetailBean.U);
            map.put("C01", sb.toString());
        }
        if (crashDetailBean.V >= 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(crashDetailBean.V);
            map.put("C02", sb2.toString());
        }
        Map<String, String> map2 = crashDetailBean.W;
        if (map2 != null && map2.size() > 0) {
            for (Map.Entry<String, String> entry : crashDetailBean.W.entrySet()) {
                map.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map3 = crashDetailBean.X;
        if (map3 == null || map3.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry2 : crashDetailBean.X.entrySet()) {
            map.put("C04_" + entry2.getKey(), entry2.getValue());
        }
    }

    public static /* synthetic */ void a(List list, boolean z7, long j10, String str, String str2) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            CrashDetailBean crashDetailBean = (CrashDetailBean) it.next();
            String str3 = f5686l.get(Integer.valueOf(crashDetailBean.f5521b));
            if (!TextUtils.isEmpty(str3)) {
                arrayList.add(new ag.c(crashDetailBean.f5522c, str3, crashDetailBean.f5535r, z7, j10, str, str2));
            }
        }
        ag.a.f5610a.a(arrayList);
    }
}
