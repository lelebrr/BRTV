package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t4 extends c7 {
    private static final t4 zzb;
    private int zzd;
    private int zze;

    static {
        t4 t4Var = new t4();
        zzb = t4Var;
        c7.e(t4.class, t4Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001᠌\u0000", new Object[]{"zzd", "zze", k2.f4286m});
        }
        if (i10 == 3) {
            return new t4();
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
