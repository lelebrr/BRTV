package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class br extends m {

    /* renamed from: i, reason: collision with root package name */
    static byte[] f5843i = {0};

    /* renamed from: j, reason: collision with root package name */
    static Map<String, String> f5844j;

    /* renamed from: a, reason: collision with root package name */
    public byte f5845a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f5846b = 0;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f5847c = null;
    public String d = "";

    /* renamed from: e, reason: collision with root package name */
    public long f5848e = 0;
    public String f = "";

    /* renamed from: g, reason: collision with root package name */
    public String f5849g = "";

    /* renamed from: h, reason: collision with root package name */
    public Map<String, String> f5850h = null;

    static {
        HashMap map = new HashMap();
        f5844j = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5845a, 0);
        lVar.a(this.f5846b, 1);
        byte[] bArr = this.f5847c;
        if (bArr != null) {
            lVar.a(bArr, 2);
        }
        String str = this.d;
        if (str != null) {
            lVar.a(str, 3);
        }
        lVar.a(this.f5848e, 4);
        String str2 = this.f;
        if (str2 != null) {
            lVar.a(str2, 5);
        }
        String str3 = this.f5849g;
        if (str3 != null) {
            lVar.a(str3, 6);
        }
        Map<String, String> map = this.f5850h;
        if (map != null) {
            lVar.a((Map) map, 7);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5845a = kVar.a(this.f5845a, 0, true);
        this.f5846b = kVar.a(this.f5846b, 1, true);
        this.f5847c = kVar.c(2, false);
        this.d = kVar.b(3, false);
        this.f5848e = kVar.a(this.f5848e, 4, false);
        this.f = kVar.b(5, false);
        this.f5849g = kVar.b(6, false);
        this.f5850h = (Map) kVar.a((k) f5844j, 7, false);
    }
}
