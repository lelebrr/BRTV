package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q5 extends c7 {
    private static final q5 zzb;
    private int zzd;
    private int zze;
    private int zzf;
    private g7 zzg;
    private g7 zzh;
    private int zzi;
    private e7 zzj;
    private boolean zzk;
    private boolean zzl;

    static {
        q5 q5Var = new q5();
        zzb = q5Var;
        c7.e(q5.class, q5Var);
    }

    public q5() {
        t7 t7Var = t7.f4421e;
        this.zzg = t7Var;
        this.zzh = t7Var;
        this.zzj = d7.f4135e;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            k2 k2Var = k2.f4279e;
            return new u7(zzb, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0003\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003\u001b\u0004\u001b\u0005᠌\u0002\u0006ࠬ\u0007ဇ\u0003\bဇ\u0004", new Object[]{"zzd", "zze", k2Var, "zzf", k2.f, "zzg", u3.class, "zzh", u3.class, "zzi", h4.A, "zzj", k2Var, "zzk", "zzl"});
        }
        if (i10 == 3) {
            return new q5();
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
