package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import j5.b;
import java.util.ArrayList;
import o9.d;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new b();

    /* renamed from: a, reason: collision with root package name */
    public final int f4071a;

    /* renamed from: b, reason: collision with root package name */
    public final long f4072b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4073c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4074e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4075g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f4076h;

    /* renamed from: i, reason: collision with root package name */
    public final String f4077i;

    /* renamed from: j, reason: collision with root package name */
    public final long f4078j;

    /* renamed from: k, reason: collision with root package name */
    public final int f4079k;

    /* renamed from: l, reason: collision with root package name */
    public final String f4080l;

    /* renamed from: m, reason: collision with root package name */
    public final float f4081m;

    /* renamed from: n, reason: collision with root package name */
    public final long f4082n;

    /* renamed from: o, reason: collision with root package name */
    public final boolean f4083o;

    public WakeLockEvent(int i6, long j10, int i10, String str, int i11, ArrayList arrayList, String str2, long j11, int i12, String str3, String str4, float f, long j12, String str5, boolean z7) {
        this.f4071a = i6;
        this.f4072b = j10;
        this.f4073c = i10;
        this.d = str;
        this.f4074e = str3;
        this.f = str5;
        this.f4075g = i11;
        this.f4076h = arrayList;
        this.f4077i = str2;
        this.f4078j = j11;
        this.f4079k = i12;
        this.f4080l = str4;
        this.f4081m = f;
        this.f4082n = j12;
        this.f4083o = z7;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int j() {
        return this.f4073c;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long l() {
        return this.f4072b;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String m() {
        ArrayList arrayList = this.f4076h;
        String strJoin = arrayList == null ? "" : TextUtils.join(",", arrayList);
        StringBuilder sb = new StringBuilder("\t");
        sb.append(this.d);
        sb.append("\t");
        sb.append(this.f4075g);
        sb.append("\t");
        sb.append(strJoin);
        sb.append("\t");
        sb.append(this.f4079k);
        sb.append("\t");
        String str = this.f4074e;
        if (str == null) {
            str = "";
        }
        sb.append(str);
        sb.append("\t");
        String str2 = this.f4080l;
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str2);
        sb.append("\t");
        sb.append(this.f4081m);
        sb.append("\t");
        String str3 = this.f;
        sb.append(str3 != null ? str3 : "");
        sb.append("\t");
        sb.append(this.f4083o);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        int iV = d.V(parcel, 20293);
        d.X(parcel, 1, 4);
        parcel.writeInt(this.f4071a);
        d.X(parcel, 2, 8);
        parcel.writeLong(this.f4072b);
        d.R(parcel, 4, this.d);
        d.X(parcel, 5, 4);
        parcel.writeInt(this.f4075g);
        d.S(parcel, 6, this.f4076h);
        d.X(parcel, 8, 8);
        parcel.writeLong(this.f4078j);
        d.R(parcel, 10, this.f4074e);
        d.X(parcel, 11, 4);
        parcel.writeInt(this.f4073c);
        d.R(parcel, 12, this.f4077i);
        d.R(parcel, 13, this.f4080l);
        d.X(parcel, 14, 4);
        parcel.writeInt(this.f4079k);
        d.X(parcel, 15, 4);
        parcel.writeFloat(this.f4081m);
        d.X(parcel, 16, 8);
        parcel.writeLong(this.f4082n);
        d.R(parcel, 17, this.f);
        d.X(parcel, 18, 4);
        parcel.writeInt(this.f4083o ? 1 : 0);
        d.W(parcel, iV);
    }
}
