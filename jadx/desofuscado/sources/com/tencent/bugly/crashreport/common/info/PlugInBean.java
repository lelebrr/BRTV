package com.tencent.bugly.crashreport.common.info;

import android.os.Parcel;
import android.os.Parcelable;
import x4.m;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class PlugInBean implements Parcelable {
    public static final Parcelable.Creator<PlugInBean> CREATOR = new m(3);

    /* renamed from: a, reason: collision with root package name */
    public final String f5495a;

    /* renamed from: b, reason: collision with root package name */
    public final String f5496b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5497c;

    public PlugInBean(String str, String str2, String str3) {
        this.f5495a = str;
        this.f5496b = str2;
        this.f5497c = str3;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "plid:" + this.f5495a + " plV:" + this.f5496b + " plUUID:" + this.f5497c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeString(this.f5495a);
        parcel.writeString(this.f5496b);
        parcel.writeString(this.f5497c);
    }

    public PlugInBean(Parcel parcel) {
        this.f5495a = parcel.readString();
        this.f5496b = parcel.readString();
        this.f5497c = parcel.readString();
    }
}
