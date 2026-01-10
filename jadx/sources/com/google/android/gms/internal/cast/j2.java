package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.math.BigInteger;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j2 {
    public static final v4.b d = new v4.b("ApplicationAnalyticsUtils", null);

    /* renamed from: e, reason: collision with root package name */
    public static final String f4262e = "22.1.0";

    /* renamed from: a, reason: collision with root package name */
    public final String f4263a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f4264b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f4265c;

    public j2(String str, Bundle bundle) {
        this.f4263a = str;
        this.f4264b = z0.g("com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_ERROR", bundle);
        this.f4265c = z0.g("com.google.android.gms.cast.DICTIONARY_CAST_STATUS_CODES_TO_APP_SESSION_CHANGE_REASON", bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.internal.cast.c3 a(com.google.android.gms.internal.cast.h2 r5, int r6) {
        /*
            r4 = this;
            com.google.android.gms.internal.cast.b3 r5 = r4.b(r5)
            com.google.android.gms.internal.cast.w2 r0 = r5.d()
            com.google.android.gms.internal.cast.v2 r0 = com.google.android.gms.internal.cast.w2.m(r0)
            java.util.Map r1 = r4.f4265c
            if (r1 == 0) goto L29
            java.lang.Integer r2 = java.lang.Integer.valueOf(r6)
            boolean r3 = r1.containsKey(r2)
            if (r3 != 0) goto L1b
            goto L29
        L1b:
            java.lang.Object r1 = r1.get(r2)
            java.lang.Integer r1 = (java.lang.Integer) r1
            b5.l.e(r1)
            int r1 = r1.intValue()
            goto L2b
        L29:
            int r1 = r6 + 10000
        L2b:
            r0.c()
            com.google.android.gms.internal.cast.c7 r2 = r0.f4117b
            com.google.android.gms.internal.cast.w2 r2 = (com.google.android.gms.internal.cast.w2) r2
            com.google.android.gms.internal.cast.w2.u(r2, r1)
            java.util.Map r1 = r4.f4264b
            if (r1 == 0) goto L52
            java.lang.Integer r2 = java.lang.Integer.valueOf(r6)
            boolean r3 = r1.containsKey(r2)
            if (r3 != 0) goto L44
            goto L52
        L44:
            java.lang.Object r6 = r1.get(r2)
            java.lang.Integer r6 = (java.lang.Integer) r6
            b5.l.e(r6)
            int r6 = r6.intValue()
            goto L54
        L52:
            int r6 = r6 + 10000
        L54:
            r0.c()
            com.google.android.gms.internal.cast.c7 r1 = r0.f4117b
            com.google.android.gms.internal.cast.w2 r1 = (com.google.android.gms.internal.cast.w2) r1
            com.google.android.gms.internal.cast.w2.q(r1, r6)
            com.google.android.gms.internal.cast.c7 r6 = r0.a()
            com.google.android.gms.internal.cast.w2 r6 = (com.google.android.gms.internal.cast.w2) r6
            r5.e(r6)
            com.google.android.gms.internal.cast.c7 r5 = r5.a()
            com.google.android.gms.internal.cast.c3 r5 = (com.google.android.gms.internal.cast.c3) r5
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.j2.a(com.google.android.gms.internal.cast.h2, int):com.google.android.gms.internal.cast.c3");
    }

    public final b3 b(h2 h2Var) {
        int i6;
        long jLongValue;
        b3 b3VarM = c3.m();
        long j10 = h2Var.d;
        b3VarM.c();
        c3.z((c3) b3VarM.f4117b, j10);
        int i10 = h2Var.f4179e;
        h2Var.f4179e = i10 + 1;
        b3VarM.c();
        c3.t((c3) b3VarM.f4117b, i10);
        String str = h2Var.f4178c;
        if (str != null) {
            b3VarM.c();
            c3.w((c3) b3VarM.f4117b, str);
        }
        f5 f5VarL = g5.l();
        if (!TextUtils.isEmpty(h2Var.f4181h)) {
            String str2 = h2Var.f4181h;
            b3VarM.c();
            c3.s((c3) b3VarM.f4117b, str2);
            String str3 = h2Var.f4181h;
            f5VarL.c();
            g5.o((g5) f5VarL.f4117b, str3);
        }
        if (!TextUtils.isEmpty(h2Var.f4182i)) {
            String str4 = h2Var.f4182i;
            f5VarL.c();
            g5.p((g5) f5VarL.f4117b, str4);
        }
        if (!TextUtils.isEmpty(h2Var.f4183j)) {
            String str5 = h2Var.f4183j;
            f5VarL.c();
            g5.q((g5) f5VarL.f4117b, str5);
        }
        if (!TextUtils.isEmpty(h2Var.f4184k)) {
            String str6 = h2Var.f4184k;
            f5VarL.c();
            g5.m((g5) f5VarL.f4117b, str6);
        }
        if (!TextUtils.isEmpty(h2Var.f4185l)) {
            String str7 = h2Var.f4185l;
            f5VarL.c();
            g5.n((g5) f5VarL.f4117b, str7);
        }
        if (!TextUtils.isEmpty(h2Var.f4186m)) {
            String str8 = h2Var.f4186m;
            f5VarL.c();
            g5.r((g5) f5VarL.f4117b, str8);
        }
        int i11 = h2Var.f4187n;
        if (i11 != 1) {
            i6 = 3;
            if (i11 != 2) {
                if (i11 != 3) {
                    i6 = 5;
                    if (i11 != 4) {
                        i6 = i11 != 5 ? 1 : 6;
                    }
                } else {
                    i6 = 4;
                }
            }
        } else {
            i6 = 2;
        }
        f5VarL.c();
        g5.s((g5) f5VarL.f4117b, i6);
        g5 g5Var = (g5) f5VarL.a();
        b3VarM.c();
        c3.v((c3) b3VarM.f4117b, g5Var);
        s2 s2VarL = t2.l();
        s2VarL.c();
        t2.n((t2) s2VarL.f4117b, f4262e);
        s2VarL.c();
        t2.m((t2) s2VarL.f4117b, this.f4263a);
        t2 t2Var = (t2) s2VarL.a();
        b3VarM.c();
        c3.o((c3) b3VarM.f4117b, t2Var);
        v2 v2VarL = w2.l();
        if (h2Var.f4177b != null) {
            t3 t3VarL = u3.l();
            String str9 = h2Var.f4177b;
            t3VarL.c();
            u3.m((u3) t3VarL.f4117b, str9);
            u3 u3Var = (u3) t3VarL.a();
            v2VarL.c();
            w2.o((w2) v2VarL.f4117b, u3Var);
        }
        v2VarL.c();
        w2.t((w2) v2VarL.f4117b, false);
        String str10 = h2Var.f;
        if (str10 != null) {
            try {
                String strReplace = str10.replace("-", "");
                jLongValue = new BigInteger(strReplace.substring(0, Math.min(16, strReplace.length())), 16).longValue();
            } catch (NumberFormatException e5) {
                Object[] objArr = {str10};
                v4.b bVar = d;
                Log.w(bVar.f10671a, bVar.d("receiverSessionId %s is not valid for hash", objArr), e5);
                jLongValue = 0;
            }
            v2VarL.c();
            w2.v((w2) v2VarL.f4117b, jLongValue);
        }
        int i12 = h2Var.f4180g;
        v2VarL.c();
        w2.p((w2) v2VarL.f4117b, i12);
        boolean z7 = h2Var.f4176a.f == 2;
        v2VarL.c();
        w2.r((w2) v2VarL.f4117b, z7);
        boolean z10 = h2Var.f4188o;
        v2VarL.c();
        w2.s((w2) v2VarL.f4117b, z10);
        b3VarM.c();
        c3.q((c3) b3VarM.f4117b, (w2) v2VarL.a());
        return b3VarM;
    }
}
