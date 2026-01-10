package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d5 extends c7 {
    private static final d5 zzb;
    private int zzd;
    private String zze = "";
    private g7 zzf;
    private g7 zzg;
    private boolean zzh;

    static {
        d5 d5Var = new d5();
        zzb = d5Var;
        c7.e(d5.class, d5Var);
    }

    public d5() {
        t7 t7Var = t7.f4421e;
        this.zzf = t7Var;
        this.zzg = t7Var;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဈ\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001", new Object[]{"zzd", "zze", "zzf", b4.class, "zzg", u3.class, "zzh"});
        }
        if (i10 == 3) {
            return new d5();
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
