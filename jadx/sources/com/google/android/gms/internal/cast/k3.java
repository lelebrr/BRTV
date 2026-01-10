package com.google.android.gms.internal.cast;

import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k3 extends c7 {
    private static final k3 zzb;
    private int zzd;
    private u3 zze;
    private long zzf;
    private int zzg;
    private g7 zzh;
    private g7 zzi;
    private g7 zzj;
    private g7 zzk;
    private g7 zzl;
    private int zzm;

    static {
        k3 k3Var = new k3();
        zzb = k3Var;
        c7.e(k3.class, k3Var);
    }

    public k3() {
        t7 t7Var = t7.f4421e;
        this.zzh = t7Var;
        this.zzi = t7Var;
        this.zzj = t7Var;
        this.zzk = t7Var;
        this.zzl = t7Var;
    }

    public static j3 l() {
        return (j3) zzb.j();
    }

    public static void m(k3 k3Var, ArrayList arrayList) {
        g7 g7Var = k3Var.zzh;
        if (!((s6) g7Var).f4411a) {
            int size = g7Var.size();
            k3Var.zzh = g7Var.a(size + size);
        }
        r6.b(arrayList, k3Var.zzh);
    }

    public static void n(k3 k3Var, ArrayList arrayList) {
        g7 g7Var = k3Var.zzi;
        if (!((s6) g7Var).f4411a) {
            int size = g7Var.size();
            k3Var.zzi = g7Var.a(size + size);
        }
        r6.b(arrayList, k3Var.zzi);
    }

    public static void o(k3 k3Var, ArrayList arrayList) {
        g7 g7Var = k3Var.zzl;
        if (!((s6) g7Var).f4411a) {
            int size = g7Var.size();
            k3Var.zzl = g7Var.a(size + size);
        }
        r6.b(arrayList, k3Var.zzl);
    }

    public static void p(k3 k3Var, ArrayList arrayList) {
        g7 g7Var = k3Var.zzj;
        if (!((s6) g7Var).f4411a) {
            int size = g7Var.size();
            k3Var.zzj = g7Var.a(size + size);
        }
        r6.b(arrayList, k3Var.zzj);
    }

    public static void q(k3 k3Var, ArrayList arrayList) {
        g7 g7Var = k3Var.zzk;
        if (!((s6) g7Var).f4411a) {
            int size = g7Var.size();
            k3Var.zzk = g7Var.a(size + size);
        }
        r6.b(arrayList, k3Var.zzk);
    }

    public static /* synthetic */ void r(k3 k3Var, u3 u3Var) {
        k3Var.zze = u3Var;
        k3Var.zzd |= 1;
    }

    public static /* synthetic */ void s(k3 k3Var, int i6) {
        k3Var.zzd |= 8;
        k3Var.zzm = i6;
    }

    public static /* synthetic */ void t(k3 k3Var, long j10) {
        k3Var.zzd |= 2;
        k3Var.zzf = j10;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0005\u0000\u0001ဉ\u0000\u0002စ\u0001\u0003᠌\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007\u001b\b\u001b\tင\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", k2.f4277b, "zzh", i3.class, "zzi", e3.class, "zzj", n3.class, "zzk", m3.class, "zzl", g3.class, "zzm"});
        }
        if (i10 == 3) {
            return new k3();
        }
        if (i10 == 4) {
            return new j3(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
