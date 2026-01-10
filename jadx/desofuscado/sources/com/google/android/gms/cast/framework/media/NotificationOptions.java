package com.google.android.gms.cast.framework.media;

import a.e;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.internal.cast.o1;
import com.google.android.gms.internal.cast.q1;
import com.google.android.gms.internal.cast.u1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import o9.d;
import p4.p;
import r4.t;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NotificationOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<NotificationOptions> CREATOR;
    public static final u1 I;
    public static final int[] J;
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    public final t F;
    public final boolean G;
    public final boolean H;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3825a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f3826b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3827c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final int f3828e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f3829g;

    /* renamed from: h, reason: collision with root package name */
    public final int f3830h;

    /* renamed from: i, reason: collision with root package name */
    public final int f3831i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3832j;

    /* renamed from: k, reason: collision with root package name */
    public final int f3833k;

    /* renamed from: l, reason: collision with root package name */
    public final int f3834l;

    /* renamed from: m, reason: collision with root package name */
    public final int f3835m;

    /* renamed from: n, reason: collision with root package name */
    public final int f3836n;

    /* renamed from: o, reason: collision with root package name */
    public final int f3837o;

    /* renamed from: p, reason: collision with root package name */
    public final int f3838p;

    /* renamed from: q, reason: collision with root package name */
    public final int f3839q;

    /* renamed from: r, reason: collision with root package name */
    public final int f3840r;

    /* renamed from: s, reason: collision with root package name */
    public final int f3841s;

    /* renamed from: t, reason: collision with root package name */
    public final int f3842t;

    /* renamed from: u, reason: collision with root package name */
    public final int f3843u;

    /* renamed from: v, reason: collision with root package name */
    public final int f3844v;

    /* renamed from: w, reason: collision with root package name */
    public final int f3845w;

    /* renamed from: x, reason: collision with root package name */
    public final int f3846x;

    /* renamed from: y, reason: collision with root package name */
    public final int f3847y;

    /* renamed from: z, reason: collision with root package name */
    public final int f3848z;

    static {
        o1 o1Var = q1.f4388b;
        Object[] objArr = {MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_STOP_CASTING};
        for (int i6 = 0; i6 < 2; i6++) {
            if (objArr[i6] == null) {
                throw new NullPointerException(e.n(i6, "at index "));
            }
        }
        I = q1.h(objArr, 2);
        J = new int[]{0, 1};
        CREATOR = new p(10);
    }

    public NotificationOptions(List list, int[] iArr, long j10, String str, int i6, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, int i28, int i29, int i30, int i31, int i32, int i33, int i34, int i35, IBinder iBinder, boolean z7, boolean z10) {
        t tVar;
        this.f3825a = new ArrayList(list);
        this.f3826b = Arrays.copyOf(iArr, iArr.length);
        this.f3827c = j10;
        this.d = str;
        this.f3828e = i6;
        this.f = i10;
        this.f3829g = i11;
        this.f3830h = i12;
        this.f3831i = i13;
        this.f3832j = i14;
        this.f3833k = i15;
        this.f3834l = i16;
        this.f3835m = i17;
        this.f3836n = i18;
        this.f3837o = i19;
        this.f3838p = i20;
        this.f3839q = i21;
        this.f3840r = i22;
        this.f3841s = i23;
        this.f3842t = i24;
        this.f3843u = i25;
        this.f3844v = i26;
        this.f3845w = i27;
        this.f3846x = i28;
        this.f3847y = i29;
        this.f3848z = i30;
        this.A = i31;
        this.B = i32;
        this.C = i33;
        this.D = i34;
        this.E = i35;
        this.G = z7;
        this.H = z10;
        if (iBinder == null) {
            tVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
            tVar = iInterfaceQueryLocalInterface instanceof t ? (t) iInterfaceQueryLocalInterface : new t(iBinder, "com.google.android.gms.cast.framework.media.INotificationActionsProvider", 0);
        }
        this.F = tVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.S(parcel, 2, this.f3825a);
        int[] iArr = this.f3826b;
        d.O(parcel, 3, Arrays.copyOf(iArr, iArr.length));
        d.X(parcel, 4, 8);
        parcel.writeLong(this.f3827c);
        d.R(parcel, 5, this.d);
        d.X(parcel, 6, 4);
        parcel.writeInt(this.f3828e);
        d.X(parcel, 7, 4);
        parcel.writeInt(this.f);
        d.X(parcel, 8, 4);
        parcel.writeInt(this.f3829g);
        d.X(parcel, 9, 4);
        parcel.writeInt(this.f3830h);
        d.X(parcel, 10, 4);
        parcel.writeInt(this.f3831i);
        d.X(parcel, 11, 4);
        parcel.writeInt(this.f3832j);
        d.X(parcel, 12, 4);
        parcel.writeInt(this.f3833k);
        d.X(parcel, 13, 4);
        parcel.writeInt(this.f3834l);
        d.X(parcel, 14, 4);
        parcel.writeInt(this.f3835m);
        d.X(parcel, 15, 4);
        parcel.writeInt(this.f3836n);
        d.X(parcel, 16, 4);
        parcel.writeInt(this.f3837o);
        d.X(parcel, 17, 4);
        parcel.writeInt(this.f3838p);
        d.X(parcel, 18, 4);
        parcel.writeInt(this.f3839q);
        d.X(parcel, 19, 4);
        parcel.writeInt(this.f3840r);
        d.X(parcel, 20, 4);
        parcel.writeInt(this.f3841s);
        d.X(parcel, 21, 4);
        parcel.writeInt(this.f3842t);
        d.X(parcel, 22, 4);
        parcel.writeInt(this.f3843u);
        d.X(parcel, 23, 4);
        parcel.writeInt(this.f3844v);
        d.X(parcel, 24, 4);
        parcel.writeInt(this.f3845w);
        d.X(parcel, 25, 4);
        parcel.writeInt(this.f3846x);
        d.X(parcel, 26, 4);
        parcel.writeInt(this.f3847y);
        d.X(parcel, 27, 4);
        parcel.writeInt(this.f3848z);
        d.X(parcel, 28, 4);
        parcel.writeInt(this.A);
        d.X(parcel, 29, 4);
        parcel.writeInt(this.B);
        d.X(parcel, 30, 4);
        parcel.writeInt(this.C);
        d.X(parcel, 31, 4);
        parcel.writeInt(this.D);
        d.X(parcel, 32, 4);
        parcel.writeInt(this.E);
        t tVar = this.F;
        d.N(parcel, 33, tVar == null ? null : tVar.d);
        d.X(parcel, 34, 4);
        parcel.writeInt(this.G ? 1 : 0);
        d.X(parcel, 35, 4);
        parcel.writeInt(this.H ? 1 : 0);
        d.W(parcel, iV);
    }
}
