package com.tencent.bugly.proguard;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private StringBuilder f5908a;

    /* renamed from: b, reason: collision with root package name */
    private int f5909b;

    public i(StringBuilder sb, int i6) {
        this.f5908a = sb;
        this.f5909b = i6;
    }

    private void a(String str) {
        for (int i6 = 0; i6 < this.f5909b; i6++) {
            this.f5908a.append('\t');
        }
        if (str != null) {
            StringBuilder sb = this.f5908a;
            sb.append(str);
            sb.append(": ");
        }
    }

    public final i a(boolean z7, String str) {
        a(str);
        StringBuilder sb = this.f5908a;
        sb.append(z7 ? 'T' : 'F');
        sb.append('\n');
        return this;
    }

    public final i a(byte b8, String str) {
        a(str);
        StringBuilder sb = this.f5908a;
        sb.append((int) b8);
        sb.append('\n');
        return this;
    }

    private i a(char c5, String str) {
        a(str);
        StringBuilder sb = this.f5908a;
        sb.append(c5);
        sb.append('\n');
        return this;
    }

    public final i a(short s10, String str) {
        a(str);
        StringBuilder sb = this.f5908a;
        sb.append((int) s10);
        sb.append('\n');
        return this;
    }

    public final i a(int i6, String str) {
        a(str);
        StringBuilder sb = this.f5908a;
        sb.append(i6);
        sb.append('\n');
        return this;
    }

    public final i a(long j10, String str) {
        a(str);
        StringBuilder sb = this.f5908a;
        sb.append(j10);
        sb.append('\n');
        return this;
    }

    private i a(float f, String str) {
        a(str);
        StringBuilder sb = this.f5908a;
        sb.append(f);
        sb.append('\n');
        return this;
    }

    private i a(double d, String str) {
        a(str);
        StringBuilder sb = this.f5908a;
        sb.append(d);
        sb.append('\n');
        return this;
    }

    public final i a(String str, String str2) {
        a(str2);
        if (str == null) {
            this.f5908a.append("null\n");
        } else {
            StringBuilder sb = this.f5908a;
            sb.append(str);
            sb.append('\n');
        }
        return this;
    }

    public final i a(byte[] bArr, String str) {
        a(str);
        if (bArr == null) {
            this.f5908a.append("null\n");
            return this;
        }
        if (bArr.length == 0) {
            StringBuilder sb = this.f5908a;
            sb.append(bArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f5908a;
        sb2.append(bArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f5908a, this.f5909b + 1);
        for (byte b8 : bArr) {
            iVar.a(b8, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private i a(short[] sArr, String str) {
        a(str);
        if (sArr == null) {
            this.f5908a.append("null\n");
            return this;
        }
        if (sArr.length == 0) {
            StringBuilder sb = this.f5908a;
            sb.append(sArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f5908a;
        sb2.append(sArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f5908a, this.f5909b + 1);
        for (short s10 : sArr) {
            iVar.a(s10, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private i a(int[] iArr, String str) {
        a(str);
        if (iArr == null) {
            this.f5908a.append("null\n");
            return this;
        }
        if (iArr.length == 0) {
            StringBuilder sb = this.f5908a;
            sb.append(iArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f5908a;
        sb2.append(iArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f5908a, this.f5909b + 1);
        for (int i6 : iArr) {
            iVar.a(i6, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private i a(long[] jArr, String str) {
        a(str);
        if (jArr == null) {
            this.f5908a.append("null\n");
            return this;
        }
        if (jArr.length == 0) {
            StringBuilder sb = this.f5908a;
            sb.append(jArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f5908a;
        sb2.append(jArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f5908a, this.f5909b + 1);
        for (long j10 : jArr) {
            iVar.a(j10, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private i a(float[] fArr, String str) {
        a(str);
        if (fArr == null) {
            this.f5908a.append("null\n");
            return this;
        }
        if (fArr.length == 0) {
            StringBuilder sb = this.f5908a;
            sb.append(fArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f5908a;
        sb2.append(fArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f5908a, this.f5909b + 1);
        for (float f : fArr) {
            iVar.a(f, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private i a(double[] dArr, String str) {
        a(str);
        if (dArr == null) {
            this.f5908a.append("null\n");
            return this;
        }
        if (dArr.length == 0) {
            StringBuilder sb = this.f5908a;
            sb.append(dArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f5908a;
        sb2.append(dArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f5908a, this.f5909b + 1);
        for (double d : dArr) {
            iVar.a(d, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    public final <K, V> i a(Map<K, V> map, String str) {
        a(str);
        if (map == null) {
            this.f5908a.append("null\n");
            return this;
        }
        if (map.isEmpty()) {
            StringBuilder sb = this.f5908a;
            sb.append(map.size());
            sb.append(", {}\n");
            return this;
        }
        StringBuilder sb2 = this.f5908a;
        sb2.append(map.size());
        sb2.append(", {\n");
        i iVar = new i(this.f5908a, this.f5909b + 1);
        i iVar2 = new i(this.f5908a, this.f5909b + 2);
        for (Map.Entry<K, V> entry : map.entrySet()) {
            iVar.a('(', (String) null);
            iVar2.a((i) entry.getKey(), (String) null);
            iVar2.a((i) entry.getValue(), (String) null);
            iVar.a(')', (String) null);
        }
        a('}', (String) null);
        return this;
    }

    private <T> i a(T[] tArr, String str) {
        a(str);
        if (tArr == null) {
            this.f5908a.append("null\n");
            return this;
        }
        if (tArr.length == 0) {
            StringBuilder sb = this.f5908a;
            sb.append(tArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f5908a;
        sb2.append(tArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f5908a, this.f5909b + 1);
        for (T t5 : tArr) {
            iVar.a((i) t5, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> i a(Collection<T> collection, String str) {
        if (collection == null) {
            a(str);
            this.f5908a.append("null\t");
            return this;
        }
        return a(collection.toArray(), str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> i a(T t5, String str) {
        if (t5 == 0) {
            this.f5908a.append("null\n");
        } else if (t5 instanceof Byte) {
            a(((Byte) t5).byteValue(), str);
        } else if (t5 instanceof Boolean) {
            a(((Boolean) t5).booleanValue(), str);
        } else if (t5 instanceof Short) {
            a(((Short) t5).shortValue(), str);
        } else if (t5 instanceof Integer) {
            a(((Integer) t5).intValue(), str);
        } else if (t5 instanceof Long) {
            a(((Long) t5).longValue(), str);
        } else if (t5 instanceof Float) {
            a(((Float) t5).floatValue(), str);
        } else if (t5 instanceof Double) {
            a(((Double) t5).doubleValue(), str);
        } else if (t5 instanceof String) {
            a((String) t5, str);
        } else if (t5 instanceof Map) {
            a((Map) t5, str);
        } else if (t5 instanceof List) {
            a((Collection) t5, str);
        } else if (t5 instanceof m) {
            a((m) t5, str);
        } else if (t5 instanceof byte[]) {
            a((byte[]) t5, str);
        } else if (t5 instanceof boolean[]) {
            a((i) t5, str);
        } else if (t5 instanceof short[]) {
            a((short[]) t5, str);
        } else if (t5 instanceof int[]) {
            a((int[]) t5, str);
        } else if (t5 instanceof long[]) {
            a((long[]) t5, str);
        } else if (t5 instanceof float[]) {
            a((float[]) t5, str);
        } else if (t5 instanceof double[]) {
            a((double[]) t5, str);
        } else if (t5.getClass().isArray()) {
            a((Object[]) t5, str);
        } else {
            throw new j("write object error: unsupport type.");
        }
        return this;
    }

    public final i a(m mVar, String str) {
        a('{', str);
        if (mVar == null) {
            StringBuilder sb = this.f5908a;
            sb.append('\t');
            sb.append("null");
        } else {
            mVar.a(this.f5908a, this.f5909b + 1);
        }
        a('}', (String) null);
        return this;
    }
}
