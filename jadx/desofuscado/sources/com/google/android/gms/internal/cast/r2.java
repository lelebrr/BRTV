package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r2 extends c7 {
    private static final r2 zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private int zzg;
    private boolean zzh;
    private g7 zzi;
    private g7 zzj;
    private String zzk;

    static {
        r2 r2Var = new r2();
        zzb = r2Var;
        c7.e(r2.class, r2Var);
    }

    public r2() {
        t7 t7Var = t7.f4421e;
        this.zzi = t7Var;
        this.zzj = t7Var;
        this.zzk = "";
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002\u0004ဇ\u0003\u0007\u001b\b\u001b\tဈ\u0004", new Object[]{"zzd", "zze", h4.f4199l, "zzf", "zzg", h4.A, "zzh", "zzi", p4.class, "zzj", p4.class, "zzk"});
        }
        if (i10 == 3) {
            return new r2();
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
