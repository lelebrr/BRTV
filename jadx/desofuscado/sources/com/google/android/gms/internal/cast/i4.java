package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i4 extends c7 {
    private static final i4 zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private boolean zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;

    static {
        i4 i4Var = new i4();
        zzb = i4Var;
        c7.e(i4.class, i4Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007᠌\u0006", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", i2.f, "zzi", i2.f4227h, "zzj", i2.f4226g, "zzk", i2.f4228i});
        }
        if (i10 == 3) {
            return new i4();
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
