package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l5 extends c7 {
    private static final l5 zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private g7 zzg;
    private g7 zzh;

    static {
        l5 l5Var = new l5();
        zzb = l5Var;
        c7.e(l5.class, l5Var);
    }

    public l5() {
        t7 t7Var = t7.f4421e;
        this.zzg = t7Var;
        this.zzh = t7Var;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003\u001b\u0004\u001b", new Object[]{"zzd", "zze", i2.f4243x, "zzf", "zzg", j5.class, "zzh", k5.class});
        }
        if (i10 == 3) {
            return new l5();
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
