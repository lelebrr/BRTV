package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m3 extends c7 {
    private static final m3 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        m3 m3Var = new m3();
        zzb = m3Var;
        c7.e(m3.class, m3Var);
    }

    public static l3 l() {
        return (l3) zzb.j();
    }

    public static /* synthetic */ void m(m3 m3Var, int i6) {
        m3Var.zzd |= 2;
        m3Var.zzf = i6;
    }

    public static /* synthetic */ void n(m3 m3Var, int i6) {
        m3Var.zzd |= 4;
        m3Var.zzg = i6;
    }

    public static /* synthetic */ void o(m3 m3Var, int i6) {
        m3Var.zzd |= 8;
        m3Var.zzh = i6;
    }

    public static /* synthetic */ void p(m3 m3Var, int i6) {
        m3Var.zze = i6 - 1;
        m3Var.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003", new Object[]{"zzd", "zze", i2.C, "zzf", "zzg", "zzh"});
        }
        if (i10 == 3) {
            return new m3();
        }
        if (i10 == 4) {
            return new l3(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
