package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g5 extends c7 {
    private static final g5 zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";
    private boolean zzk;
    private int zzl;

    static {
        g5 g5Var = new g5();
        zzb = g5Var;
        c7.e(g5.class, g5Var);
    }

    public static f5 l() {
        return (f5) zzb.j();
    }

    public static /* synthetic */ void m(g5 g5Var, String str) {
        str.getClass();
        g5Var.zzd |= 8;
        g5Var.zzh = str;
    }

    public static /* synthetic */ void n(g5 g5Var, String str) {
        str.getClass();
        g5Var.zzd |= 16;
        g5Var.zzi = str;
    }

    public static /* synthetic */ void o(g5 g5Var, String str) {
        str.getClass();
        g5Var.zzd |= 1;
        g5Var.zze = str;
    }

    public static /* synthetic */ void p(g5 g5Var, String str) {
        str.getClass();
        g5Var.zzd |= 2;
        g5Var.zzf = str;
    }

    public static /* synthetic */ void q(g5 g5Var, String str) {
        str.getClass();
        g5Var.zzd |= 4;
        g5Var.zzg = str;
    }

    public static /* synthetic */ void r(g5 g5Var, String str) {
        str.getClass();
        g5Var.zzd |= 32;
        g5Var.zzj = str;
    }

    public static /* synthetic */ void s(g5 g5Var, int i6) {
        g5Var.zzl = i6 - 1;
        g5Var.zzd |= 128;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004\u0006ဈ\u0005\u0007ဇ\u0006\b᠌\u0007", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", h4.f4204q});
        }
        if (i10 == 3) {
            return new g5();
        }
        if (i10 == 4) {
            return new f5(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
