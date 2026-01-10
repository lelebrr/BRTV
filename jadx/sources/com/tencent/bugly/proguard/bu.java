package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bu extends m {

    /* renamed from: i, reason: collision with root package name */
    static Map<String, String> f5866i;

    /* renamed from: a, reason: collision with root package name */
    public long f5867a = 0;

    /* renamed from: b, reason: collision with root package name */
    public byte f5868b = 0;

    /* renamed from: c, reason: collision with root package name */
    public String f5869c = "";
    public String d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f5870e = "";
    public Map<String, String> f = null;

    /* renamed from: g, reason: collision with root package name */
    public String f5871g = "";

    /* renamed from: h, reason: collision with root package name */
    public boolean f5872h = true;

    static {
        HashMap map = new HashMap();
        f5866i = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5867a, 0);
        lVar.a(this.f5868b, 1);
        String str = this.f5869c;
        if (str != null) {
            lVar.a(str, 2);
        }
        String str2 = this.d;
        if (str2 != null) {
            lVar.a(str2, 3);
        }
        String str3 = this.f5870e;
        if (str3 != null) {
            lVar.a(str3, 4);
        }
        Map<String, String> map = this.f;
        if (map != null) {
            lVar.a((Map) map, 5);
        }
        String str4 = this.f5871g;
        if (str4 != null) {
            lVar.a(str4, 6);
        }
        lVar.a(this.f5872h, 7);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5867a = kVar.a(this.f5867a, 0, true);
        this.f5868b = kVar.a(this.f5868b, 1, true);
        this.f5869c = kVar.b(2, false);
        this.d = kVar.b(3, false);
        this.f5870e = kVar.b(4, false);
        this.f = (Map) kVar.a((k) f5866i, 5, false);
        this.f5871g = kVar.b(6, false);
        this.f5872h = kVar.a(7, false);
    }
}
