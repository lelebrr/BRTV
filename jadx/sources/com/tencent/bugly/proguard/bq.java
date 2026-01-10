package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bq extends m {

    /* renamed from: y, reason: collision with root package name */
    static byte[] f5819y = {0};

    /* renamed from: z, reason: collision with root package name */
    static Map<String, String> f5820z;

    /* renamed from: a, reason: collision with root package name */
    public int f5821a = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f5822b = "";

    /* renamed from: c, reason: collision with root package name */
    public String f5823c = "";
    public String d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f5824e = "";
    public String f = "";

    /* renamed from: g, reason: collision with root package name */
    public int f5825g = 0;

    /* renamed from: h, reason: collision with root package name */
    public byte[] f5826h = null;

    /* renamed from: i, reason: collision with root package name */
    public String f5827i = "";

    /* renamed from: j, reason: collision with root package name */
    public String f5828j = "";

    /* renamed from: k, reason: collision with root package name */
    public Map<String, String> f5829k = null;

    /* renamed from: l, reason: collision with root package name */
    public String f5830l = "";

    /* renamed from: m, reason: collision with root package name */
    public long f5831m = 0;

    /* renamed from: n, reason: collision with root package name */
    public String f5832n = "";

    /* renamed from: o, reason: collision with root package name */
    public String f5833o = "";

    /* renamed from: p, reason: collision with root package name */
    public String f5834p = "";

    /* renamed from: q, reason: collision with root package name */
    public long f5835q = 0;

    /* renamed from: r, reason: collision with root package name */
    public String f5836r = "";

    /* renamed from: s, reason: collision with root package name */
    public String f5837s = "";

    /* renamed from: t, reason: collision with root package name */
    public String f5838t = "";

    /* renamed from: u, reason: collision with root package name */
    public String f5839u = "";

    /* renamed from: v, reason: collision with root package name */
    public String f5840v = "";

    /* renamed from: w, reason: collision with root package name */
    public String f5841w = "";

    /* renamed from: x, reason: collision with root package name */
    public String f5842x = "";

    static {
        HashMap map = new HashMap();
        f5820z = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5821a, 0);
        lVar.a(this.f5822b, 1);
        lVar.a(this.f5823c, 2);
        lVar.a(this.d, 3);
        String str = this.f5824e;
        if (str != null) {
            lVar.a(str, 4);
        }
        lVar.a(this.f, 5);
        lVar.a(this.f5825g, 6);
        lVar.a(this.f5826h, 7);
        String str2 = this.f5827i;
        if (str2 != null) {
            lVar.a(str2, 8);
        }
        String str3 = this.f5828j;
        if (str3 != null) {
            lVar.a(str3, 9);
        }
        Map<String, String> map = this.f5829k;
        if (map != null) {
            lVar.a((Map) map, 10);
        }
        String str4 = this.f5830l;
        if (str4 != null) {
            lVar.a(str4, 11);
        }
        lVar.a(this.f5831m, 12);
        String str5 = this.f5832n;
        if (str5 != null) {
            lVar.a(str5, 13);
        }
        String str6 = this.f5833o;
        if (str6 != null) {
            lVar.a(str6, 14);
        }
        String str7 = this.f5834p;
        if (str7 != null) {
            lVar.a(str7, 15);
        }
        lVar.a(this.f5835q, 16);
        String str8 = this.f5836r;
        if (str8 != null) {
            lVar.a(str8, 17);
        }
        String str9 = this.f5837s;
        if (str9 != null) {
            lVar.a(str9, 18);
        }
        String str10 = this.f5838t;
        if (str10 != null) {
            lVar.a(str10, 19);
        }
        String str11 = this.f5839u;
        if (str11 != null) {
            lVar.a(str11, 20);
        }
        String str12 = this.f5840v;
        if (str12 != null) {
            lVar.a(str12, 21);
        }
        String str13 = this.f5841w;
        if (str13 != null) {
            lVar.a(str13, 22);
        }
        String str14 = this.f5842x;
        if (str14 != null) {
            lVar.a(str14, 23);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5821a = kVar.a(this.f5821a, 0, true);
        this.f5822b = kVar.b(1, true);
        this.f5823c = kVar.b(2, true);
        this.d = kVar.b(3, true);
        this.f5824e = kVar.b(4, false);
        this.f = kVar.b(5, true);
        this.f5825g = kVar.a(this.f5825g, 6, true);
        this.f5826h = kVar.c(7, true);
        this.f5827i = kVar.b(8, false);
        this.f5828j = kVar.b(9, false);
        this.f5829k = (Map) kVar.a((k) f5820z, 10, false);
        this.f5830l = kVar.b(11, false);
        this.f5831m = kVar.a(this.f5831m, 12, false);
        this.f5832n = kVar.b(13, false);
        this.f5833o = kVar.b(14, false);
        this.f5834p = kVar.b(15, false);
        this.f5835q = kVar.a(this.f5835q, 16, false);
        this.f5836r = kVar.b(17, false);
        this.f5837s = kVar.b(18, false);
        this.f5838t = kVar.b(19, false);
        this.f5839u = kVar.b(20, false);
        this.f5840v = kVar.b(21, false);
        this.f5841w = kVar.b(22, false);
        this.f5842x = kVar.b(23, false);
    }
}
