package com.google.android.gms.internal.cast;

import androidx.media3.common.C;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c3 extends c7 {
    private static final c3 zzb;
    private g7 zzA;
    private g7 zzB;
    private g7 zzC;
    private c5 zzD;
    private int zzE;
    private int zzF;
    private u3 zzG;
    private int zzH;
    private a3 zzI;
    private g7 zzJ;
    private u3 zzK;
    private int zzL;
    private int zzM;
    private int zzN;
    private int zzO;
    private int zzP;
    private int zzQ;
    private q5 zzR;
    private w2 zzS;
    private k3 zzT;
    private n2 zzU;
    private f4 zzV;
    private b5 zzW;
    private k4 zzX;
    private g7 zzY;
    private j4 zzZ;
    private int zzaa;
    private o4 zzab;
    private g7 zzac;
    private boolean zzad;
    private boolean zzae;
    private int zzaf;
    private p2 zzag;
    private s4 zzah;
    private c4 zzai;
    private p3 zzaj;
    private n4 zzak;
    private h5 zzal;
    private q3 zzam;
    private int zzan;
    private int zzao;
    private int zzap;
    private g7 zzaq;
    private t5 zzar;
    private i5 zzas;
    private g5 zzat;
    private y2 zzau;
    private l5 zzav;
    private z4 zzaw;
    private i4 zzax;
    private int zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private a4 zzi;
    private r4 zzj;
    private z3 zzk;
    private x3 zzl;
    private z2 zzm;
    private q4 zzn;
    private r2 zzo;
    private o5 zzp;
    private w3 zzr;
    private f2 zzs;
    private int zzv;
    private m4 zzw;
    private g7 zzz;
    private byte zzay = 2;
    private String zzq = "";
    private String zzt = "";
    private String zzu = "";
    private String zzx = "";
    private e7 zzy = d7.f4135e;

    static {
        c3 c3Var = new c3();
        zzb = c3Var;
        c7.e(c3.class, c3Var);
    }

    public c3() {
        t7 t7Var = t7.f4421e;
        this.zzz = t7Var;
        this.zzA = t7Var;
        this.zzB = t7Var;
        this.zzC = t7Var;
        this.zzJ = t7Var;
        this.zzY = t7Var;
        this.zzac = t7Var;
        this.zzaq = t7Var;
    }

    public static b3 m() {
        return (b3) zzb.j();
    }

    public static b3 n(c3 c3Var) {
        b7 b7VarJ = zzb.j();
        c7 c7Var = b7VarJ.f4116a;
        if (!c7Var.equals(c3Var)) {
            if (!b7VarJ.f4117b.g()) {
                c7 c7Var2 = (c7) c7Var.h(4, null);
                s7.f4412c.a(c7Var2.getClass()).g(c7Var2, b7VarJ.f4117b);
                b7VarJ.f4117b = c7Var2;
            }
            c7 c7Var3 = b7VarJ.f4117b;
            s7.f4412c.a(c7Var3.getClass()).g(c7Var3, c3Var);
        }
        return (b3) b7VarJ;
    }

    public static void o(c3 c3Var, t2 t2Var) {
        g7 g7Var = c3Var.zzY;
        if (!((s6) g7Var).f4411a) {
            int size = g7Var.size();
            c3Var.zzY = g7Var.a(size + size);
        }
        c3Var.zzY.add(t2Var);
    }

    public static /* synthetic */ void p(c3 c3Var, p2 p2Var) {
        c3Var.zzag = p2Var;
        c3Var.zze |= 8192;
    }

    public static /* synthetic */ void q(c3 c3Var, w2 w2Var) {
        c3Var.zzS = w2Var;
        c3Var.zze |= 2;
    }

    public static /* synthetic */ void r(c3 c3Var, String str) {
        str.getClass();
        c3Var.zzd |= 32768;
        c3Var.zzu = str;
    }

    public static /* synthetic */ void s(c3 c3Var, String str) {
        str.getClass();
        c3Var.zzd |= 2048;
        c3Var.zzq = str;
    }

    public static /* synthetic */ void t(c3 c3Var, int i6) {
        c3Var.zzd |= Integer.MIN_VALUE;
        c3Var.zzQ = i6;
    }

    public static /* synthetic */ void u(c3 c3Var, int i6) {
        c3Var.zzd |= C.DEFAULT_BUFFER_SEGMENT_SIZE;
        c3Var.zzv = i6;
    }

    public static /* synthetic */ void v(c3 c3Var, g5 g5Var) {
        c3Var.zzat = g5Var;
        c3Var.zze |= 33554432;
    }

    public static /* synthetic */ void w(c3 c3Var, String str) {
        c3Var.zzd |= 262144;
        c3Var.zzx = str;
    }

    public static /* synthetic */ void x(c3 c3Var, String str) {
        str.getClass();
        c3Var.zzd |= 16384;
        c3Var.zzt = str;
    }

    public static /* synthetic */ void y(c3 c3Var, k3 k3Var) {
        c3Var.zzT = k3Var;
        c3Var.zze |= 4;
    }

    public static /* synthetic */ void z(c3 c3Var, long j10) {
        c3Var.zzd |= 2;
        c3Var.zzg = j10;
    }

    @Override // com.google.android.gms.internal.cast.c7
    public final Object h(int i6, c7 c7Var) {
        int i10 = i6 - 1;
        if (i10 == 0) {
            return Byte.valueOf(this.zzay);
        }
        if (i10 == 2) {
            return new u7(zzb, "\u0001G\u0000\u0002\u0001GG\u0000\t\u0001\u0001ဂ\u0000\u0002ဂ\u0001\u0003᠌\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဉ\u0007\tဈ\u000e\nဉ\b\u000bဉ\t\fဉ\n\rဈ\u000b\u000eဉ\f\u000fဉ\r\u0010ဉ\u0011\u0011ဈ\u0012\u0012\u0016\u0013\u001b\u0014\u001b\u0015\u001b\u0016\u001b\u0017᠌\u0014\u0018ဉ\u0018\u0019\u001b\u001aဉ\u0019\u001b᠌\u001b\u001cင\u001c\u001dင\u001d\u001eင\u001e\u001fဆ\u001f ဉ !ဉ!\"ဉ##᠌\u0015$ဉ\u0016%ᐉ$&ဉ%'ဉ&(\u001b)᠌(*ဉ)+\u001b,᠌\u001a-ဇ*.ဇ+/᠌,0ဉ-1င\u00172ဉ.3ဉ/4ဉ15ဉ26ဉ37᠌48᠌59᠌6:\u001b;ဈ\u000f<ဉ7=ဉ0>ဉ\u0013?ဉ\"@င\u0010Aဉ8Bဉ'Cဉ9Dဉ:Eဉ;Fဉ<Gဉ=", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", i2.D, "zzi", "zzj", "zzk", "zzl", "zzm", "zzt", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzw", "zzx", "zzy", "zzz", b4.class, "zzA", d4.class, "zzB", r3.class, "zzC", d5.class, "zzE", i2.f4241v, "zzI", "zzJ", u3.class, "zzK", "zzM", i2.f4224c, "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzU", "zzF", i2.f4239t, "zzG", "zzV", "zzW", "zzX", "zzY", t2.class, "zzaa", i2.f4240u, "zzab", "zzac", x2.class, "zzL", i2.f4223b, "zzad", "zzae", "zzaf", h4.D, "zzag", "zzH", "zzah", "zzai", "zzak", "zzal", "zzam", "zzan", h4.f4207t, "zzao", i2.f4232m, "zzap", h4.f4206s, "zzaq", m5.class, "zzu", "zzar", "zzaj", "zzD", "zzT", "zzv", "zzas", "zzZ", "zzat", "zzau", "zzav", "zzaw", "zzax"});
        }
        if (i10 == 3) {
            return new c3();
        }
        if (i10 == 4) {
            return new b3(zzb);
        }
        if (i10 == 5) {
            return zzb;
        }
        this.zzay = c7Var == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final w2 l() {
        w2 w2Var = this.zzS;
        return w2Var == null ? w2.n() : w2Var;
    }
}
