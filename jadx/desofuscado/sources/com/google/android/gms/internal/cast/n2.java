package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n2 extends c7 {
    private static final n2 zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private e7 zzg = d7.f4135e;

    static {
        n2 n2Var = new n2();
        zzb = n2Var;
        c7.e(n2.class, n2Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ࠞ", new Object[]{"zzd", "zze", "zzf", "zzg", k2.f4282i});
        }
        if (i10 == 3) {
            return new n2();
        }
        if (i10 == 4) {
            return new c(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
