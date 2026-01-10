package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g8 extends c7 {
    private static final g8 zzb;
    private int zzd;
    private e zze;
    private int zzf;
    private int zzg;

    static {
        g8 g8Var = new g8();
        zzb = g8Var;
        c7.e(g8.class, g8Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဉ\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", "zzf", k2.f4291r, "zzg", k2.f4290q});
        }
        if (i10 == 3) {
            return new g8();
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
