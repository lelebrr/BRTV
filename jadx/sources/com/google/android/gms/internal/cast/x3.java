package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x3 extends c7 {
    private static final x3 zzb;
    private int zzd;
    private boolean zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private l4 zzi;
    private int zzj;
    private boolean zzk;

    static {
        x3 x3Var = new x3();
        zzb = x3Var;
        c7.e(x3.class, x3Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဇ\u0000\u0002᠌\u0001\u0003᠌\u0002\u0004᠌\u0003\u0005ဉ\u0004\u0006᠌\u0005\u0007ဇ\u0006", new Object[]{"zzd", "zze", "zzf", h4.A, "zzg", h4.C, "zzh", h4.f4202o, "zzi", "zzj", h4.B, "zzk"});
        }
        if (i10 == 3) {
            return new x3();
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
