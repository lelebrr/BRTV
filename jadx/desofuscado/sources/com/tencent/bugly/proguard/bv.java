package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bv extends m implements Cloneable {
    static ArrayList<bu> f;

    /* renamed from: g, reason: collision with root package name */
    static Map<String, String> f5873g;

    /* renamed from: a, reason: collision with root package name */
    public byte f5874a = 0;

    /* renamed from: b, reason: collision with root package name */
    public String f5875b = "";

    /* renamed from: c, reason: collision with root package name */
    public String f5876c = "";
    public ArrayList<bu> d = null;

    /* renamed from: e, reason: collision with root package name */
    public Map<String, String> f5877e = null;

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i6) {
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5874a, 0);
        String str = this.f5875b;
        if (str != null) {
            lVar.a(str, 1);
        }
        String str2 = this.f5876c;
        if (str2 != null) {
            lVar.a(str2, 2);
        }
        ArrayList<bu> arrayList = this.d;
        if (arrayList != null) {
            lVar.a((Collection) arrayList, 3);
        }
        Map<String, String> map = this.f5877e;
        if (map != null) {
            lVar.a((Map) map, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5874a = kVar.a(this.f5874a, 0, true);
        this.f5875b = kVar.b(1, false);
        this.f5876c = kVar.b(2, false);
        if (f == null) {
            f = new ArrayList<>();
            f.add(new bu());
        }
        this.d = (ArrayList) kVar.a((k) f, 3, false);
        if (f5873g == null) {
            HashMap map = new HashMap();
            f5873g = map;
            map.put("", "");
        }
        this.f5877e = (Map) kVar.a((k) f5873g, 4, false);
    }
}
