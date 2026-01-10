package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z4 extends c7 {
    private static final z4 zzb;
    private int zzd;
    private d zze;
    private g7 zzf;
    private g7 zzg;
    private g7 zzh;
    private String zzi;
    private long zzj;
    private int zzk;

    static {
        z4 z4Var = new z4();
        zzb = z4Var;
        c7.e(z4.class, z4Var);
    }

    public z4() {
        t7 t7Var = t7.f4421e;
        this.zzf = t7Var;
        this.zzg = t7Var;
        this.zzh = t7Var;
        this.zzi = "";
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0003\u0000\u0001ဉ\u0000\u0002\u001a\u0003\u001b\u0004\u001b\u0005ဈ\u0001\u0006ဂ\u0002\u0007᠌\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", u2.class, "zzh", v4.class, "zzi", "zzj", "zzk", k2.f4285l});
        }
        if (i10 == 3) {
            return new z4();
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
