package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e5 extends c7 {
    private static final e5 zzb;
    private int zzd;
    private q2 zze;

    static {
        e5 e5Var = new e5();
        zzb = e5Var;
        c7.e(e5.class, e5Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဉ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i10 == 3) {
            return new e5();
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
