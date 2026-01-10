package com.google.android.gms.internal.cast;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.RandomAccess;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p2 extends c7 {
    private static final p2 zzb;
    private int zzd;
    private t2 zze;
    private j4 zzf;
    private g7 zzg = t7.f4421e;
    private e7 zzh = d7.f4135e;

    static {
        p2 p2Var = new p2();
        zzb = p2Var;
        c7.e(p2.class, p2Var);
    }

    public static o2 l() {
        return (o2) zzb.j();
    }

    public static void m(p2 p2Var, ArrayList arrayList) {
        RandomAccess randomAccess = p2Var.zzh;
        if (!((s6) randomAccess).f4411a) {
            d7 d7Var = (d7) randomAccess;
            int i6 = d7Var.f4137c;
            p2Var.zzh = d7Var.a(i6 + i6);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            m2 m2Var = (m2) it.next();
            ((d7) p2Var.zzh).g(m2Var.f4352a);
        }
    }

    public static /* synthetic */ void n(p2 p2Var, t2 t2Var) {
        p2Var.zze = t2Var;
        p2Var.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return (byte) 1;
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0002\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003\u001b\u0004ࠞ", new Object[]{"zzd", "zze", "zzf", "zzg", e4.class, "zzh", k2.f4282i});
        }
        if (i10 == 3) {
            return new p2();
        }
        if (i10 == 4) {
            return new o2(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        throw null;
    }
}
