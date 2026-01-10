package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e3 extends c7 {
    private static final e3 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;
    private int zzi;

    static {
        e3 e3Var = new e3();
        zzb = e3Var;
        c7.e(e3.class, e3Var);
    }

    public static d3 l() {
        return (d3) zzb.j();
    }

    public static /* synthetic */ void m(e3 e3Var, int i6) {
        e3Var.zzd |= 16;
        e3Var.zzi = i6;
    }

    public static /* synthetic */ void n(e3 e3Var, int i6) {
        e3Var.zzd |= 2;
        e3Var.zzf = i6;
    }

    public static /* synthetic */ void o(e3 e3Var, int i6) {
        e3Var.zzd |= 8;
        e3Var.zzh = i6;
    }

    public static /* synthetic */ void p(e3 e3Var, int i6) {
        e3Var.zzd |= 4;
        e3Var.zzg = i6;
    }

    public static /* synthetic */ void q(e3 e3Var, int i6) {
        e3Var.zze = i6 - 1;
        e3Var.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzd", "zze", i2.f4245z, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i10 == 3) {
            return new e3();
        }
        if (i10 == 4) {
            return new d3(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
