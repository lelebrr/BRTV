package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k4 extends c7 {
    private static final k4 zzb;
    private int zzd;
    private int zze;
    private long zzf;
    private int zzg;

    static {
        k4 k4Var = new k4();
        zzb = k4Var;
        c7.e(k4.class, k4Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", i2.f4229j, "zzf", "zzg", h4.f4203p});
        }
        if (i10 == 3) {
            return new k4();
        }
        if (i10 == 4) {
            return new g4(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
