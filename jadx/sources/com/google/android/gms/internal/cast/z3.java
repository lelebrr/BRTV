package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z3 extends c7 {
    private static final z3 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private e7 zzg;
    private e7 zzh;
    private g7 zzi;
    private g7 zzj;
    private int zzk;

    static {
        z3 z3Var = new z3();
        zzb = z3Var;
        c7.e(z3.class, z3Var);
    }

    public z3() {
        d7 d7Var = d7.f4135e;
        this.zzg = d7Var;
        this.zzh = d7Var;
        t7 t7Var = t7.f4421e;
        this.zzi = t7Var;
        this.zzj = t7Var;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001င\u0000\u0002᠌\u0001\u0003\u0016\u0004\u0016\u0005\u001a\u0006\u001a\u0007᠌\u0002", new Object[]{"zzd", "zze", "zzf", i2.f4222a, "zzg", "zzh", "zzi", "zzj", "zzk", h4.A});
        }
        if (i10 == 3) {
            return new z3();
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
