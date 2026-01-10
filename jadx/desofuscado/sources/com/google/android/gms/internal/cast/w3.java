package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w3 extends c7 {
    private static final w3 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private g7 zzh = t7.f4421e;

    static {
        w3 w3Var = new w3();
        zzb = w3Var;
        c7.e(w3.class, w3Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004\u001b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", v3.class});
        }
        if (i10 == 3) {
            return new w3();
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
