package com.tencent.bugly.proguard;

import android.app.ActivityManager;
import android.content.Context;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bd implements NativeExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    private final Context f5767a;

    /* renamed from: b, reason: collision with root package name */
    private final as f5768b;

    /* renamed from: c, reason: collision with root package name */
    private final aa f5769c;
    private final ac d;

    public bd(Context context, aa aaVar, as asVar, ac acVar) {
        this.f5767a = context;
        this.f5768b = asVar;
        this.f5769c = aaVar;
        this.d = acVar;
    }

    private static Map<String, String> a(String[] strArr) {
        HashMap map = new HashMap(strArr == null ? 1 : strArr.length);
        if (strArr != null) {
            for (int i6 = 0; i6 < strArr.length; i6++) {
                String str = strArr[i6];
                if (str != null) {
                    al.a("Extra message[%d]: %s", Integer.valueOf(i6), str);
                    String[] strArrSplit = str.split("=");
                    if (strArrSplit.length == 2) {
                        map.put(strArrSplit[0], strArrSplit[1]);
                    } else {
                        al.d("bad extraMsg %s", str);
                    }
                }
            }
        } else {
            al.c("not found extraMsg", new Object[0]);
        }
        return map;
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final boolean getAndUpdateAnrState() {
        if (ay.a() == null) {
            return false;
        }
        ay ayVarA = ay.a();
        if (ayVarA.f5738a.get()) {
            al.c("anr is processing, return", new Object[0]);
            return false;
        }
        ActivityManager activityManager = ayVarA.f5739b;
        if (z.a(activityManager) || az.a(activityManager, 0L) == null) {
            al.c("proc is not in anr, wait next check", new Object[0]);
            return false;
        }
        if (ayVarA.a(System.currentTimeMillis())) {
            return false;
        }
        return ayVarA.a(true);
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final void handleNativeException(int i6, int i10, long j10, long j11, String str, String str2, String str3, String str4, int i11, String str5, int i12, int i13, int i14, String str6, String str7) {
        al.a("Native Crash Happen v1", new Object[0]);
        handleNativeException2(i6, i10, j10, j11, str, str2, str3, str4, i11, str5, i12, i13, i14, str6, str7, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x0180 A[PHI: r4
  0x0180: PHI (r4v10 java.lang.String) = (r4v9 java.lang.String), (r4v17 java.lang.String) binds: [B:40:0x0156, B:44:0x0166] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01ab A[Catch: all -> 0x01b4, TryCatch #1 {all -> 0x01b4, blocks: (B:49:0x01a5, B:51:0x01ab, B:55:0x01b9), top: B:77:0x01a5 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x01b9 A[Catch: all -> 0x01b4, TRY_LEAVE, TryCatch #1 {all -> 0x01b4, blocks: (B:49:0x01a5, B:51:0x01ab, B:55:0x01b9), top: B:77:0x01a5 }] */
    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void handleNativeException2(int r28, int r29, long r30, long r32, java.lang.String r34, java.lang.String r35, java.lang.String r36, java.lang.String r37, int r38, java.lang.String r39, int r40, int r41, int r42, java.lang.String r43, java.lang.String r44, java.lang.String[] r45) {
        /*
            Method dump skipped, instructions count: 563
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.bd.handleNativeException2(int, int, long, long, java.lang.String, java.lang.String, java.lang.String, java.lang.String, int, java.lang.String, int, int, int, java.lang.String, java.lang.String, java.lang.String[]):void");
    }

    @Override // com.tencent.bugly.crashreport.crash.jni.NativeExceptionHandler
    public final CrashDetailBean packageCrashDatas(String str, String str2, long j10, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, byte[] bArr, Map<String, String> map, boolean z7, boolean z10) throws IOException {
        int i6;
        String str12;
        int iIndexOf;
        boolean zI = at.a().i();
        if (zI) {
            al.e("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new Object[0]);
        }
        CrashDetailBean crashDetailBean = new CrashDetailBean();
        crashDetailBean.f5521b = 1;
        crashDetailBean.f5523e = this.f5769c.g();
        aa aaVar = this.f5769c;
        crashDetailBean.f = aaVar.f5582o;
        crashDetailBean.f5524g = aaVar.q();
        crashDetailBean.f5530m = this.f5769c.f();
        crashDetailBean.f5531n = str3;
        crashDetailBean.f5532o = zI ? " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]" : "";
        crashDetailBean.f5533p = str4;
        String str13 = str5 != null ? str5 : "";
        crashDetailBean.f5534q = str13;
        crashDetailBean.f5535r = j10;
        crashDetailBean.f5538u = ap.c(str13.getBytes());
        crashDetailBean.A = str;
        crashDetailBean.B = str2;
        crashDetailBean.L = this.f5769c.s();
        crashDetailBean.f5525h = this.f5769c.p();
        crashDetailBean.f5526i = this.f5769c.A();
        crashDetailBean.f5539v = str8;
        String dumpFilePath = NativeCrashHandler.getInstance() != null ? NativeCrashHandler.getDumpFilePath() : null;
        String strA = be.a(dumpFilePath, str8);
        if (!ap.b(strA)) {
            crashDetailBean.Z = strA;
        }
        crashDetailBean.f5520aa = be.b(dumpFilePath);
        crashDetailBean.f5540w = be.a(str9, at.f, at.f5698k, at.f5703p);
        crashDetailBean.f5541x = be.a(str10, at.f, null, true);
        crashDetailBean.N = str7;
        crashDetailBean.O = str6;
        crashDetailBean.P = str11;
        crashDetailBean.F = this.f5769c.k();
        crashDetailBean.G = this.f5769c.j();
        crashDetailBean.H = this.f5769c.l();
        crashDetailBean.I = ab.b(this.f5767a);
        crashDetailBean.J = ab.g();
        crashDetailBean.K = ab.h();
        if (z7) {
            crashDetailBean.C = ab.j();
            crashDetailBean.D = ab.f();
            crashDetailBean.E = ab.l();
            crashDetailBean.f5542y = ao.a();
            aa aaVar2 = this.f5769c;
            crashDetailBean.Q = aaVar2.f5569a;
            crashDetailBean.R = aaVar2.a();
            crashDetailBean.f5543z = ap.a(this.f5769c.Q, at.f5695h);
            int iIndexOf2 = crashDetailBean.f5534q.indexOf("java:\n");
            if (iIndexOf2 > 0 && (i6 = iIndexOf2 + 6) < crashDetailBean.f5534q.length()) {
                String str14 = crashDetailBean.f5534q;
                String strSubstring = str14.substring(i6, str14.length() - 1);
                if (strSubstring.length() > 0 && crashDetailBean.f5543z.containsKey(crashDetailBean.B) && (iIndexOf = (str12 = crashDetailBean.f5543z.get(crashDetailBean.B)).indexOf(strSubstring)) > 0) {
                    String strSubstring2 = str12.substring(iIndexOf);
                    crashDetailBean.f5543z.put(crashDetailBean.B, strSubstring2);
                    crashDetailBean.f5534q = crashDetailBean.f5534q.substring(0, i6);
                    crashDetailBean.f5534q = a.e.t(new StringBuilder(), crashDetailBean.f5534q, strSubstring2);
                }
            }
            if (str == null) {
                crashDetailBean.A = this.f5769c.d;
            }
            crashDetailBean.U = this.f5769c.z();
            aa aaVar3 = this.f5769c;
            crashDetailBean.V = aaVar3.f5591x;
            crashDetailBean.W = aaVar3.t();
            crashDetailBean.X = this.f5769c.y();
        } else {
            crashDetailBean.C = -1L;
            crashDetailBean.D = -1L;
            crashDetailBean.E = -1L;
            if (crashDetailBean.f5540w == null) {
                crashDetailBean.f5540w = "This crash occurred at last process! Log is miss, when get an terrible ABRT Native Exception etc.";
            }
            crashDetailBean.Q = -1L;
            crashDetailBean.U = -1;
            crashDetailBean.V = -1;
            crashDetailBean.W = map;
            crashDetailBean.X = this.f5769c.y();
            crashDetailBean.f5543z = null;
            if (str == null) {
                crashDetailBean.A = "unknown(record)";
            }
            if (bArr != null) {
                crashDetailBean.f5542y = bArr;
            }
        }
        return crashDetailBean;
    }
}
