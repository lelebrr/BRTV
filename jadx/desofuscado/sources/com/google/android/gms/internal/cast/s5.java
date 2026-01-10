package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s5 extends c7 {
    private static final s5 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzh;
    private long zzj;
    private e7 zzg = d7.f4135e;
    private g7 zzi = t7.f4421e;

    static {
        s5 s5Var = new s5();
        zzb = s5Var;
        c7.e(s5.class, s5Var);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0006\u0000\u0001\u0001\u0007\u0006\u0000\u0002\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003ࠞ\u0005᠌\u0002\u0006\u001b\u0007ဂ\u0003", new Object[]{"zzd", "zze", k2.f4281h, "zzf", h4.A, "zzg", k2.f4280g, "zzh", h4.f4208u, "zzi", r5.class, "zzj"});
        }
        if (i10 == 3) {
            return new s5();
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
