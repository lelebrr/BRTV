package com.tencent.bugly.crashreport.crash;

import android.os.Parcel;
import android.os.Parcelable;
import com.tencent.bugly.crashreport.common.info.PlugInBean;
import com.tencent.bugly.proguard.ap;
import java.util.Map;
import java.util.UUID;
import w0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CrashDetailBean implements Parcelable, Comparable<CrashDetailBean> {
    public static final Parcelable.Creator<CrashDetailBean> CREATOR = new d(17);
    public String A;
    public String B;
    public long C;
    public long D;
    public long E;
    public long F;
    public long G;
    public long H;
    public long I;
    public long J;
    public long K;
    public String L;
    public String M;
    public String N;
    public String O;
    public String P;
    public long Q;
    public boolean R;
    public Map<String, String> S;
    public Map<String, String> T;
    public int U;
    public int V;
    public Map<String, String> W;
    public Map<String, String> X;
    public byte[] Y;
    public String Z;

    /* renamed from: a, reason: collision with root package name */
    public long f5519a;

    /* renamed from: aa, reason: collision with root package name */
    public String f5520aa;

    /* renamed from: b, reason: collision with root package name */
    public int f5521b;

    /* renamed from: c, reason: collision with root package name */
    public String f5522c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public String f5523e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f5524g;

    /* renamed from: h, reason: collision with root package name */
    public Map<String, PlugInBean> f5525h;

    /* renamed from: i, reason: collision with root package name */
    public Map<String, PlugInBean> f5526i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f5527j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f5528k;

    /* renamed from: l, reason: collision with root package name */
    public int f5529l;

    /* renamed from: m, reason: collision with root package name */
    public String f5530m;

    /* renamed from: n, reason: collision with root package name */
    public String f5531n;

    /* renamed from: o, reason: collision with root package name */
    public String f5532o;

    /* renamed from: p, reason: collision with root package name */
    public String f5533p;

    /* renamed from: q, reason: collision with root package name */
    public String f5534q;

    /* renamed from: r, reason: collision with root package name */
    public long f5535r;

    /* renamed from: s, reason: collision with root package name */
    public String f5536s;

    /* renamed from: t, reason: collision with root package name */
    public int f5537t;

    /* renamed from: u, reason: collision with root package name */
    public String f5538u;

    /* renamed from: v, reason: collision with root package name */
    public String f5539v;

    /* renamed from: w, reason: collision with root package name */
    public String f5540w;

    /* renamed from: x, reason: collision with root package name */
    public String f5541x;

    /* renamed from: y, reason: collision with root package name */
    public byte[] f5542y;

    /* renamed from: z, reason: collision with root package name */
    public Map<String, String> f5543z;

    public CrashDetailBean() {
        this.f5519a = -1L;
        this.f5521b = 0;
        this.f5522c = UUID.randomUUID().toString();
        this.d = false;
        this.f5523e = "";
        this.f = "";
        this.f5524g = "";
        this.f5525h = null;
        this.f5526i = null;
        this.f5527j = false;
        this.f5528k = false;
        this.f5529l = 0;
        this.f5530m = "";
        this.f5531n = "";
        this.f5532o = "";
        this.f5533p = "";
        this.f5534q = "";
        this.f5535r = -1L;
        this.f5536s = null;
        this.f5537t = 0;
        this.f5538u = "";
        this.f5539v = "";
        this.f5540w = null;
        this.f5541x = null;
        this.f5542y = null;
        this.f5543z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = -1L;
        this.J = -1L;
        this.K = -1L;
        this.L = "";
        this.M = "";
        this.N = "";
        this.O = "";
        this.P = "";
        this.Q = -1L;
        this.R = false;
        this.S = null;
        this.T = null;
        this.U = -1;
        this.V = -1;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.f5520aa = null;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(CrashDetailBean crashDetailBean) {
        CrashDetailBean crashDetailBean2 = crashDetailBean;
        if (crashDetailBean2 == null) {
            return 1;
        }
        long j10 = this.f5535r - crashDetailBean2.f5535r;
        if (j10 <= 0) {
            return j10 < 0 ? -1 : 0;
        }
        return 1;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i6) {
        parcel.writeInt(this.f5521b);
        parcel.writeString(this.f5522c);
        parcel.writeByte(this.d ? (byte) 1 : (byte) 0);
        parcel.writeString(this.f5523e);
        parcel.writeString(this.f);
        parcel.writeString(this.f5524g);
        parcel.writeByte(this.f5527j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f5528k ? (byte) 1 : (byte) 0);
        parcel.writeInt(this.f5529l);
        parcel.writeString(this.f5530m);
        parcel.writeString(this.f5531n);
        parcel.writeString(this.f5532o);
        parcel.writeString(this.f5533p);
        parcel.writeString(this.f5534q);
        parcel.writeLong(this.f5535r);
        parcel.writeString(this.f5536s);
        parcel.writeInt(this.f5537t);
        parcel.writeString(this.f5538u);
        parcel.writeString(this.f5539v);
        parcel.writeString(this.f5540w);
        ap.b(parcel, this.f5543z);
        parcel.writeString(this.A);
        parcel.writeString(this.B);
        parcel.writeLong(this.C);
        parcel.writeLong(this.D);
        parcel.writeLong(this.E);
        parcel.writeLong(this.F);
        parcel.writeLong(this.G);
        parcel.writeLong(this.H);
        parcel.writeString(this.L);
        parcel.writeString(this.M);
        parcel.writeString(this.N);
        parcel.writeString(this.O);
        parcel.writeString(this.P);
        parcel.writeLong(this.Q);
        parcel.writeByte(this.R ? (byte) 1 : (byte) 0);
        ap.b(parcel, this.S);
        ap.a(parcel, this.f5525h);
        ap.a(parcel, this.f5526i);
        parcel.writeInt(this.U);
        parcel.writeInt(this.V);
        ap.b(parcel, this.W);
        ap.b(parcel, this.X);
        parcel.writeByteArray(this.Y);
        parcel.writeByteArray(this.f5542y);
        parcel.writeString(this.Z);
        parcel.writeString(this.f5520aa);
        parcel.writeString(this.f5541x);
        parcel.writeLong(this.I);
        parcel.writeLong(this.J);
        parcel.writeLong(this.K);
    }

    public CrashDetailBean(Parcel parcel) {
        this.f5519a = -1L;
        this.f5521b = 0;
        this.f5522c = UUID.randomUUID().toString();
        this.d = false;
        this.f5523e = "";
        this.f = "";
        this.f5524g = "";
        this.f5525h = null;
        this.f5526i = null;
        this.f5527j = false;
        this.f5528k = false;
        this.f5529l = 0;
        this.f5530m = "";
        this.f5531n = "";
        this.f5532o = "";
        this.f5533p = "";
        this.f5534q = "";
        this.f5535r = -1L;
        this.f5536s = null;
        this.f5537t = 0;
        this.f5538u = "";
        this.f5539v = "";
        this.f5540w = null;
        this.f5541x = null;
        this.f5542y = null;
        this.f5543z = null;
        this.A = "";
        this.B = "";
        this.C = -1L;
        this.D = -1L;
        this.E = -1L;
        this.F = -1L;
        this.G = -1L;
        this.H = -1L;
        this.I = -1L;
        this.J = -1L;
        this.K = -1L;
        this.L = "";
        this.M = "";
        this.N = "";
        this.O = "";
        this.P = "";
        this.Q = -1L;
        this.R = false;
        this.S = null;
        this.T = null;
        this.U = -1;
        this.V = -1;
        this.W = null;
        this.X = null;
        this.Y = null;
        this.Z = null;
        this.f5520aa = null;
        this.f5521b = parcel.readInt();
        this.f5522c = parcel.readString();
        this.d = parcel.readByte() == 1;
        this.f5523e = parcel.readString();
        this.f = parcel.readString();
        this.f5524g = parcel.readString();
        this.f5527j = parcel.readByte() == 1;
        this.f5528k = parcel.readByte() == 1;
        this.f5529l = parcel.readInt();
        this.f5530m = parcel.readString();
        this.f5531n = parcel.readString();
        this.f5532o = parcel.readString();
        this.f5533p = parcel.readString();
        this.f5534q = parcel.readString();
        this.f5535r = parcel.readLong();
        this.f5536s = parcel.readString();
        this.f5537t = parcel.readInt();
        this.f5538u = parcel.readString();
        this.f5539v = parcel.readString();
        this.f5540w = parcel.readString();
        this.f5543z = ap.b(parcel);
        this.A = parcel.readString();
        this.B = parcel.readString();
        this.C = parcel.readLong();
        this.D = parcel.readLong();
        this.E = parcel.readLong();
        this.F = parcel.readLong();
        this.G = parcel.readLong();
        this.H = parcel.readLong();
        this.L = parcel.readString();
        this.M = parcel.readString();
        this.N = parcel.readString();
        this.O = parcel.readString();
        this.P = parcel.readString();
        this.Q = parcel.readLong();
        this.R = parcel.readByte() == 1;
        this.S = ap.b(parcel);
        this.f5525h = ap.a(parcel);
        this.f5526i = ap.a(parcel);
        this.U = parcel.readInt();
        this.V = parcel.readInt();
        this.W = ap.b(parcel);
        this.X = ap.b(parcel);
        this.Y = parcel.createByteArray();
        this.f5542y = parcel.createByteArray();
        this.Z = parcel.readString();
        this.f5520aa = parcel.readString();
        this.f5541x = parcel.readString();
        this.I = parcel.readLong();
        this.J = parcel.readLong();
        this.K = parcel.readLong();
    }
}
