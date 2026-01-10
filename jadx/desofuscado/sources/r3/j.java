package r3;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f9502a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b, reason: collision with root package name */
    public final long f9503b;

    /* renamed from: c, reason: collision with root package name */
    public long f9504c;

    public j(long j10) {
        this.f9503b = j10;
    }

    public final synchronized Object a(Object obj) {
        i iVar;
        iVar = (i) this.f9502a.get(obj);
        return iVar != null ? iVar.f9500a : null;
    }

    public int b(Object obj) {
        return 1;
    }

    public final synchronized Object d(Object obj, Object obj2) {
        int iB = b(obj2);
        long j10 = iB;
        if (j10 >= this.f9503b) {
            c(obj, obj2);
            return null;
        }
        if (obj2 != null) {
            this.f9504c += j10;
        }
        i iVar = (i) this.f9502a.put(obj, obj2 == null ? null : new i(iB, obj2));
        if (iVar != null) {
            this.f9504c -= iVar.f9501b;
            if (!iVar.f9500a.equals(obj2)) {
                c(obj, iVar.f9500a);
            }
        }
        e(this.f9503b);
        return iVar != null ? iVar.f9500a : null;
    }

    public final synchronized void e(long j10) {
        while (this.f9504c > j10) {
            Iterator it = this.f9502a.entrySet().iterator();
            Map.Entry entry = (Map.Entry) it.next();
            i iVar = (i) entry.getValue();
            this.f9504c -= iVar.f9501b;
            Object key = entry.getKey();
            it.remove();
            c(key, iVar.f9500a);
        }
    }

    public void c(Object obj, Object obj2) {
    }
}
