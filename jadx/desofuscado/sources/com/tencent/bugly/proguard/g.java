package com.tencent.bugly.proguard;

import com.lzy.okgo.model.Progress;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends m {

    /* renamed from: k, reason: collision with root package name */
    static byte[] f5892k = null;

    /* renamed from: l, reason: collision with root package name */
    static Map<String, String> f5893l = null;

    /* renamed from: m, reason: collision with root package name */
    static final /* synthetic */ boolean f5894m = true;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f5899g;

    /* renamed from: i, reason: collision with root package name */
    public Map<String, String> f5901i;

    /* renamed from: j, reason: collision with root package name */
    public Map<String, String> f5902j;

    /* renamed from: a, reason: collision with root package name */
    public short f5895a = 0;

    /* renamed from: b, reason: collision with root package name */
    public byte f5896b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f5897c = 0;
    public int d = 0;

    /* renamed from: e, reason: collision with root package name */
    public String f5898e = null;
    public String f = null;

    /* renamed from: h, reason: collision with root package name */
    public int f5900h = 0;

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) throws UnsupportedEncodingException {
        lVar.a(this.f5895a, 1);
        lVar.a(this.f5896b, 2);
        lVar.a(this.f5897c, 3);
        lVar.a(this.d, 4);
        lVar.a(this.f5898e, 5);
        lVar.a(this.f, 6);
        lVar.a(this.f5899g, 7);
        lVar.a(this.f5900h, 8);
        lVar.a((Map) this.f5901i, 9);
        lVar.a((Map) this.f5902j, 10);
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (f5894m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        g gVar = (g) obj;
        return n.a(1, (int) gVar.f5895a) && n.a(1, (int) gVar.f5896b) && n.a(1, gVar.f5897c) && n.a(1, gVar.d) && n.a((Object) 1, (Object) gVar.f5898e) && n.a((Object) 1, (Object) gVar.f) && n.a((Object) 1, (Object) gVar.f5899g) && n.a(1, gVar.f5900h) && n.a((Object) 1, (Object) gVar.f5901i) && n.a((Object) 1, (Object) gVar.f5902j);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        try {
            this.f5895a = kVar.a(this.f5895a, 1, true);
            this.f5896b = kVar.a(this.f5896b, 2, true);
            this.f5897c = kVar.a(this.f5897c, 3, true);
            this.d = kVar.a(this.d, 4, true);
            this.f5898e = kVar.b(5, true);
            this.f = kVar.b(6, true);
            if (f5892k == null) {
                f5892k = new byte[]{0};
            }
            this.f5899g = kVar.c(7, true);
            this.f5900h = kVar.a(this.f5900h, 8, true);
            if (f5893l == null) {
                HashMap map = new HashMap();
                f5893l = map;
                map.put("", "");
            }
            this.f5901i = (Map) kVar.a((k) f5893l, 9, true);
            if (f5893l == null) {
                HashMap map2 = new HashMap();
                f5893l = map2;
                map2.put("", "");
            }
            this.f5902j = (Map) kVar.a((k) f5893l, 10, true);
        } catch (Exception e5) {
            e5.printStackTrace();
            System.out.println("RequestPacket decode error " + f.a(this.f5899g));
            throw new RuntimeException(e5);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i6) {
        i iVar = new i(sb, i6);
        iVar.a(this.f5895a, "iVersion");
        iVar.a(this.f5896b, "cPacketType");
        iVar.a(this.f5897c, "iMessageType");
        iVar.a(this.d, "iRequestId");
        iVar.a(this.f5898e, "sServantName");
        iVar.a(this.f, "sFuncName");
        iVar.a(this.f5899g, "sBuffer");
        iVar.a(this.f5900h, "iTimeout");
        iVar.a((Map) this.f5901i, "context");
        iVar.a((Map) this.f5902j, Progress.STATUS);
    }
}
