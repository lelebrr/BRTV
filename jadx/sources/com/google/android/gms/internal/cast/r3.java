package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r3 extends c7 {
    private static final r3 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private long zzg;

    static {
        r3 r3Var = new r3();
        zzb = r3Var;
        c7.e(r3.class, r3Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0004\u0001\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001စ\u0000\u0002:\u0000\u00035\u0000\u00048\u0000", new Object[]{"zzf", "zze", "zzd", "zzg"});
        }
        if (i10 == 3) {
            return new r3();
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
