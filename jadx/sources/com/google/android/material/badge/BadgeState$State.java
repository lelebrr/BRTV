package com.google.android.material.badge;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Locale;
import x4.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class BadgeState$State implements Parcelable {
    public static final Parcelable.Creator<BadgeState$State> CREATOR = new m(2);

    /* renamed from: a, reason: collision with root package name */
    public int f4622a;

    /* renamed from: b, reason: collision with root package name */
    public Integer f4623b;

    /* renamed from: c, reason: collision with root package name */
    public Integer f4624c;

    /* renamed from: g, reason: collision with root package name */
    public Locale f4626g;

    /* renamed from: h, reason: collision with root package name */
    public CharSequence f4627h;

    /* renamed from: i, reason: collision with root package name */
    public int f4628i;

    /* renamed from: j, reason: collision with root package name */
    public int f4629j;

    /* renamed from: k, reason: collision with root package name */
    public Integer f4630k;

    /* renamed from: m, reason: collision with root package name */
    public Integer f4632m;

    /* renamed from: n, reason: collision with root package name */
    public Integer f4633n;

    /* renamed from: o, reason: collision with root package name */
    public Integer f4634o;

    /* renamed from: p, reason: collision with root package name */
    public Integer f4635p;

    /* renamed from: q, reason: collision with root package name */
    public Integer f4636q;

    /* renamed from: r, reason: collision with root package name */
    public Integer f4637r;
    public int d = 255;

    /* renamed from: e, reason: collision with root package name */
    public int f4625e = -2;
    public int f = -2;

    /* renamed from: l, reason: collision with root package name */
    public Boolean f4631l = Boolean.TRUE;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f4622a);
        parcel.writeSerializable(this.f4623b);
        parcel.writeSerializable(this.f4624c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.f4625e);
        parcel.writeInt(this.f);
        CharSequence charSequence = this.f4627h;
        parcel.writeString(charSequence == null ? null : charSequence.toString());
        parcel.writeInt(this.f4628i);
        parcel.writeSerializable(this.f4630k);
        parcel.writeSerializable(this.f4632m);
        parcel.writeSerializable(this.f4633n);
        parcel.writeSerializable(this.f4634o);
        parcel.writeSerializable(this.f4635p);
        parcel.writeSerializable(this.f4636q);
        parcel.writeSerializable(this.f4637r);
        parcel.writeSerializable(this.f4631l);
        parcel.writeSerializable(this.f4626g);
    }
}
