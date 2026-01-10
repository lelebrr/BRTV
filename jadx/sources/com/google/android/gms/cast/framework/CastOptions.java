package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import o9.d;
import p4.p;
import r4.c;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CastOptions extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CastOptions> CREATOR;

    /* renamed from: s, reason: collision with root package name */
    public static final zzj f3787s = new zzj(false);

    /* renamed from: t, reason: collision with root package name */
    public static final zzl f3788t = new zzl(0);

    /* renamed from: u, reason: collision with root package name */
    public static final CastMediaOptions f3789u;

    /* renamed from: a, reason: collision with root package name */
    public final String f3790a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f3791b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3792c;
    public final LaunchOptions d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f3793e;
    public final CastMediaOptions f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f3794g;

    /* renamed from: h, reason: collision with root package name */
    public final double f3795h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f3796i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f3797j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f3798k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f3799l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f3800m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f3801n;

    /* renamed from: o, reason: collision with root package name */
    public final zzj f3802o;

    /* renamed from: p, reason: collision with root package name */
    public zzl f3803p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f3804q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f3805r;

    static {
        new c().a();
        f3789u = new CastMediaOptions("com.google.android.gms.cast.framework.media.MediaIntentReceiver", null, null, null, false, false);
        CREATOR = new p(6);
    }

    public CastOptions(String str, ArrayList arrayList, boolean z7, LaunchOptions launchOptions, boolean z10, CastMediaOptions castMediaOptions, boolean z11, double d, boolean z12, boolean z13, boolean z14, ArrayList arrayList2, boolean z15, boolean z16, zzj zzjVar, zzl zzlVar, boolean z17, boolean z18) {
        this.f3790a = true == TextUtils.isEmpty(str) ? "" : str;
        int size = arrayList == null ? 0 : arrayList.size();
        ArrayList arrayList3 = new ArrayList(size);
        this.f3791b = arrayList3;
        if (size > 0) {
            arrayList3.addAll(arrayList);
        }
        this.f3792c = z7;
        this.d = launchOptions == null ? new LaunchOptions() : launchOptions;
        this.f3793e = z10;
        this.f = castMediaOptions;
        this.f3794g = z11;
        this.f3795h = d;
        this.f3796i = z12;
        this.f3797j = z13;
        this.f3798k = z14;
        this.f3799l = arrayList2;
        this.f3800m = z15;
        this.f3801n = z16;
        this.f3802o = zzjVar;
        this.f3803p = zzlVar;
        this.f3804q = z17;
        this.f3805r = z18;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.R(parcel, 2, this.f3790a);
        d.S(parcel, 3, Collections.unmodifiableList(this.f3791b));
        d.X(parcel, 4, 4);
        parcel.writeInt(this.f3792c ? 1 : 0);
        d.Q(parcel, 5, this.d, i6);
        d.X(parcel, 6, 4);
        parcel.writeInt(this.f3793e ? 1 : 0);
        d.Q(parcel, 7, this.f, i6);
        d.X(parcel, 8, 4);
        parcel.writeInt(this.f3794g ? 1 : 0);
        d.X(parcel, 9, 8);
        parcel.writeDouble(this.f3795h);
        d.X(parcel, 10, 4);
        parcel.writeInt(this.f3796i ? 1 : 0);
        d.X(parcel, 11, 4);
        parcel.writeInt(this.f3797j ? 1 : 0);
        d.X(parcel, 12, 4);
        parcel.writeInt(this.f3798k ? 1 : 0);
        d.S(parcel, 13, Collections.unmodifiableList(this.f3799l));
        d.X(parcel, 14, 4);
        parcel.writeInt(this.f3800m ? 1 : 0);
        d.X(parcel, 15, 4);
        parcel.writeInt(0);
        d.X(parcel, 16, 4);
        parcel.writeInt(this.f3801n ? 1 : 0);
        d.Q(parcel, 17, this.f3802o, i6);
        d.Q(parcel, 18, this.f3803p, i6);
        d.X(parcel, 19, 4);
        parcel.writeInt(this.f3804q ? 1 : 0);
        d.X(parcel, 20, 4);
        parcel.writeInt(this.f3805r ? 1 : 0);
        d.W(parcel, iV);
    }
}
