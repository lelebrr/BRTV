package b3;

import android.text.TextUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements l {

    /* renamed from: b, reason: collision with root package name */
    public final Map f3209b;

    /* renamed from: c, reason: collision with root package name */
    public volatile Map f3210c;

    public o(Map map) {
        this.f3209b = Collections.unmodifiableMap(map);
    }

    public final HashMap a() {
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f3209b.entrySet()) {
            List list = (List) entry.getValue();
            StringBuilder sb = new StringBuilder();
            int size = list.size();
            for (int i6 = 0; i6 < size; i6++) {
                String str = ((n) list.get(i6)).f3208a;
                if (!TextUtils.isEmpty(str)) {
                    sb.append(str);
                    if (i6 != list.size() - 1) {
                        sb.append(',');
                    }
                }
            }
            String string = sb.toString();
            if (!TextUtils.isEmpty(string)) {
                map.put(entry.getKey(), string);
            }
        }
        return map;
    }

    public final Map b() {
        if (this.f3210c == null) {
            synchronized (this) {
                try {
                    if (this.f3210c == null) {
                        this.f3210c = Collections.unmodifiableMap(a());
                    }
                } finally {
                }
            }
        }
        return this.f3210c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof o) {
            return this.f3209b.equals(((o) obj).f3209b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3209b.hashCode();
    }

    public final String toString() {
        return "LazyHeaders{headers=" + this.f3209b + '}';
    }
}
