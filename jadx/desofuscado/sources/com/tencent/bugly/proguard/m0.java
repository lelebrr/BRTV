package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m0 {

    /* renamed from: a, reason: collision with root package name */
    protected HashMap<String, HashMap<String, byte[]>> f5926a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    protected HashMap<String, Object> f5927b = new HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private HashMap<String, Object> f5929e = new HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    protected String f5928c = "GBK";
    k d = new k();

    public void a(String str, Object obj) throws ArrayIndexOutOfBoundsException, IllegalArgumentException, UnsupportedEncodingException {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (obj == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (obj instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        l lVar = new l();
        lVar.a(this.f5928c);
        lVar.a(obj, 0);
        byte[] bArrA = n.a(lVar.f5922a);
        HashMap<String, byte[]> map = new HashMap<>(1);
        ArrayList arrayList = new ArrayList(1);
        while (true) {
            if (obj.getClass().isArray()) {
                if (!obj.getClass().getComponentType().toString().equals("byte")) {
                    throw new IllegalArgumentException("only byte[] is supported");
                }
                if (Array.getLength(obj) <= 0) {
                    arrayList.add("Array");
                    arrayList.add("?");
                    break;
                } else {
                    arrayList.add("java.util.List");
                    obj = Array.get(obj, 0);
                }
            } else if (!(obj instanceof Array)) {
                if (!(obj instanceof List)) {
                    if (!(obj instanceof Map)) {
                        arrayList.add(obj.getClass().getName());
                        break;
                    }
                    arrayList.add("java.util.Map");
                    Map map2 = (Map) obj;
                    if (map2.size() <= 0) {
                        arrayList.add("?");
                        arrayList.add("?");
                        break;
                    } else {
                        Object next = map2.keySet().iterator().next();
                        obj = map2.get(next);
                        arrayList.add(next.getClass().getName());
                    }
                } else {
                    arrayList.add("java.util.List");
                    List list = (List) obj;
                    if (list.size() <= 0) {
                        arrayList.add("?");
                        break;
                    }
                    obj = list.get(0);
                }
            } else {
                throw new IllegalArgumentException("can not support Array, please use List");
            }
        }
        map.put(a.a(arrayList), bArrA);
        this.f5929e.remove(str);
        this.f5926a.put(str, map);
    }

    public void a(byte[] bArr) {
        this.d.a(bArr);
        this.d.a(this.f5928c);
        HashMap map = new HashMap(1);
        HashMap map2 = new HashMap(1);
        map2.put("", new byte[0]);
        map.put("", map2);
        this.f5926a = this.d.a((Map) map, 0, false);
    }
}
