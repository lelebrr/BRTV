package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w4 extends c7 {
    private static final w4 zzb;
    private int zzd;
    private int zze;

    static {
        w4 w4Var = new w4();
        zzb = w4Var;
        c7.e(w4.class, w4Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", k2.f4288o});
        }
        if (i10 == 3) {
            return new w4();
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
