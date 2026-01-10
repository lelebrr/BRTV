package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b4 extends c7 {
    private static final b4 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;

    static {
        b4 b4Var = new b4();
        zzb = b4Var;
        c7.e(b4.class, b4Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zzd", "zze", i2.f4222a, "zzf", "zzg"});
        }
        if (i10 == 3) {
            return new b4();
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
