package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k5 extends c7 {
    private static final k5 zzb;
    private int zzd;
    private int zze;
    private long zzf;
    private g7 zzg;
    private g7 zzh;
    private g7 zzi;

    static {
        k5 k5Var = new k5();
        zzb = k5Var;
        c7.e(k5.class, k5Var);
    }

    public k5() {
        t7 t7Var = t7.f4421e;
        this.zzg = t7Var;
        this.zzh = t7Var;
        this.zzi = t7Var;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0003\u0000\u0001᠌\u0000\u0002ဂ\u0001\u0003\u001b\u0004\u001b\u0005\u001b", new Object[]{"zzd", "zze", i2.f4242w, "zzf", "zzg", g5.class, "zzh", e3.class, "zzi", j5.class});
        }
        if (i10 == 3) {
            return new k5();
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
