package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class d extends m0 {

    /* renamed from: e, reason: collision with root package name */
    protected HashMap<String, byte[]> f5879e = null;

    /* renamed from: g, reason: collision with root package name */
    private HashMap<String, Object> f5880g = new HashMap<>();
    k f = new k();

    private void c(String str, Object obj) {
        this.f5880g.put(str, obj);
    }

    public final void a(String str) {
        this.f5928c = str;
    }

    public void b() {
        this.f5879e = new HashMap<>();
    }

    @Override // com.tencent.bugly.proguard.m0
    public <T> void a(String str, T t5) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, UnsupportedEncodingException {
        if (this.f5879e == null) {
            super.a(str, t5);
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t5 == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (t5 instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        l lVar = new l();
        lVar.a(this.f5928c);
        lVar.a(t5, 0);
        this.f5879e.put(str, n.a(lVar.f5922a));
    }

    public final <T> T b(String str, T t5) throws b {
        HashMap<String, byte[]> map = this.f5879e;
        if (map != null) {
            if (!map.containsKey(str)) {
                return null;
            }
            if (this.f5880g.containsKey(str)) {
                return (T) this.f5880g.get(str);
            }
            try {
                this.f.a(this.f5879e.get(str));
                this.f.a(this.f5928c);
                T t8 = (T) this.f.a((k) t5, 0, true);
                if (t8 != null) {
                    c(str, t8);
                }
                return t8;
            } catch (Exception e5) {
                throw new b(e5);
            }
        }
        if (!this.f5926a.containsKey(str)) {
            return null;
        }
        if (this.f5880g.containsKey(str)) {
            return (T) this.f5880g.get(str);
        }
        byte[] value = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it = this.f5926a.get(str).entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<String, byte[]> next = it.next();
            next.getKey();
            value = next.getValue();
        }
        try {
            this.f.a(value);
            this.f.a(this.f5928c);
            T t10 = (T) this.f.a((k) t5, 0, true);
            c(str, t10);
            return t10;
        } catch (Exception e10) {
            throw new b(e10);
        }
    }

    public byte[] a() throws UnsupportedEncodingException {
        if (this.f5879e != null) {
            l lVar = new l(0);
            lVar.a(this.f5928c);
            lVar.a((Map) this.f5879e, 0);
            return n.a(lVar.f5922a);
        }
        l lVar2 = new l(0);
        lVar2.a(this.f5928c);
        lVar2.a((Map) this.f5926a, 0);
        return n.a(lVar2.f5922a);
    }

    @Override // com.tencent.bugly.proguard.m0
    public void a(byte[] bArr) {
        try {
            super.a(bArr);
        } catch (Exception unused) {
            this.f.a(bArr);
            this.f.a(this.f5928c);
            HashMap map = new HashMap(1);
            map.put("", new byte[0]);
            this.f5879e = this.f.a((Map) map, 0, false);
        }
    }
}
