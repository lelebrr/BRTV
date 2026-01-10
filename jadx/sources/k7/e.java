package k7;

import com.lzy.okgo.cache.CacheEntity;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e implements h7.e {
    public static final Charset f = Charset.forName("UTF-8");

    /* renamed from: g, reason: collision with root package name */
    public static final h7.c f7742g;

    /* renamed from: h, reason: collision with root package name */
    public static final h7.c f7743h;

    /* renamed from: i, reason: collision with root package name */
    public static final j7.a f7744i;

    /* renamed from: a, reason: collision with root package name */
    public OutputStream f7745a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f7746b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f7747c;
    public final j7.a d;

    /* renamed from: e, reason: collision with root package name */
    public final g f7748e = new g(this);

    static {
        a aVar = new a(1);
        HashMap map = new HashMap();
        map.put(d.class, aVar);
        f7742g = new h7.c(CacheEntity.KEY, Collections.unmodifiableMap(new HashMap(map)));
        a aVar2 = new a(2);
        HashMap map2 = new HashMap();
        map2.put(d.class, aVar2);
        f7743h = new h7.c("value", Collections.unmodifiableMap(new HashMap(map2)));
        f7744i = new j7.a(1);
    }

    public e(ByteArrayOutputStream byteArrayOutputStream, HashMap map, HashMap map2, j7.a aVar) {
        this.f7745a = byteArrayOutputStream;
        this.f7746b = map;
        this.f7747c = map2;
        this.d = aVar;
    }

    public static int f(h7.c cVar) {
        d dVar = (d) ((Annotation) cVar.f7272b.get(d.class));
        if (dVar != null) {
            return ((a) dVar).f7738a;
        }
        throw new h7.b("Field has no @Protobuf config");
    }

    @Override // h7.e
    public final h7.e a(h7.c cVar, long j10) throws IOException {
        if (j10 != 0) {
            d dVar = (d) ((Annotation) cVar.f7272b.get(d.class));
            if (dVar == null) {
                throw new h7.b("Field has no @Protobuf config");
            }
            g(((a) dVar).f7738a << 3);
            h(j10);
        }
        return this;
    }

    public final void b(h7.c cVar, int i6, boolean z7) {
        if (z7 && i6 == 0) {
            return;
        }
        d dVar = (d) ((Annotation) cVar.f7272b.get(d.class));
        if (dVar == null) {
            throw new h7.b("Field has no @Protobuf config");
        }
        g(((a) dVar).f7738a << 3);
        g(i6);
    }

    public final void c(h7.c cVar, Object obj, boolean z7) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z7 && charSequence.length() == 0) {
                return;
            }
            g((f(cVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f);
            g(bytes.length);
            this.f7745a.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                c(cVar, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                e(f7744i, cVar, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double dDoubleValue = ((Double) obj).doubleValue();
            if (z7 && dDoubleValue == 0.0d) {
                return;
            }
            g((f(cVar) << 3) | 1);
            this.f7745a.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(dDoubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float fFloatValue = ((Float) obj).floatValue();
            if (z7 && fFloatValue == 0.0f) {
                return;
            }
            g((f(cVar) << 3) | 5);
            this.f7745a.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(fFloatValue).array());
            return;
        }
        if (obj instanceof Number) {
            long jLongValue = ((Number) obj).longValue();
            if (z7 && jLongValue == 0) {
                return;
            }
            d dVar = (d) ((Annotation) cVar.f7272b.get(d.class));
            if (dVar == null) {
                throw new h7.b("Field has no @Protobuf config");
            }
            g(((a) dVar).f7738a << 3);
            h(jLongValue);
            return;
        }
        if (obj instanceof Boolean) {
            b(cVar, ((Boolean) obj).booleanValue() ? 1 : 0, z7);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z7 && bArr.length == 0) {
                return;
            }
            g((f(cVar) << 3) | 2);
            g(bArr.length);
            this.f7745a.write(bArr);
            return;
        }
        h7.d dVar2 = (h7.d) this.f7746b.get(obj.getClass());
        if (dVar2 != null) {
            e(dVar2, cVar, obj, z7);
            return;
        }
        h7.f fVar = (h7.f) this.f7747c.get(obj.getClass());
        if (fVar != null) {
            g gVar = this.f7748e;
            gVar.f7750a = false;
            gVar.f7752c = cVar;
            gVar.f7751b = z7;
            fVar.a(obj, gVar);
            return;
        }
        if (obj instanceof e4.c) {
            b(cVar, ((e4.c) obj).f6557a, true);
        } else if (obj instanceof Enum) {
            b(cVar, ((Enum) obj).ordinal(), true);
        } else {
            e(this.d, cVar, obj, z7);
        }
    }

    @Override // h7.e
    public final h7.e d(h7.c cVar, Object obj) {
        c(cVar, obj, true);
        return this;
    }

    public final void e(h7.d dVar, h7.c cVar, Object obj, boolean z7) throws IOException {
        b bVar = new b();
        bVar.f7739a = 0L;
        try {
            OutputStream outputStream = this.f7745a;
            this.f7745a = bVar;
            try {
                dVar.a(obj, this);
                this.f7745a = outputStream;
                long j10 = bVar.f7739a;
                bVar.close();
                if (z7 && j10 == 0) {
                    return;
                }
                g((f(cVar) << 3) | 2);
                h(j10);
                dVar.a(obj, this);
            } catch (Throwable th) {
                this.f7745a = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                bVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void g(int i6) throws IOException {
        while ((i6 & (-128)) != 0) {
            this.f7745a.write((i6 & 127) | 128);
            i6 >>>= 7;
        }
        this.f7745a.write(i6 & 127);
    }

    public final void h(long j10) throws IOException {
        while (((-128) & j10) != 0) {
            this.f7745a.write((((int) j10) & 127) | 128);
            j10 >>>= 7;
        }
        this.f7745a.write(((int) j10) & 127);
    }
}
