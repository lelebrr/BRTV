package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import android.util.Pair;
import androidx.media3.extractor.metadata.icy.IcyHeaders;
import com.lzy.okgo.model.Progress;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class aj implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    protected int f5629a;

    /* renamed from: b, reason: collision with root package name */
    protected long f5630b;

    /* renamed from: c, reason: collision with root package name */
    protected long f5631c;
    private int d;

    /* renamed from: e, reason: collision with root package name */
    private int f5632e;
    private final Context f;

    /* renamed from: g, reason: collision with root package name */
    private final int f5633g;

    /* renamed from: h, reason: collision with root package name */
    private final byte[] f5634h;

    /* renamed from: i, reason: collision with root package name */
    private final aa f5635i;

    /* renamed from: j, reason: collision with root package name */
    private final ac f5636j;

    /* renamed from: k, reason: collision with root package name */
    private final af f5637k;

    /* renamed from: l, reason: collision with root package name */
    private final ai f5638l;

    /* renamed from: m, reason: collision with root package name */
    private final int f5639m;

    /* renamed from: n, reason: collision with root package name */
    private final ah f5640n;

    /* renamed from: o, reason: collision with root package name */
    private final ah f5641o;

    /* renamed from: p, reason: collision with root package name */
    private String f5642p;

    /* renamed from: q, reason: collision with root package name */
    private final String f5643q;

    /* renamed from: r, reason: collision with root package name */
    private final Map<String, String> f5644r;

    /* renamed from: s, reason: collision with root package name */
    private boolean f5645s;

    public aj(Context context, int i6, int i10, byte[] bArr, String str, String str2, ah ahVar, boolean z7) {
        this(context, i6, i10, bArr, str, str2, ahVar, 2, 30000, z7);
    }

    private static void a(String str) {
        al.e("[Upload] Failed to upload(%d): %s", 1, str);
    }

    public final void b(long j10) {
        this.f5631c += j10;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        ac acVar;
        Pair pair;
        boolean zBooleanValue;
        try {
            this.f5629a = 0;
            this.f5630b = 0L;
            this.f5631c = 0L;
            if (ab.c(this.f) == null) {
                str = "network is not available";
            } else {
                byte[] bArr = this.f5634h;
                str = (bArr == null || bArr.length == 0) ? "request package is empty!" : (this.f == null || this.f5635i == null || (acVar = this.f5636j) == null || this.f5637k == null) ? "illegal access error" : acVar.c() == null ? "illegal local strategy" : null;
            }
            if (str != null) {
                a(false, 0, str);
                return;
            }
            byte[] bArrA = ap.a(this.f5634h);
            if (bArrA == null) {
                a(false, 0, "failed to zip request body");
                return;
            }
            HashMap map = new HashMap(10);
            map.put("tls", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
            map.put("prodId", this.f5635i.e());
            map.put("bundleId", this.f5635i.f5572c);
            map.put("appVer", this.f5635i.f5582o);
            Map<String, String> map2 = this.f5644r;
            if (map2 != null) {
                map.putAll(map2);
            }
            map.put("cmd", Integer.toString(this.f5633g));
            map.put("platformId", Byte.toString((byte) 1));
            map.put("sdkVer", this.f5635i.f5575h);
            map.put("strategylastUpdateTime", Long.toString(this.f5636j.c().f5510o));
            this.f5638l.a(this.f5639m, System.currentTimeMillis());
            String strB = this.f5642p;
            this.f5636j.c();
            int i6 = 0;
            int i10 = 0;
            while (true) {
                int i11 = i6 + 1;
                if (i6 >= this.d) {
                    a(false, i10, "failed after many attempts");
                    return;
                }
                if (i11 > 1) {
                    al.d("[Upload] Failed to upload last time, wait and try(%d) again.", Integer.valueOf(i11));
                    ap.b(this.f5632e);
                    if (i11 == this.d) {
                        al.d("[Upload] Use the back-up url at the last time: %s", this.f5643q);
                        strB = this.f5643q;
                    }
                }
                al.c("[Upload] Send %d bytes", Integer.valueOf(bArrA.length));
                strB = b(strB);
                al.c("[Upload] Upload to %s with cmd %d (pid=%d | tid=%d).", strB, Integer.valueOf(this.f5633g), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                byte[] bArrA2 = this.f5637k.a(strB, bArrA, this, map);
                Map<String, String> map3 = this.f5637k.f5607c;
                Pair<Boolean, Boolean> pairA = a(bArrA2, map3);
                if (((Boolean) pairA.first).booleanValue()) {
                    Pair<Boolean, Boolean> pairA2 = a(map3);
                    if (((Boolean) pairA2.first).booleanValue()) {
                        byte[] bArrB = ap.b(bArrA2);
                        if (bArrB != null) {
                            bArrA2 = bArrB;
                        }
                        br brVarA = ae.a(bArrA2);
                        if (brVarA == null) {
                            a(false, 1, "failed to decode response package");
                            Boolean bool = Boolean.FALSE;
                            pair = new Pair(bool, bool);
                        } else {
                            Integer numValueOf = Integer.valueOf(brVarA.f5846b);
                            byte[] bArr2 = brVarA.f5847c;
                            al.c("[Upload] Response cmd is: %d, length of sBuffer is: %d", numValueOf, Integer.valueOf(bArr2 == null ? 0 : bArr2.length));
                            if (a(brVarA, this.f5635i, this.f5636j)) {
                                a(true, 2, "successfully uploaded");
                                Boolean bool2 = Boolean.TRUE;
                                pair = new Pair(bool2, bool2);
                            } else {
                                a(false, 2, "failed to process response package");
                                Boolean bool3 = Boolean.FALSE;
                                pair = new Pair(bool3, bool3);
                            }
                        }
                        zBooleanValue = !((Boolean) pair.first).booleanValue() ? ((Boolean) pair.second).booleanValue() : false;
                    } else {
                        zBooleanValue = ((Boolean) pairA2.second).booleanValue();
                    }
                } else {
                    zBooleanValue = ((Boolean) pairA.second).booleanValue();
                }
                if (!zBooleanValue) {
                    return;
                }
                i6 = i11;
                i10 = 1;
            }
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public aj(Context context, int i6, int i10, byte[] bArr, String str, String str2, ah ahVar, int i11, int i12, boolean z7) {
        this.d = 2;
        this.f5632e = 30000;
        this.f5642p = null;
        this.f5629a = 0;
        this.f5630b = 0L;
        this.f5631c = 0L;
        this.f5645s = false;
        this.f = context;
        this.f5635i = aa.a(context);
        this.f5634h = bArr;
        this.f5636j = ac.a();
        if (af.f5605a == null) {
            af.f5605a = new af(context);
        }
        this.f5637k = af.f5605a;
        ai aiVarA = ai.a();
        this.f5638l = aiVarA;
        this.f5639m = i6;
        this.f5642p = str;
        this.f5643q = str2;
        this.f5640n = ahVar;
        this.f5641o = aiVarA.f5620a;
        this.f5633g = i10;
        if (i11 > 0) {
            this.d = i11;
        }
        if (i12 > 0) {
            this.f5632e = i12;
        }
        this.f5645s = z7;
        this.f5644r = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0019  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void a(boolean r5, int r6, java.lang.String r7) {
        /*
            r4 = this;
            r0 = 0
            r1 = 1
            int r2 = r4.f5633g
            r3 = 630(0x276, float:8.83E-43)
            if (r2 == r3) goto L1c
            r3 = 640(0x280, float:8.97E-43)
            if (r2 == r3) goto L19
            r3 = 830(0x33e, float:1.163E-42)
            if (r2 == r3) goto L1c
            r3 = 840(0x348, float:1.177E-42)
            if (r2 == r3) goto L19
            java.lang.String r2 = java.lang.String.valueOf(r2)
            goto L1e
        L19:
            java.lang.String r2 = "userinfo"
            goto L1e
        L1c:
            java.lang.String r2 = "crash"
        L1e:
            if (r5 == 0) goto L2a
            java.lang.String r6 = "[Upload] Success: %s"
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r1[r0] = r2
            com.tencent.bugly.proguard.al.a(r6, r1)
            goto L3d
        L2a:
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r3[r0] = r6
            r3[r1] = r2
            r6 = 2
            r3[r6] = r7
            java.lang.String r6 = "[Upload] Failed to upload(%d) %s: %s"
            com.tencent.bugly.proguard.al.e(r6, r3)
        L3d:
            long r0 = r4.f5630b
            long r2 = r4.f5631c
            long r0 = r0 + r2
            r2 = 0
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 <= 0) goto L5d
            com.tencent.bugly.proguard.ai r6 = r4.f5638l
            boolean r0 = r4.f5645s
            long r0 = r6.a(r0)
            long r2 = r4.f5630b
            long r0 = r0 + r2
            long r2 = r4.f5631c
            long r0 = r0 + r2
            com.tencent.bugly.proguard.ai r6 = r4.f5638l
            boolean r2 = r4.f5645s
            r6.a(r0, r2)
        L5d:
            com.tencent.bugly.proguard.ah r6 = r4.f5640n
            if (r6 == 0) goto L64
            r6.a(r5, r7)
        L64:
            com.tencent.bugly.proguard.ah r6 = r4.f5641o
            if (r6 == 0) goto L6b
            r6.a(r5, r7)
        L6b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.aj.a(boolean, int, java.lang.String):void");
    }

    private static String b(String str) {
        if (ap.b(str)) {
            return str;
        }
        try {
            return str + "?aid=" + UUID.randomUUID().toString();
        } catch (Throwable th) {
            al.a(th);
            return str;
        }
    }

    private static boolean a(br brVar, aa aaVar, ac acVar) throws NumberFormatException {
        if (brVar == null) {
            al.d("resp == null!", new Object[0]);
            return false;
        }
        byte b8 = brVar.f5845a;
        if (b8 != 0) {
            al.e("resp result error %d", Byte.valueOf(b8));
            return false;
        }
        try {
            if (!ap.b(brVar.f5849g) && !aa.b().i().equals(brVar.f5849g)) {
                w.a().a(ac.f5597a, "device", brVar.f5849g.getBytes("UTF-8"), true);
                aaVar.d(brVar.f5849g);
            }
        } catch (Throwable th) {
            al.a(th);
        }
        aaVar.f5580m = brVar.f5848e;
        int i6 = brVar.f5846b;
        if (i6 == 510) {
            byte[] bArr = brVar.f5847c;
            if (bArr == null) {
                al.e("[Upload] Strategy data is null. Response cmd: %d", Integer.valueOf(i6));
                return false;
            }
            bt btVar = (bt) ae.a(bArr, bt.class);
            if (btVar == null) {
                al.e("[Upload] Failed to decode strategy from server. Response cmd: %d", Integer.valueOf(brVar.f5846b));
                return false;
            }
            acVar.a(btVar);
        }
        return true;
    }

    private Pair<Boolean, Boolean> a(byte[] bArr, Map<String, String> map) {
        if (bArr == null) {
            a("Failed to upload for no response!");
            return new Pair<>(Boolean.FALSE, Boolean.TRUE);
        }
        al.c("[Upload] Received %d bytes", Integer.valueOf(bArr.length));
        if (bArr.length == 0) {
            a(false, 1, "response data from server is empty");
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    al.c("[Upload] HTTP headers from server: key = %s, value = %s", entry.getKey(), entry.getValue());
                }
            }
            Boolean bool = Boolean.FALSE;
            return new Pair<>(bool, bool);
        }
        Boolean bool2 = Boolean.TRUE;
        return new Pair<>(bool2, bool2);
    }

    public final void a(long j10) {
        this.f5629a++;
        this.f5630b += j10;
    }

    private Pair<Boolean, Boolean> a(Map<String, String> map) {
        int i6;
        if (map != null && map.size() != 0) {
            if (!map.containsKey(Progress.STATUS)) {
                al.d("[Upload] Headers does not contain %s", Progress.STATUS);
            } else if (!map.containsKey("Bugly-Version")) {
                al.d("[Upload] Headers does not contain %s", "Bugly-Version");
            } else {
                String str = map.get("Bugly-Version");
                if (!str.contains("bugly")) {
                    al.d("[Upload] Bugly version is not valid: %s", str);
                } else {
                    al.c("[Upload] Bugly version from headers is: %s", str);
                    try {
                        i6 = Integer.parseInt(map.get(Progress.STATUS));
                        try {
                            al.c("[Upload] Status from server is %d (pid=%d | tid=%d).", Integer.valueOf(i6), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
                            if (i6 != 0) {
                                a(false, 1, "status of server is ".concat(String.valueOf(i6)));
                                Boolean bool = Boolean.FALSE;
                                return new Pair<>(bool, bool);
                            }
                            Boolean bool2 = Boolean.TRUE;
                            return new Pair<>(bool2, bool2);
                        } catch (Throwable unused) {
                            a("[Upload] Failed to upload for format of status header is invalid: " + Integer.toString(i6));
                            return new Pair<>(Boolean.FALSE, Boolean.TRUE);
                        }
                    } catch (Throwable unused2) {
                        i6 = -1;
                    }
                }
            }
        } else {
            al.d("[Upload] Headers is empty.", new Object[0]);
        }
        al.c("[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d).", Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()));
        a("[Upload] Failed to upload for no status header.");
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                al.c(String.format("[key]: %s, [value]: %s", entry.getKey(), entry.getValue()), new Object[0]);
            }
        }
        al.c("[Upload] Failed to upload for no status header.", new Object[0]);
        return new Pair<>(Boolean.FALSE, Boolean.TRUE);
    }
}
