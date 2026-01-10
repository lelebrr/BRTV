package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bo extends m {
    static ArrayList<bn> A;
    static Map<String, String> B;
    static Map<String, String> C;

    /* renamed from: v, reason: collision with root package name */
    static Map<String, String> f5793v;

    /* renamed from: w, reason: collision with root package name */
    static bm f5794w;

    /* renamed from: x, reason: collision with root package name */
    static bl f5795x;

    /* renamed from: y, reason: collision with root package name */
    static ArrayList<bl> f5796y;

    /* renamed from: z, reason: collision with root package name */
    static ArrayList<bl> f5797z;

    /* renamed from: a, reason: collision with root package name */
    public String f5798a = "";

    /* renamed from: b, reason: collision with root package name */
    public long f5799b = 0;

    /* renamed from: c, reason: collision with root package name */
    public String f5800c = "";
    public String d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f5801e = "";
    public String f = "";

    /* renamed from: g, reason: collision with root package name */
    public String f5802g = "";

    /* renamed from: h, reason: collision with root package name */
    public Map<String, String> f5803h = null;

    /* renamed from: i, reason: collision with root package name */
    public String f5804i = "";

    /* renamed from: j, reason: collision with root package name */
    public bm f5805j = null;

    /* renamed from: k, reason: collision with root package name */
    public int f5806k = 0;

    /* renamed from: l, reason: collision with root package name */
    public String f5807l = "";

    /* renamed from: m, reason: collision with root package name */
    public String f5808m = "";

    /* renamed from: n, reason: collision with root package name */
    public bl f5809n = null;

    /* renamed from: o, reason: collision with root package name */
    public ArrayList<bl> f5810o = null;

    /* renamed from: p, reason: collision with root package name */
    public ArrayList<bl> f5811p = null;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList<bn> f5812q = null;

    /* renamed from: r, reason: collision with root package name */
    public Map<String, String> f5813r = null;

    /* renamed from: s, reason: collision with root package name */
    public Map<String, String> f5814s = null;

    /* renamed from: t, reason: collision with root package name */
    public String f5815t = "";

    /* renamed from: u, reason: collision with root package name */
    public boolean f5816u = true;

    static {
        HashMap map = new HashMap();
        f5793v = map;
        map.put("", "");
        f5794w = new bm();
        f5795x = new bl();
        f5796y = new ArrayList<>();
        f5796y.add(new bl());
        f5797z = new ArrayList<>();
        f5797z.add(new bl());
        A = new ArrayList<>();
        A.add(new bn());
        HashMap map2 = new HashMap();
        B = map2;
        map2.put("", "");
        HashMap map3 = new HashMap();
        C = map3;
        map3.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5798a, 0);
        lVar.a(this.f5799b, 1);
        lVar.a(this.f5800c, 2);
        String str = this.d;
        if (str != null) {
            lVar.a(str, 3);
        }
        String str2 = this.f5801e;
        if (str2 != null) {
            lVar.a(str2, 4);
        }
        String str3 = this.f;
        if (str3 != null) {
            lVar.a(str3, 5);
        }
        String str4 = this.f5802g;
        if (str4 != null) {
            lVar.a(str4, 6);
        }
        Map<String, String> map = this.f5803h;
        if (map != null) {
            lVar.a((Map) map, 7);
        }
        String str5 = this.f5804i;
        if (str5 != null) {
            lVar.a(str5, 8);
        }
        bm bmVar = this.f5805j;
        if (bmVar != null) {
            lVar.a((m) bmVar, 9);
        }
        lVar.a(this.f5806k, 10);
        String str6 = this.f5807l;
        if (str6 != null) {
            lVar.a(str6, 11);
        }
        String str7 = this.f5808m;
        if (str7 != null) {
            lVar.a(str7, 12);
        }
        bl blVar = this.f5809n;
        if (blVar != null) {
            lVar.a((m) blVar, 13);
        }
        ArrayList<bl> arrayList = this.f5810o;
        if (arrayList != null) {
            lVar.a((Collection) arrayList, 14);
        }
        ArrayList<bl> arrayList2 = this.f5811p;
        if (arrayList2 != null) {
            lVar.a((Collection) arrayList2, 15);
        }
        ArrayList<bn> arrayList3 = this.f5812q;
        if (arrayList3 != null) {
            lVar.a((Collection) arrayList3, 16);
        }
        Map<String, String> map2 = this.f5813r;
        if (map2 != null) {
            lVar.a((Map) map2, 17);
        }
        Map<String, String> map3 = this.f5814s;
        if (map3 != null) {
            lVar.a((Map) map3, 18);
        }
        String str8 = this.f5815t;
        if (str8 != null) {
            lVar.a(str8, 19);
        }
        lVar.a(this.f5816u, 20);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5798a = kVar.b(0, true);
        this.f5799b = kVar.a(this.f5799b, 1, true);
        this.f5800c = kVar.b(2, true);
        this.d = kVar.b(3, false);
        this.f5801e = kVar.b(4, false);
        this.f = kVar.b(5, false);
        this.f5802g = kVar.b(6, false);
        this.f5803h = (Map) kVar.a((k) f5793v, 7, false);
        this.f5804i = kVar.b(8, false);
        this.f5805j = (bm) kVar.a((m) f5794w, 9, false);
        this.f5806k = kVar.a(this.f5806k, 10, false);
        this.f5807l = kVar.b(11, false);
        this.f5808m = kVar.b(12, false);
        this.f5809n = (bl) kVar.a((m) f5795x, 13, false);
        this.f5810o = (ArrayList) kVar.a((k) f5796y, 14, false);
        this.f5811p = (ArrayList) kVar.a((k) f5797z, 15, false);
        this.f5812q = (ArrayList) kVar.a((k) A, 16, false);
        this.f5813r = (Map) kVar.a((k) B, 17, false);
        this.f5814s = (Map) kVar.a((k) C, 18, false);
        this.f5815t = kVar.b(19, false);
        this.f5816u = kVar.a(20, false);
    }
}
