package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    protected String f5916a = "GBK";

    /* renamed from: b, reason: collision with root package name */
    private ByteBuffer f5917b;

    /* compiled from: MyApplication */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public byte f5918a;

        /* renamed from: b, reason: collision with root package name */
        public int f5919b;
    }

    public k() {
    }

    private boolean b(int i6) {
        int i10;
        try {
            a aVar = new a();
            while (true) {
                int iA = a(aVar, this.f5917b.duplicate());
                i10 = aVar.f5919b;
                if (i6 <= i10 || aVar.f5918a == 11) {
                    break;
                }
                a(iA);
                a(aVar.f5918a);
            }
        } catch (h | BufferUnderflowException unused) {
        }
        return i6 == i10;
    }

    private boolean[] d(int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f5918a != 9) {
            throw new h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new h("size invalid: ".concat(String.valueOf(iA)));
        }
        boolean[] zArr = new boolean[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            zArr[i10] = a(0, true);
        }
        return zArr;
    }

    private short[] e(int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f5918a != 9) {
            throw new h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new h("size invalid: ".concat(String.valueOf(iA)));
        }
        short[] sArr = new short[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            sArr[i10] = a(sArr[0], 0, true);
        }
        return sArr;
    }

    private int[] f(int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f5918a != 9) {
            throw new h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new h("size invalid: ".concat(String.valueOf(iA)));
        }
        int[] iArr = new int[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            iArr[i10] = a(iArr[0], 0, true);
        }
        return iArr;
    }

    private long[] g(int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f5918a != 9) {
            throw new h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new h("size invalid: ".concat(String.valueOf(iA)));
        }
        long[] jArr = new long[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            jArr[i10] = a(jArr[0], 0, true);
        }
        return jArr;
    }

    private float[] h(int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f5918a != 9) {
            throw new h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new h("size invalid: ".concat(String.valueOf(iA)));
        }
        float[] fArr = new float[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            fArr[i10] = a(fArr[0], 0, true);
        }
        return fArr;
    }

    private double[] i(int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f5918a != 9) {
            throw new h("type mismatch.");
        }
        int iA = a(0, 0, true);
        if (iA < 0) {
            throw new h("size invalid: ".concat(String.valueOf(iA)));
        }
        double[] dArr = new double[iA];
        for (int i10 = 0; i10 < iA; i10++) {
            dArr[i10] = a(dArr[0], 0, true);
        }
        return dArr;
    }

    public final void a(byte[] bArr) {
        ByteBuffer byteBuffer = this.f5917b;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        this.f5917b = ByteBuffer.wrap(bArr);
    }

    public final byte[] c(int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        byte b8 = aVar.f5918a;
        if (b8 == 9) {
            int iA = a(0, 0, true);
            if (iA < 0) {
                throw new h("size invalid: ".concat(String.valueOf(iA)));
            }
            byte[] bArr = new byte[iA];
            for (int i10 = 0; i10 < iA; i10++) {
                bArr[i10] = a(bArr[0], 0, true);
            }
            return bArr;
        }
        if (b8 != 13) {
            throw new h("type mismatch.");
        }
        a aVar2 = new a();
        a(aVar2);
        if (aVar2.f5918a != 0) {
            StringBuilder sbU = a.e.u(i6, "type mismatch, tag: ", ", type: ");
            sbU.append((int) aVar.f5918a);
            sbU.append(", ");
            sbU.append((int) aVar2.f5918a);
            throw new h(sbU.toString());
        }
        int iA2 = a(0, 0, true);
        if (iA2 >= 0) {
            byte[] bArr2 = new byte[iA2];
            this.f5917b.get(bArr2);
            return bArr2;
        }
        StringBuilder sbU2 = a.e.u(i6, "invalid size, tag: ", ", type: ");
        sbU2.append((int) aVar.f5918a);
        sbU2.append(", ");
        sbU2.append((int) aVar2.f5918a);
        sbU2.append(", size: ");
        sbU2.append(iA2);
        throw new h(sbU2.toString());
    }

    public k(byte[] bArr) {
        this.f5917b = ByteBuffer.wrap(bArr);
    }

    private static int a(a aVar, ByteBuffer byteBuffer) {
        byte b8 = byteBuffer.get();
        aVar.f5918a = (byte) (b8 & 15);
        int i6 = (b8 & 240) >> 4;
        aVar.f5919b = i6;
        if (i6 != 15) {
            return 1;
        }
        aVar.f5919b = byteBuffer.get();
        return 2;
    }

    public k(byte[] bArr, byte b8) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        this.f5917b = byteBufferWrap;
        byteBufferWrap.position(4);
    }

    private void b() {
        a aVar = new a();
        a(aVar);
        a(aVar.f5918a);
    }

    private void a(a aVar) {
        a(aVar, this.f5917b);
    }

    private void a(int i6) {
        ByteBuffer byteBuffer = this.f5917b;
        byteBuffer.position(byteBuffer.position() + i6);
    }

    public final String b(int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        byte b8 = aVar.f5918a;
        if (b8 == 6) {
            int i10 = this.f5917b.get();
            if (i10 < 0) {
                i10 += 256;
            }
            byte[] bArr = new byte[i10];
            this.f5917b.get(bArr);
            try {
                return new String(bArr, this.f5916a);
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr);
            }
        }
        if (b8 == 7) {
            int i11 = this.f5917b.getInt();
            if (i11 <= 104857600 && i11 >= 0) {
                byte[] bArr2 = new byte[i11];
                this.f5917b.get(bArr2);
                try {
                    return new String(bArr2, this.f5916a);
                } catch (UnsupportedEncodingException unused2) {
                    return new String(bArr2);
                }
            }
            throw new h("String too long: ".concat(String.valueOf(i11)));
        }
        throw new h("type mismatch.");
    }

    private void a() {
        a aVar = new a();
        do {
            a(aVar);
            a(aVar.f5918a);
        } while (aVar.f5918a != 11);
    }

    private void a(byte b8) {
        int i6 = 0;
        switch (b8) {
            case 0:
                a(1);
                return;
            case 1:
                a(2);
                return;
            case 2:
                a(4);
                return;
            case 3:
                a(8);
                return;
            case 4:
                a(4);
                return;
            case 5:
                a(8);
                return;
            case 6:
                int i10 = this.f5917b.get();
                if (i10 < 0) {
                    i10 += 256;
                }
                a(i10);
                return;
            case 7:
                a(this.f5917b.getInt());
                return;
            case 8:
                int iA = a(0, 0, true);
                while (i6 < iA * 2) {
                    b();
                    i6++;
                }
                return;
            case 9:
                int iA2 = a(0, 0, true);
                while (i6 < iA2) {
                    b();
                    i6++;
                }
                return;
            case 10:
                a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                a aVar = new a();
                a(aVar);
                if (aVar.f5918a == 0) {
                    a(a(0, 0, true));
                    return;
                } else {
                    StringBuilder sbU = a.e.u(b8, "skipField with invalid type, type value: ", ", ");
                    sbU.append((int) aVar.f5918a);
                    throw new h(sbU.toString());
                }
            default:
                throw new h("invalid type.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T[] b(T t5, int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f5918a == 9) {
            int iA = a(0, 0, true);
            if (iA >= 0) {
                T[] tArr = (T[]) ((Object[]) Array.newInstance(t5.getClass(), iA));
                for (int i10 = 0; i10 < iA; i10++) {
                    tArr[i10] = a((k) t5, 0, true);
                }
                return tArr;
            }
            throw new h("size invalid: ".concat(String.valueOf(iA)));
        }
        throw new h("type mismatch.");
    }

    public final boolean a(int i6, boolean z7) {
        return a((byte) 0, i6, z7) != 0;
    }

    public final byte a(byte b8, int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return b8;
        }
        a aVar = new a();
        a(aVar);
        byte b10 = aVar.f5918a;
        if (b10 == 0) {
            return this.f5917b.get();
        }
        if (b10 == 12) {
            return (byte) 0;
        }
        throw new h("type mismatch.");
    }

    public final short a(short s10, int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return s10;
        }
        a aVar = new a();
        a(aVar);
        byte b8 = aVar.f5918a;
        if (b8 == 0) {
            return this.f5917b.get();
        }
        if (b8 == 1) {
            return this.f5917b.getShort();
        }
        if (b8 == 12) {
            return (short) 0;
        }
        throw new h("type mismatch.");
    }

    public final int a(int i6, int i10, boolean z7) {
        if (!b(i10)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return i6;
        }
        a aVar = new a();
        a(aVar);
        byte b8 = aVar.f5918a;
        if (b8 == 0) {
            return this.f5917b.get();
        }
        if (b8 == 1) {
            return this.f5917b.getShort();
        }
        if (b8 == 2) {
            return this.f5917b.getInt();
        }
        if (b8 == 12) {
            return 0;
        }
        throw new h("type mismatch.");
    }

    public final long a(long j10, int i6, boolean z7) {
        int i10;
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return j10;
        }
        a aVar = new a();
        a(aVar);
        byte b8 = aVar.f5918a;
        if (b8 == 0) {
            i10 = this.f5917b.get();
        } else if (b8 == 1) {
            i10 = this.f5917b.getShort();
        } else {
            if (b8 != 2) {
                if (b8 == 3) {
                    return this.f5917b.getLong();
                }
                if (b8 == 12) {
                    return 0L;
                }
                throw new h("type mismatch.");
            }
            i10 = this.f5917b.getInt();
        }
        return i10;
    }

    private float a(float f, int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return f;
        }
        a aVar = new a();
        a(aVar);
        byte b8 = aVar.f5918a;
        if (b8 == 4) {
            return this.f5917b.getFloat();
        }
        if (b8 == 12) {
            return 0.0f;
        }
        throw new h("type mismatch.");
    }

    private double a(double d, int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return d;
        }
        a aVar = new a();
        a(aVar);
        byte b8 = aVar.f5918a;
        if (b8 == 4) {
            return this.f5917b.getFloat();
        }
        if (b8 == 5) {
            return this.f5917b.getDouble();
        }
        if (b8 == 12) {
            return 0.0d;
        }
        throw new h("type mismatch.");
    }

    public final <K, V> HashMap<K, V> a(Map<K, V> map, int i6, boolean z7) {
        return (HashMap) a(new HashMap(), map, i6, z7);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> Map<K, V> a(Map<K, V> map, Map<K, V> map2, int i6, boolean z7) {
        if (map2 != null && !map2.isEmpty()) {
            Map.Entry<K, V> next = map2.entrySet().iterator().next();
            K key = next.getKey();
            V value = next.getValue();
            if (b(i6)) {
                a aVar = new a();
                a(aVar);
                if (aVar.f5918a == 8) {
                    int iA = a(0, 0, true);
                    if (iA < 0) {
                        throw new h("size invalid: ".concat(String.valueOf(iA)));
                    }
                    for (int i10 = 0; i10 < iA; i10++) {
                        map.put(a((k) key, 0, true), a((k) value, 1, true));
                    }
                } else {
                    throw new h("type mismatch.");
                }
            } else if (z7) {
                throw new h("require field not exist.");
            }
            return map;
        }
        return new HashMap();
    }

    private <T> T[] a(T[] tArr, int i6, boolean z7) {
        if (tArr != null && tArr.length != 0) {
            return (T[]) b(tArr[0], i6, z7);
        }
        throw new h("unable to get type of key and value.");
    }

    private <T> List<T> a(List<T> list, int i6, boolean z7) {
        if (list != null && !list.isEmpty()) {
            Object[] objArrB = b(list.get(0), i6, z7);
            if (objArrB == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : objArrB) {
                arrayList.add(obj);
            }
            return arrayList;
        }
        return new ArrayList();
    }

    public final m a(m mVar, int i6, boolean z7) {
        if (!b(i6)) {
            if (z7) {
                throw new h("require field not exist.");
            }
            return null;
        }
        try {
            m mVar2 = (m) mVar.getClass().newInstance();
            a aVar = new a();
            a(aVar);
            if (aVar.f5918a == 10) {
                mVar2.a(this);
                a();
                return mVar2;
            }
            throw new h("type mismatch.");
        } catch (Exception e5) {
            throw new h(e5.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> Object a(T t5, int i6, boolean z7) {
        if (t5 instanceof Byte) {
            return Byte.valueOf(a((byte) 0, i6, z7));
        }
        if (t5 instanceof Boolean) {
            return Boolean.valueOf(a(i6, z7));
        }
        if (t5 instanceof Short) {
            return Short.valueOf(a((short) 0, i6, z7));
        }
        if (t5 instanceof Integer) {
            return Integer.valueOf(a(0, i6, z7));
        }
        if (t5 instanceof Long) {
            return Long.valueOf(a(0L, i6, z7));
        }
        if (t5 instanceof Float) {
            return Float.valueOf(a(0.0f, i6, z7));
        }
        if (t5 instanceof Double) {
            return Double.valueOf(a(0.0d, i6, z7));
        }
        if (t5 instanceof String) {
            return String.valueOf(b(i6, z7));
        }
        if (t5 instanceof Map) {
            return a((Map) t5, i6, z7);
        }
        if (t5 instanceof List) {
            return a((List) t5, i6, z7);
        }
        if (t5 instanceof m) {
            return a((m) t5, i6, z7);
        }
        if (t5.getClass().isArray()) {
            if (!(t5 instanceof byte[]) && !(t5 instanceof Byte[])) {
                if (t5 instanceof boolean[]) {
                    return d(i6, z7);
                }
                if (t5 instanceof short[]) {
                    return e(i6, z7);
                }
                if (t5 instanceof int[]) {
                    return f(i6, z7);
                }
                if (t5 instanceof long[]) {
                    return g(i6, z7);
                }
                if (t5 instanceof float[]) {
                    return h(i6, z7);
                }
                if (t5 instanceof double[]) {
                    return i(i6, z7);
                }
                return a((Object[]) t5, i6, z7);
            }
            return c(i6, z7);
        }
        throw new h("read object error: unsupport type.");
    }

    public final int a(String str) {
        this.f5916a = str;
        return 0;
    }
}
