package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s3 extends c7 {
    private static final s3 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private q2 zzg;

    static {
        s3 s3Var = new s3();
        zzb = s3Var;
        c7.e(s3.class, s3Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002ဋ\u0001\u0003ဉ\u0002", new Object[]{"zzd", "zze", h4.f4212y, "zzf", "zzg"});
        }
        if (i10 == 3) {
            return new s3();
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
