package com.tencent.bugly.crashreport.common.strategy;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.exoplayer.smoothstreaming.SsMediaSource;
import com.tencent.bugly.proguard.ap;
import ea.q;
import java.util.Map;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class StrategyBean implements Parcelable {
    public static final Parcelable.Creator<StrategyBean> CREATOR = new d(4);

    /* renamed from: a, reason: collision with root package name */
    public static String f5498a = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: b, reason: collision with root package name */
    public static String f5499b = "https://android.bugly.qq.com/rqd/async";

    /* renamed from: c, reason: collision with root package name */
    public static String f5500c;
    public long d;

    /* renamed from: e, reason: collision with root package name */
    public long f5501e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f5502g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f5503h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f5504i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f5505j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f5506k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5507l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5508m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f5509n;

    /* renamed from: o, reason: collision with root package name */
    public long f5510o;

    /* renamed from: p, reason: collision with root package name */
    public long f5511p;

    /* renamed from: q, reason: collision with root package name */
    public String f5512q;

    /* renamed from: r, reason: collision with root package name */
    public String f5513r;

    /* renamed from: s, reason: collision with root package name */
    public String f5514s;

    /* renamed from: t, reason: collision with root package name */
    public Map<String, String> f5515t;

    /* renamed from: u, reason: collision with root package name */
    public int f5516u;

    /* renamed from: v, reason: collision with root package name */
    public long f5517v;

    /* renamed from: w, reason: collision with root package name */
    public long f5518w;

    public StrategyBean() {
        this.d = -1L;
        this.f5501e = -1L;
        this.f = true;
        this.f5502g = true;
        this.f5503h = true;
        this.f5504i = true;
        this.f5505j = false;
        this.f5506k = true;
        this.f5507l = true;
        this.f5508m = true;
        this.f5509n = true;
        this.f5511p = SsMediaSource.DEFAULT_LIVE_PRESENTATION_DELAY_MS;
        this.f5512q = f5498a;
        this.f5513r = f5499b;
        this.f5516u = 10;
        this.f5517v = 300000L;
        this.f5518w = -1L;
        this.f5501e = System.currentTimeMillis();
        StringBuilder sbM = q.m("S(@L@L@)");
        f5500c = sbM.toString();
        sbM.setLength(0);
        sbM.append("*^@K#K@!");
        this.f5514s = sbM.toString();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeLong(this.f5501e);
        parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f5502g ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f5503h ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f5512q);
        parcel.writeString(this.f5513r);
        parcel.writeString(this.f5514s);
        ap.b(parcel, this.f5515t);
        parcel.writeByte(this.f5504i ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f5505j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f5508m ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f5509n ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f5511p);
        parcel.writeByte(this.f5506k ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f5507l ? (byte) 1 : (byte) 0);
        parcel.writeLong(this.f5510o);
        parcel.writeInt(this.f5516u);
        parcel.writeLong(this.f5517v);
        parcel.writeLong(this.f5518w);
    }

    public StrategyBean(Parcel parcel) {
        this.d = -1L;
        this.f5501e = -1L;
        boolean z7 = true;
        this.f = true;
        this.f5502g = true;
        this.f5503h = true;
        this.f5504i = true;
        this.f5505j = false;
        this.f5506k = true;
        this.f5507l = true;
        this.f5508m = true;
        this.f5509n = true;
        this.f5511p = SsMediaSource.DEFAULT_LIVE_PRESENTATION_DELAY_MS;
        this.f5512q = f5498a;
        this.f5513r = f5499b;
        this.f5516u = 10;
        this.f5517v = 300000L;
        this.f5518w = -1L;
        try {
            f5500c = "S(@L@L@)";
            this.f5501e = parcel.readLong();
            this.f = parcel.readByte() == 1;
            this.f5502g = parcel.readByte() == 1;
            this.f5503h = parcel.readByte() == 1;
            this.f5512q = parcel.readString();
            this.f5513r = parcel.readString();
            this.f5514s = parcel.readString();
            this.f5515t = ap.b(parcel);
            this.f5504i = parcel.readByte() == 1;
            this.f5505j = parcel.readByte() == 1;
            this.f5508m = parcel.readByte() == 1;
            this.f5509n = parcel.readByte() == 1;
            this.f5511p = parcel.readLong();
            this.f5506k = parcel.readByte() == 1;
            if (parcel.readByte() != 1) {
                z7 = false;
            }
            this.f5507l = z7;
            this.f5510o = parcel.readLong();
            this.f5516u = parcel.readInt();
            this.f5517v = parcel.readLong();
            this.f5518w = parcel.readLong();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
    }
}
