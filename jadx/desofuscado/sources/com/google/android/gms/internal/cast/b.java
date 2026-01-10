package com.google.android.gms.internal.cast;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends c7 {
    private static final b zzb;
    private int zzd;
    private double zze;
    private int zzf;
    private int zzg;

    static {
        b bVar = new b();
        zzb = bVar;
        c7.e(b.class, bVar);
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001က\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzd", "zze", "zzf", h4.f4192c, "zzg", h4.f4191b});
        }
        if (i10 == 3) {
            return new b();
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
