package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s4 extends c7 {
    private static final s4 zzb;
    private int zzd;
    private g7 zze;
    private g7 zzf;
    private e5 zzg;

    static {
        s4 s4Var = new s4();
        zzb = s4Var;
        c7.e(s4.class, s4Var);
    }

    public s4() {
        t7 t7Var = t7.f4421e;
        this.zze = t7Var;
        this.zzf = t7Var;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0002\u0000\u0001\u001b\u0002\u001b\u0003ဉ\u0000", new Object[]{"zzd", "zze", n5.class, "zzf", s3.class, "zzg"});
        }
        if (i10 == 3) {
            return new s4();
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
