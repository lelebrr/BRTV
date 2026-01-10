package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m4 extends c7 {
    private static final m4 zzb;
    private int zzd;
    private long zze;
    private f7 zzf;
    private f7 zzg;

    static {
        m4 m4Var = new m4();
        zzb = m4Var;
        c7.e(m4.class, m4Var);
    }

    public m4() {
        k7 k7Var = k7.f4293e;
        this.zzf = k7Var;
        this.zzg = k7Var;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001စ\u0000\u0002\u0017\u0003\u0017", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i10 == 3) {
            return new m4();
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
