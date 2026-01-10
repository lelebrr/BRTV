package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u3 extends c7 {
    private static final u3 zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";

    static {
        u3 u3Var = new u3();
        zzb = u3Var;
        c7.e(u3.class, u3Var);
    }

    public static t3 l() {
        return (t3) zzb.j();
    }

    public static /* synthetic */ void m(u3 u3Var, String str) {
        str.getClass();
        u3Var.zzd |= 1;
        u3Var.zze = str;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i10 == 3) {
            return new u3();
        }
        if (i10 == 4) {
            return new t3(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
