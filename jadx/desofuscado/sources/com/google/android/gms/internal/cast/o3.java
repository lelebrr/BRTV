package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o3 extends c7 {
    private static final o3 zzb;
    private int zzd;
    private String zze = "";
    private long zzf;

    static {
        o3 o3Var = new o3();
        zzb = o3Var;
        c7.e(o3.class, o3Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i10 == 3) {
            return new o3();
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
