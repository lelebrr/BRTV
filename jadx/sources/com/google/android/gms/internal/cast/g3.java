package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g3 extends c7 {
    private static final g3 zzb;
    private int zzd;
    private int zze;
    private int zzf;

    static {
        g3 g3Var = new g3();
        zzb = g3Var;
        c7.e(g3.class, g3Var);
    }

    public static f3 l() {
        return (f3) zzb.j();
    }

    public static /* synthetic */ void m(g3 g3Var, int i6) {
        g3Var.zzd |= 2;
        g3Var.zzf = i6;
    }

    public static /* synthetic */ void n(g3 g3Var, int i6) {
        g3Var.zze = i6 - 1;
        g3Var.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001", new Object[]{"zzd", "zze", i2.A, "zzf"});
        }
        if (i10 == 3) {
            return new g3();
        }
        if (i10 == 4) {
            return new f3(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
