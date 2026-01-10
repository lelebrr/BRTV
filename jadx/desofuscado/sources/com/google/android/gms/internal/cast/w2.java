package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w2 extends c7 {
    private static final w2 zzb;
    private int zzd;
    private u3 zze;
    private boolean zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private a5 zzm;
    private int zzn;
    private int zzo;
    private boolean zzp;
    private int zzq;
    private int zzr;
    private boolean zzs;

    static {
        w2 w2Var = new w2();
        zzb = w2Var;
        c7.e(w2.class, w2Var);
    }

    public static v2 l() {
        return (v2) zzb.j();
    }

    public static v2 m(w2 w2Var) {
        b7 b7VarJ = zzb.j();
        c7 c7Var = b7VarJ.f4116a;
        if (!c7Var.equals(w2Var)) {
            if (!b7VarJ.f4117b.g()) {
                c7 c7Var2 = (c7) c7Var.h(4, null);
                s7.f4412c.a(c7Var2.getClass()).g(c7Var2, b7VarJ.f4117b);
                b7VarJ.f4117b = c7Var2;
            }
            c7 c7Var3 = b7VarJ.f4117b;
            s7.f4412c.a(c7Var3.getClass()).g(c7Var3, w2Var);
        }
        return (v2) b7VarJ;
    }

    public static w2 n() {
        return zzb;
    }

    public static /* synthetic */ void o(w2 w2Var, u3 u3Var) {
        w2Var.zze = u3Var;
        w2Var.zzd |= 1;
    }

    public static /* synthetic */ void p(w2 w2Var, int i6) {
        w2Var.zzd |= 1024;
        w2Var.zzo = i6;
    }

    public static /* synthetic */ void q(w2 w2Var, int i6) {
        w2Var.zzd |= 128;
        w2Var.zzl = i6;
    }

    public static /* synthetic */ void r(w2 w2Var, boolean z7) {
        w2Var.zzd |= 2048;
        w2Var.zzp = z7;
    }

    public static /* synthetic */ void s(w2 w2Var, boolean z7) {
        w2Var.zzd |= 16384;
        w2Var.zzs = z7;
    }

    public static /* synthetic */ void t(w2 w2Var, boolean z7) {
        w2Var.zzd |= 2;
        w2Var.zzf = z7;
    }

    public static /* synthetic */ void u(w2 w2Var, int i6) {
        w2Var.zzd |= 64;
        w2Var.zzk = i6;
    }

    public static /* synthetic */ void v(w2 w2Var, long j10) {
        w2Var.zzd |= 4;
        w2Var.zzg = j10;
    }

    public static /* synthetic */ void w(w2 w2Var) {
        w2Var.zzd |= 8192;
        w2Var.zzr = 101;
    }

    public static /* synthetic */ void x(w2 w2Var) {
        w2Var.zzd |= 4096;
        w2Var.zzq = 0;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u000f\u0000\u0001\u0001\u000f\u000f\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဇ\u0001\u0003စ\u0002\u0004ဆ\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007င\u0006\bင\u0007\tဉ\b\n᠌\t\u000bင\n\fဇ\u000b\rင\f\u000eင\r\u000fဇ\u000e", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi", h4.f4201n, "zzj", h4.f4200m, "zzk", "zzl", "zzm", "zzn", h4.B, "zzo", "zzp", "zzq", "zzr", "zzs"});
        }
        if (i10 == 3) {
            return new w2();
        }
        if (i10 == 4) {
            return new v2(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
