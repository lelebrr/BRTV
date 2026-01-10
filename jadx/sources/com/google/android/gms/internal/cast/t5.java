package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t5 extends c7 {
    private static final t5 zzb;
    private int zzd;
    private String zze = "";
    private long zzf;
    private long zzg;
    private u5 zzh;

    static {
        t5 t5Var = new t5();
        zzb = t5Var;
        c7.e(t5.class, t5Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဂ\u0002\u0004ဉ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i10 == 3) {
            return new t5();
        }
        if (i10 == 4) {
            return new p5(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
