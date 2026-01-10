package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class t2 extends c7 {
    private static final t2 zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";

    static {
        t2 t2Var = new t2();
        zzb = t2Var;
        c7.e(t2.class, t2Var);
    }

    public static s2 l() {
        return (s2) zzb.j();
    }

    public static /* synthetic */ void m(t2 t2Var, String str) {
        str.getClass();
        t2Var.zzd |= 1;
        t2Var.zze = str;
    }

    public static /* synthetic */ void n(t2 t2Var, String str) {
        str.getClass();
        t2Var.zzd |= 2;
        t2Var.zzf = str;
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
            return new t2();
        }
        if (i10 == 4) {
            return new s2(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
