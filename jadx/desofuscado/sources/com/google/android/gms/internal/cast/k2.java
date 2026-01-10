package com.google.android.gms.internal.cast;

import android.os.Parcel;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k2 implements n7, p0, z4.k, j1 {

    /* renamed from: b, reason: collision with root package name */
    public static final k2 f4277b = new k2(0);

    /* renamed from: c, reason: collision with root package name */
    public static final k2 f4278c = new k2(1);
    public static final k2 d = new k2(2);

    /* renamed from: e, reason: collision with root package name */
    public static final k2 f4279e = new k2(3);
    public static final k2 f = new k2(4);

    /* renamed from: g, reason: collision with root package name */
    public static final k2 f4280g = new k2(5);

    /* renamed from: h, reason: collision with root package name */
    public static final k2 f4281h = new k2(6);

    /* renamed from: i, reason: collision with root package name */
    public static final k2 f4282i = new k2(7);

    /* renamed from: j, reason: collision with root package name */
    public static final k2 f4283j = new k2(8);

    /* renamed from: k, reason: collision with root package name */
    public static final k2 f4284k = new k2(9);

    /* renamed from: l, reason: collision with root package name */
    public static final k2 f4285l = new k2(10);

    /* renamed from: m, reason: collision with root package name */
    public static final k2 f4286m = new k2(11);

    /* renamed from: n, reason: collision with root package name */
    public static final k2 f4287n = new k2(12);

    /* renamed from: o, reason: collision with root package name */
    public static final k2 f4288o = new k2(13);

    /* renamed from: p, reason: collision with root package name */
    public static final k2 f4289p = new k2(14);

    /* renamed from: q, reason: collision with root package name */
    public static final k2 f4290q = new k2(16);

    /* renamed from: r, reason: collision with root package name */
    public static final k2 f4291r = new k2(17);

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4292a;

    public /* synthetic */ k2(int i6) {
        this.f4292a = i6;
    }

    public static void d(Object obj) {
        y7 y7Var = ((c7) obj).zzc;
        if (y7Var.d) {
            y7Var.d = false;
        }
    }

    @Override // com.google.android.gms.internal.cast.p0
    /* renamed from: a, reason: collision with other method in class */
    public void mo2a() {
    }

    @Override // com.google.android.gms.internal.cast.n7
    public u7 b(Class cls) {
        switch (this.f4292a) {
            case 14:
                if (!c7.class.isAssignableFrom(cls)) {
                    throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
                }
                try {
                    return (u7) c7.k(cls.asSubclass(c7.class)).h(3, null);
                } catch (Exception e5) {
                    throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e5);
                }
            default:
                throw new IllegalStateException("This should never be called.");
        }
    }

    @Override // com.google.android.gms.internal.cast.n7
    public boolean c(Class cls) {
        switch (this.f4292a) {
            case 14:
                return c7.class.isAssignableFrom(cls);
            default:
                return false;
        }
    }

    @Override // z4.k
    public void r(Object obj, Object obj2) {
        a1 a1Var = new a1((w5.d) obj2);
        g1 g1Var = (g1) ((i1) obj).p();
        Parcel parcelL = g1Var.l();
        d0.d(parcelL, a1Var);
        g1Var.x(parcelL, 2);
    }

    public /* synthetic */ k2(b1 b1Var) {
        this.f4292a = 20;
    }

    @Override // com.google.android.gms.internal.cast.j1
    public Object a() {
        switch (this.f4292a) {
            case 21:
                throw new IllegalStateException();
            default:
                v4.b bVar = x7.f4467v;
                v4.b bVar2 = q4.a.f9200j;
                b5.l.b("Must be called from the main thread.");
                q4.a aVar = q4.a.f9202l;
                b5.l.e(aVar);
                b5.l.b("Must be called from the main thread.");
                return aVar.d.f3790a;
        }
    }
}
