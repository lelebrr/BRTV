package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o5 extends c7 {
    private static final o5 zzb;
    private int zzd;
    private int zze;
    private g7 zzf;
    private g7 zzg;
    private int zzh;

    static {
        o5 o5Var = new o5();
        zzb = o5Var;
        c7.e(o5.class, o5Var);
    }

    public o5() {
        t7 t7Var = t7.f4421e;
        this.zzf = t7Var;
        this.zzg = t7Var;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001᠌\u0000\u0002\u001b\u0003\u001b\u0004င\u0001", new Object[]{"zzd", "zze", k2.d, "zzf", p4.class, "zzg", p4.class, "zzh"});
        }
        if (i10 == 3) {
            return new o5();
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
