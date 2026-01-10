package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y3 extends c7 {
    private static final y3 zzb;
    private int zzd;
    private boolean zzf;
    private boolean zzg;
    private s5 zzh;
    private boolean zzi;
    private long zzk;
    private long zzl;
    private String zze = "";
    private e7 zzj = d7.f4135e;

    static {
        y3 y3Var = new y3();
        zzb = y3Var;
        c7.e(y3.class, y3Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဉ\u0003\u0004ဇ\u0004\u0005ࠬ\u0006ဇ\u0002\u0007ဂ\u0005\bဂ\u0006", new Object[]{"zzd", "zze", "zzf", "zzh", "zzi", "zzj", k2.f4280g, "zzg", "zzk", "zzl"});
        }
        if (i10 == 3) {
            return new y3();
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
