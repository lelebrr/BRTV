package j7;

import android.util.Base64;
import android.util.JsonWriter;
import h7.g;
import java.io.BufferedWriter;
import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f implements h7.e, g {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f7452a = true;

    /* renamed from: b, reason: collision with root package name */
    public final JsonWriter f7453b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f7454c;
    public final HashMap d;

    /* renamed from: e, reason: collision with root package name */
    public final a f7455e;
    public final boolean f;

    public f(BufferedWriter bufferedWriter, HashMap map, HashMap map2, a aVar, boolean z7) {
        this.f7453b = new JsonWriter(bufferedWriter);
        this.f7454c = map;
        this.d = map2;
        this.f7455e = aVar;
        this.f = z7;
    }

    @Override // h7.e
    public final h7.e a(h7.c cVar, long j10) throws IOException {
        String str = cVar.f7271a;
        g();
        JsonWriter jsonWriter = this.f7453b;
        jsonWriter.name(str);
        g();
        jsonWriter.value(j10);
        return this;
    }

    @Override // h7.g
    public final g b(String str) throws IOException {
        g();
        this.f7453b.value(str);
        return this;
    }

    @Override // h7.g
    public final g c(boolean z7) throws IOException {
        g();
        this.f7453b.value(z7);
        return this;
    }

    @Override // h7.e
    public final h7.e d(h7.c cVar, Object obj) throws IOException {
        f(obj, cVar.f7271a);
        return this;
    }

    public final f e(Object obj) throws IOException {
        int i6 = 0;
        JsonWriter jsonWriter = this.f7453b;
        if (obj == null) {
            jsonWriter.nullValue();
            return this;
        }
        if (obj instanceof Number) {
            jsonWriter.value((Number) obj);
            return this;
        }
        if (!obj.getClass().isArray()) {
            if (obj instanceof Collection) {
                jsonWriter.beginArray();
                Iterator it = ((Collection) obj).iterator();
                while (it.hasNext()) {
                    e(it.next());
                }
                jsonWriter.endArray();
                return this;
            }
            if (obj instanceof Map) {
                jsonWriter.beginObject();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = entry.getKey();
                    try {
                        f(entry.getValue(), (String) key);
                    } catch (ClassCastException e5) {
                        throw new h7.b(String.format("Only String keys are currently supported in maps, got %s of type %s instead.", key, key.getClass()), e5);
                    }
                }
                jsonWriter.endObject();
                return this;
            }
            h7.d dVar = (h7.d) this.f7454c.get(obj.getClass());
            if (dVar != null) {
                jsonWriter.beginObject();
                dVar.a(obj, this);
                jsonWriter.endObject();
                return this;
            }
            h7.f fVar = (h7.f) this.d.get(obj.getClass());
            if (fVar != null) {
                fVar.a(obj, this);
                return this;
            }
            if (!(obj instanceof Enum)) {
                jsonWriter.beginObject();
                this.f7455e.a(obj, this);
                throw null;
            }
            String strName = ((Enum) obj).name();
            g();
            jsonWriter.value(strName);
            return this;
        }
        if (obj instanceof byte[]) {
            g();
            jsonWriter.value(Base64.encodeToString((byte[]) obj, 2));
            return this;
        }
        jsonWriter.beginArray();
        if (obj instanceof int[]) {
            int length = ((int[]) obj).length;
            while (i6 < length) {
                jsonWriter.value(r8[i6]);
                i6++;
            }
        } else if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            int length2 = jArr.length;
            while (i6 < length2) {
                long j10 = jArr[i6];
                g();
                jsonWriter.value(j10);
                i6++;
            }
        } else if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            int length3 = dArr.length;
            while (i6 < length3) {
                jsonWriter.value(dArr[i6]);
                i6++;
            }
        } else if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            int length4 = zArr.length;
            while (i6 < length4) {
                jsonWriter.value(zArr[i6]);
                i6++;
            }
        } else if (obj instanceof Number[]) {
            Number[] numberArr = (Number[]) obj;
            int length5 = numberArr.length;
            while (i6 < length5) {
                e(numberArr[i6]);
                i6++;
            }
        } else {
            Object[] objArr = (Object[]) obj;
            int length6 = objArr.length;
            while (i6 < length6) {
                e(objArr[i6]);
                i6++;
            }
        }
        jsonWriter.endArray();
        return this;
    }

    public final f f(Object obj, String str) throws IOException {
        boolean z7 = this.f;
        JsonWriter jsonWriter = this.f7453b;
        if (z7) {
            if (obj != null) {
                g();
                jsonWriter.name(str);
                e(obj);
            }
            return this;
        }
        g();
        jsonWriter.name(str);
        if (obj == null) {
            jsonWriter.nullValue();
        } else {
            e(obj);
        }
        return this;
    }

    public final void g() {
        if (!this.f7452a) {
            throw new IllegalStateException("Parent context used since this context was created. Cannot use this context anymore.");
        }
    }
}
