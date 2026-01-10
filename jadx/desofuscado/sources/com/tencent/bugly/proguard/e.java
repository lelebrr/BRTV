package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends d {

    /* renamed from: h, reason: collision with root package name */
    static HashMap<String, byte[]> f5883h;

    /* renamed from: i, reason: collision with root package name */
    static HashMap<String, HashMap<String, byte[]>> f5884i;

    /* renamed from: g, reason: collision with root package name */
    protected g f5885g;

    /* renamed from: j, reason: collision with root package name */
    private int f5886j;

    public e() {
        g gVar = new g();
        this.f5885g = gVar;
        this.f5886j = 0;
        gVar.f5895a = (short) 2;
    }

    @Override // com.tencent.bugly.proguard.d, com.tencent.bugly.proguard.m0
    public final <T> void a(String str, T t5) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, UnsupportedEncodingException {
        if (str.startsWith(".")) {
            throw new IllegalArgumentException("put name can not startwith . , now is ".concat(str));
        }
        super.a(str, t5);
    }

    @Override // com.tencent.bugly.proguard.d
    public final void b() {
        super.b();
        this.f5885g.f5895a = (short) 3;
    }

    public final void c(String str) {
        this.f5885g.f = str;
    }

    public final void c() {
        this.f5885g.d = 1;
    }

    public final void b(String str) {
        this.f5885g.f5898e = str;
    }

    @Override // com.tencent.bugly.proguard.d
    public final byte[] a() throws UnsupportedEncodingException {
        g gVar = this.f5885g;
        if (gVar.f5895a == 2) {
            if (!gVar.f5898e.equals("")) {
                if (this.f5885g.f.equals("")) {
                    throw new IllegalArgumentException("funcName can not is null");
                }
            } else {
                throw new IllegalArgumentException("servantName can not is null");
            }
        } else {
            if (gVar.f5898e == null) {
                gVar.f5898e = "";
            }
            if (gVar.f == null) {
                gVar.f = "";
            }
        }
        l lVar = new l(0);
        lVar.a(this.f5928c);
        if (this.f5885g.f5895a == 2) {
            lVar.a((Map) this.f5926a, 0);
        } else {
            lVar.a((Map) ((d) this).f5879e, 0);
        }
        this.f5885g.f5899g = n.a(lVar.f5922a);
        l lVar2 = new l(0);
        lVar2.a(this.f5928c);
        this.f5885g.a(lVar2);
        byte[] bArrA = n.a(lVar2.f5922a);
        int length = bArrA.length + 4;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length).put(bArrA).flip();
        return byteBufferAllocate.array();
    }

    @Override // com.tencent.bugly.proguard.d, com.tencent.bugly.proguard.m0
    public final void a(byte[] bArr) {
        if (bArr.length >= 4) {
            try {
                k kVar = new k(bArr, (byte) 0);
                kVar.a(this.f5928c);
                this.f5885g.a(kVar);
                g gVar = this.f5885g;
                if (gVar.f5895a == 3) {
                    k kVar2 = new k(gVar.f5899g);
                    kVar2.a(this.f5928c);
                    if (f5883h == null) {
                        HashMap<String, byte[]> map = new HashMap<>();
                        f5883h = map;
                        map.put("", new byte[0]);
                    }
                    ((d) this).f5879e = kVar2.a((Map) f5883h, 0, false);
                    return;
                }
                k kVar3 = new k(gVar.f5899g);
                kVar3.a(this.f5928c);
                if (f5884i == null) {
                    f5884i = new HashMap<>();
                    HashMap<String, byte[]> map2 = new HashMap<>();
                    map2.put("", new byte[0]);
                    f5884i.put("", map2);
                }
                this.f5926a = kVar3.a((Map) f5884i, 0, false);
                this.f5927b = new HashMap<>();
                return;
            } catch (Exception e5) {
                throw new RuntimeException(e5);
            }
        }
        throw new IllegalArgumentException("decode package must include size head");
    }
}
