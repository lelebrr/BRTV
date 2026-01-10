package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y4 extends c7 {
    private static final y4 zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        y4 y4Var = new y4();
        zzb = y4Var;
        c7.e(y4.class, y4Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i10 == 3) {
            return new y4();
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
