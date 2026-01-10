package com.tencent.bugly.crashreport.biz;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.proguard.ap;
import java.util.Map;
import x4.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class UserInfoBean implements Parcelable {
    public static final Parcelable.Creator<UserInfoBean> CREATOR = new m(1);

    /* renamed from: a, reason: collision with root package name */
    public long f5478a;

    /* renamed from: b, reason: collision with root package name */
    public int f5479b;

    /* renamed from: c, reason: collision with root package name */
    public String f5480c;
    public String d;

    /* renamed from: e, reason: collision with root package name */
    public long f5481e;
    public long f;

    /* renamed from: g, reason: collision with root package name */
    public long f5482g;

    /* renamed from: h, reason: collision with root package name */
    public long f5483h;

    /* renamed from: i, reason: collision with root package name */
    public long f5484i;

    /* renamed from: j, reason: collision with root package name */
    public String f5485j;

    /* renamed from: k, reason: collision with root package name */
    public long f5486k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5487l;

    /* renamed from: m, reason: collision with root package name */
    public String f5488m;

    /* renamed from: n, reason: collision with root package name */
    public String f5489n;

    /* renamed from: o, reason: collision with root package name */
    public int f5490o;

    /* renamed from: p, reason: collision with root package name */
    public int f5491p;

    /* renamed from: q, reason: collision with root package name */
    public int f5492q;

    /* renamed from: r, reason: collision with root package name */
    public Map<String, String> f5493r;

    /* renamed from: s, reason: collision with root package name */
    public Map<String, String> f5494s;

    public UserInfoBean() {
        this.f5486k = 0L;
        this.f5487l = false;
        this.f5488m = "unknown";
        this.f5491p = -1;
        this.f5492q = -1;
        this.f5493r = null;
        this.f5494s = null;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f5479b);
        parcel.writeString(this.f5480c);
        parcel.writeString(this.d);
        parcel.writeLong(this.f5481e);
        parcel.writeLong(this.f);
        parcel.writeLong(this.f5482g);
        parcel.writeLong(this.f5483h);
        parcel.writeLong(this.f5484i);
        parcel.writeString(this.f5485j);
        parcel.writeLong(this.f5486k);
        parcel.writeByte(this.f5487l ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f5488m);
        parcel.writeInt(this.f5491p);
        parcel.writeInt(this.f5492q);
        ap.b(parcel, this.f5493r);
        ap.b(parcel, this.f5494s);
        parcel.writeString(this.f5489n);
        parcel.writeInt(this.f5490o);
    }

    public UserInfoBean(Parcel parcel) {
        this.f5486k = 0L;
        this.f5487l = false;
        this.f5488m = "unknown";
        this.f5491p = -1;
        this.f5492q = -1;
        this.f5493r = null;
        this.f5494s = null;
        this.f5479b = parcel.readInt();
        this.f5480c = parcel.readString();
        this.d = parcel.readString();
        this.f5481e = parcel.readLong();
        this.f = parcel.readLong();
        this.f5482g = parcel.readLong();
        this.f5483h = parcel.readLong();
        this.f5484i = parcel.readLong();
        this.f5485j = parcel.readString();
        this.f5486k = parcel.readLong();
        this.f5487l = parcel.readByte() == 1;
        this.f5488m = parcel.readString();
        this.f5491p = parcel.readInt();
        this.f5492q = parcel.readInt();
        this.f5493r = ap.b(parcel);
        this.f5494s = ap.b(parcel);
        this.f5489n = parcel.readString();
        this.f5490o = parcel.readInt();
    }
}
