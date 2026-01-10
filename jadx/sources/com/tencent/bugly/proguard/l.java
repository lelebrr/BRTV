package com.tencent.bugly.proguard;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public ByteBuffer f5922a;

    /* renamed from: b, reason: collision with root package name */
    protected String f5923b;

    public l(int i6) {
        this.f5923b = "GBK";
        this.f5922a = ByteBuffer.allocate(i6);
    }

    private void a(int i6) {
        if (this.f5922a.remaining() < i6) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate((this.f5922a.capacity() + i6) * 2);
            byteBufferAllocate.put(this.f5922a.array(), 0, this.f5922a.position());
            this.f5922a = byteBufferAllocate;
        }
    }

    private void b(byte b8, int i6) {
        if (i6 < 15) {
            this.f5922a.put((byte) (b8 | (i6 << 4)));
        } else {
            if (i6 >= 256) {
                throw new j("tag is too large: ".concat(String.valueOf(i6)));
            }
            this.f5922a.put((byte) (b8 | 240));
            this.f5922a.put((byte) i6);
        }
    }

    public l() {
        this(128);
    }

    public final void a(boolean z7, int i6) {
        a(z7 ? (byte) 1 : (byte) 0, i6);
    }

    public final void a(byte b8, int i6) {
        a(3);
        if (b8 == 0) {
            b((byte) 12, i6);
        } else {
            b((byte) 0, i6);
            this.f5922a.put(b8);
        }
    }

    public final void a(short s10, int i6) {
        a(4);
        if (s10 >= -128 && s10 <= 127) {
            a((byte) s10, i6);
        } else {
            b((byte) 1, i6);
            this.f5922a.putShort(s10);
        }
    }

    public final void a(int i6, int i10) {
        a(6);
        if (i6 >= -32768 && i6 <= 32767) {
            a((short) i6, i10);
        } else {
            b((byte) 2, i10);
            this.f5922a.putInt(i6);
        }
    }

    public final void a(long j10, int i6) {
        a(10);
        if (j10 >= -2147483648L && j10 <= 2147483647L) {
            a((int) j10, i6);
        } else {
            b((byte) 3, i6);
            this.f5922a.putLong(j10);
        }
    }

    private void a(float f, int i6) {
        a(6);
        b((byte) 4, i6);
        this.f5922a.putFloat(f);
    }

    private void a(double d, int i6) {
        a(10);
        b((byte) 5, i6);
        this.f5922a.putDouble(d);
    }

    public final void a(String str, int i6) throws UnsupportedEncodingException {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.f5923b);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        a(bytes.length + 10);
        if (bytes.length > 255) {
            b((byte) 7, i6);
            this.f5922a.putInt(bytes.length);
            this.f5922a.put(bytes);
        } else {
            b((byte) 6, i6);
            this.f5922a.put((byte) bytes.length);
            this.f5922a.put(bytes);
        }
    }

    public final <K, V> void a(Map<K, V> map, int i6) throws UnsupportedEncodingException {
        a(8);
        b((byte) 8, i6);
        a(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                a(entry.getKey(), 0);
                a(entry.getValue(), 1);
            }
        }
    }

    private void a(boolean[] zArr, int i6) {
        a(8);
        b((byte) 9, i6);
        a(zArr.length, 0);
        for (boolean z7 : zArr) {
            a(z7, 0);
        }
    }

    public final void a(byte[] bArr, int i6) {
        a(bArr.length + 8);
        b((byte) 13, i6);
        b((byte) 0, 0);
        a(bArr.length, 0);
        this.f5922a.put(bArr);
    }

    private void a(short[] sArr, int i6) {
        a(8);
        b((byte) 9, i6);
        a(sArr.length, 0);
        for (short s10 : sArr) {
            a(s10, 0);
        }
    }

    private void a(int[] iArr, int i6) {
        a(8);
        b((byte) 9, i6);
        a(iArr.length, 0);
        for (int i10 : iArr) {
            a(i10, 0);
        }
    }

    private void a(long[] jArr, int i6) {
        a(8);
        b((byte) 9, i6);
        a(jArr.length, 0);
        for (long j10 : jArr) {
            a(j10, 0);
        }
    }

    private void a(float[] fArr, int i6) {
        a(8);
        b((byte) 9, i6);
        a(fArr.length, 0);
        for (float f : fArr) {
            a(f, 0);
        }
    }

    private void a(double[] dArr, int i6) {
        a(8);
        b((byte) 9, i6);
        a(dArr.length, 0);
        for (double d : dArr) {
            a(d, 0);
        }
    }

    private void a(Object[] objArr, int i6) throws UnsupportedEncodingException {
        a(8);
        b((byte) 9, i6);
        a(objArr.length, 0);
        for (Object obj : objArr) {
            a(obj, 0);
        }
    }

    public final <T> void a(Collection<T> collection, int i6) throws UnsupportedEncodingException {
        a(8);
        b((byte) 9, i6);
        a(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                a(it.next(), 0);
            }
        }
    }

    public final void a(m mVar, int i6) {
        a(2);
        b((byte) 10, i6);
        mVar.a(this);
        a(2);
        b((byte) 11, 0);
    }

    public final void a(Object obj, int i6) throws UnsupportedEncodingException {
        if (obj instanceof Byte) {
            a(((Byte) obj).byteValue(), i6);
            return;
        }
        if (obj instanceof Boolean) {
            a(((Boolean) obj).booleanValue(), i6);
            return;
        }
        if (obj instanceof Short) {
            a(((Short) obj).shortValue(), i6);
            return;
        }
        if (obj instanceof Integer) {
            a(((Integer) obj).intValue(), i6);
            return;
        }
        if (obj instanceof Long) {
            a(((Long) obj).longValue(), i6);
            return;
        }
        if (obj instanceof Float) {
            a(((Float) obj).floatValue(), i6);
            return;
        }
        if (obj instanceof Double) {
            a(((Double) obj).doubleValue(), i6);
            return;
        }
        if (obj instanceof String) {
            a((String) obj, i6);
            return;
        }
        if (obj instanceof Map) {
            a((Map) obj, i6);
            return;
        }
        if (obj instanceof List) {
            a((Collection) obj, i6);
            return;
        }
        if (obj instanceof m) {
            a((m) obj, i6);
            return;
        }
        if (obj instanceof byte[]) {
            a((byte[]) obj, i6);
            return;
        }
        if (obj instanceof boolean[]) {
            a((boolean[]) obj, i6);
            return;
        }
        if (obj instanceof short[]) {
            a((short[]) obj, i6);
            return;
        }
        if (obj instanceof int[]) {
            a((int[]) obj, i6);
            return;
        }
        if (obj instanceof long[]) {
            a((long[]) obj, i6);
            return;
        }
        if (obj instanceof float[]) {
            a((float[]) obj, i6);
            return;
        }
        if (obj instanceof double[]) {
            a((double[]) obj, i6);
            return;
        }
        if (obj.getClass().isArray()) {
            a((Object[]) obj, i6);
        } else if (obj instanceof Collection) {
            a((Collection) obj, i6);
        } else {
            throw new j("write object error: unsupport type. " + obj.getClass());
        }
    }

    public final int a(String str) {
        this.f5923b = str;
        return 0;
    }
}
