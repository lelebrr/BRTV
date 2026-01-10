package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i3 extends c7 {
    private static final i3 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private long zzi;

    static {
        i3 i3Var = new i3();
        zzb = i3Var;
        c7.e(i3.class, i3Var);
    }

    public static h3 l() {
        return (h3) zzb.j();
    }

    public static /* synthetic */ void m(i3 i3Var, boolean z7) {
        i3Var.zzd |= 8;
        i3Var.zzh = z7;
    }

    public static /* synthetic */ void n(i3 i3Var, int i6) {
        i3Var.zzd |= 4;
        i3Var.zzg = i6;
    }

    public static /* synthetic */ void o(i3 i3Var, long j10) {
        i3Var.zzd |= 16;
        i3Var.zzi = j10;
    }

    public static /* synthetic */ void p(i3 i3Var, int i6) {
        i3Var.zzd |= 2;
        i3Var.zzf = i6;
    }

    public static /* synthetic */ void q(i3 i3Var, int i6) {
        i3Var.zze = i6 - 1;
        i3Var.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002င\u0001\u0003င\u0002\u0004ဇ\u0003\u0006ဂ\u0004", new Object[]{"zzd", "zze", i2.B, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i10 == 3) {
            return new i3();
        }
        if (i10 == 4) {
            return new h3(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
