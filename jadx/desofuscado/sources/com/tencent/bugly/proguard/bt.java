package com.tencent.bugly.proguard;

import com.lzy.okgo.model.Progress;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class bt extends m implements Cloneable {

    /* renamed from: m, reason: collision with root package name */
    static bs f5853m = new bs();

    /* renamed from: n, reason: collision with root package name */
    static Map<String, String> f5854n = null;

    /* renamed from: o, reason: collision with root package name */
    static final /* synthetic */ boolean f5855o = true;

    /* renamed from: a, reason: collision with root package name */
    public boolean f5856a = true;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5857b = true;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5858c = true;
    public String d = "";

    /* renamed from: e, reason: collision with root package name */
    public String f5859e = "";
    public bs f = null;

    /* renamed from: g, reason: collision with root package name */
    public Map<String, String> f5860g = null;

    /* renamed from: h, reason: collision with root package name */
    public long f5861h = 0;

    /* renamed from: i, reason: collision with root package name */
    public String f5862i = "";

    /* renamed from: j, reason: collision with root package name */
    public String f5863j = "";

    /* renamed from: k, reason: collision with root package name */
    public int f5864k = 0;

    /* renamed from: l, reason: collision with root package name */
    public int f5865l = 0;

    static {
        HashMap map = new HashMap();
        f5854n = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5856a, 0);
        lVar.a(this.f5857b, 1);
        lVar.a(this.f5858c, 2);
        String str = this.d;
        if (str != null) {
            lVar.a(str, 3);
        }
        String str2 = this.f5859e;
        if (str2 != null) {
            lVar.a(str2, 4);
        }
        bs bsVar = this.f;
        if (bsVar != null) {
            lVar.a((m) bsVar, 5);
        }
        Map<String, String> map = this.f5860g;
        if (map != null) {
            lVar.a((Map) map, 6);
        }
        lVar.a(this.f5861h, 7);
        String str3 = this.f5862i;
        if (str3 != null) {
            lVar.a(str3, 8);
        }
        String str4 = this.f5863j;
        if (str4 != null) {
            lVar.a(str4, 9);
        }
        lVar.a(this.f5864k, 10);
        lVar.a(this.f5865l, 11);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f5855o) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        bt btVar = (bt) obj;
        return n.a(this.f5856a, btVar.f5856a) && n.a(this.f5857b, btVar.f5857b) && n.a(this.f5858c, btVar.f5858c) && n.a(this.d, btVar.d) && n.a(this.f5859e, btVar.f5859e) && n.a(this.f, btVar.f) && n.a(this.f5860g, btVar.f5860g) && n.a(this.f5861h, btVar.f5861h) && n.a(this.f5862i, btVar.f5862i) && n.a(this.f5863j, btVar.f5863j) && n.a(this.f5864k, btVar.f5864k) && n.a(this.f5865l, btVar.f5865l);
    }

    public final int hashCode() throws Exception {
        try {
            throw new Exception("Need define key first!");
        } catch (Exception e5) {
            e5.printStackTrace();
            return 0;
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        this.f5856a = kVar.a(0, true);
        this.f5857b = kVar.a(1, true);
        this.f5858c = kVar.a(2, true);
        this.d = kVar.b(3, false);
        this.f5859e = kVar.b(4, false);
        this.f = (bs) kVar.a((m) f5853m, 5, false);
        this.f5860g = (Map) kVar.a((k) f5854n, 6, false);
        this.f5861h = kVar.a(this.f5861h, 7, false);
        this.f5862i = kVar.b(8, false);
        this.f5863j = kVar.b(9, false);
        this.f5864k = kVar.a(this.f5864k, 10, false);
        this.f5865l = kVar.a(this.f5865l, 11, false);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i6) {
        i iVar = new i(sb, i6);
        iVar.a(this.f5856a, "enable");
        iVar.a(this.f5857b, "enableUserInfo");
        iVar.a(this.f5858c, "enableQuery");
        iVar.a(this.d, Progress.URL);
        iVar.a(this.f5859e, "expUrl");
        iVar.a((m) this.f, "security");
        iVar.a((Map) this.f5860g, "valueMap");
        iVar.a(this.f5861h, "strategylastUpdateTime");
        iVar.a(this.f5862i, "httpsUrl");
        iVar.a(this.f5863j, "httpsExpUrl");
        iVar.a(this.f5864k, "eventRecordCount");
        iVar.a(this.f5865l, "eventTimeInterval");
    }
}
