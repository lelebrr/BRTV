package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends c7 {
    private static final d zzb;
    private g7 zzd;
    private g7 zze;
    private g7 zzf;
    private g7 zzg;

    static {
        d dVar = new d();
        zzb = dVar;
        c7.e(d.class, dVar);
    }

    public d() {
        t7 t7Var = t7.f4421e;
        this.zzd = t7Var;
        this.zze = t7Var;
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
            return new u7(zzb, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004\u001b", new Object[]{"zzd", b.class, "zze", g8.class, "zzf", b.class, "zzg", g8.class});
        }
        if (i10 == 3) {
            return new d();
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
