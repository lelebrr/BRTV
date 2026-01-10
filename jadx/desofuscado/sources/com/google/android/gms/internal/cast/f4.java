package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f4 extends c7 {
    private static final f4 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private byte zzh = 2;

    static {
        f4 f4Var = new f4();
        zzb = f4Var;
        c7.e(f4.class, f4Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return Byte.valueOf(this.zzh);
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0001\u0001ᴌ\u0000\u0002င\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", i2.f4225e, "zzf", "zzg", k2.f4284k});
        }
        if (i10 == 3) {
            return new f4();
        }
        if (i10 == 4) {
            return new c(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        this.zzh = c7Var == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
