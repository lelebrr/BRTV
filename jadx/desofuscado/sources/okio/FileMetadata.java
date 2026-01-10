package okio;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.bumptech.glide.d;
import j9.e;
import j9.f;
import j9.i;
import j9.o;
import j9.q;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import p9.b;
import x8.j;
import x8.s;
import x8.u;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class FileMetadata {
    private final Long createdAtMillis;
    private final Map<b, Object> extras;
    private final boolean isDirectory;
    private final boolean isRegularFile;
    private final Long lastAccessedAtMillis;
    private final Long lastModifiedAtMillis;
    private final Long size;
    private final Path symlinkTarget;

    public FileMetadata() {
        this(false, false, null, null, null, null, null, null, 255, null);
    }

    public final FileMetadata copy(boolean z7, boolean z10, Path path, Long l9, Long l10, Long l11, Long l12, Map<b, ? extends Object> map) {
        i.f(map, "extras");
        return new FileMetadata(z7, z10, path, l9, l10, l11, l12, map);
    }

    public final <T> T extra(b bVar) {
        boolean zIsInstance;
        String str;
        i.f(bVar, SessionDescription.ATTR_TYPE);
        T t5 = (T) this.extras.get(bVar);
        String canonicalName = null;
        if (t5 == null) {
            return null;
        }
        Class cls = ((e) bVar).f7469a;
        i.f(cls, "jClass");
        Map map = e.f7467b;
        i.d(map, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
        Integer num = (Integer) map.get(cls);
        if (num != null) {
            zIsInstance = q.c(num.intValue(), t5);
        } else {
            zIsInstance = (cls.isPrimitive() ? d.p(o.a(cls)) : cls).isInstance(t5);
        }
        if (zIsInstance) {
            return t5;
        }
        StringBuilder sb = new StringBuilder("Value cannot be cast to ");
        if (!cls.isAnonymousClass() && !cls.isLocalClass()) {
            boolean zIsArray = cls.isArray();
            HashMap map2 = e.f7468c;
            if (zIsArray) {
                Class<?> componentType = cls.getComponentType();
                if (componentType.isPrimitive() && (str = (String) map2.get(componentType.getName())) != null) {
                    canonicalName = str.concat("Array");
                }
                if (canonicalName == null) {
                    canonicalName = "kotlin.Array";
                }
            } else {
                canonicalName = (String) map2.get(cls.getName());
                if (canonicalName == null) {
                    canonicalName = cls.getCanonicalName();
                }
            }
        }
        sb.append(canonicalName);
        throw new ClassCastException(sb.toString());
    }

    public final Long getCreatedAtMillis() {
        return this.createdAtMillis;
    }

    public final Map<b, Object> getExtras() {
        return this.extras;
    }

    public final Long getLastAccessedAtMillis() {
        return this.lastAccessedAtMillis;
    }

    public final Long getLastModifiedAtMillis() {
        return this.lastModifiedAtMillis;
    }

    public final Long getSize() {
        return this.size;
    }

    public final Path getSymlinkTarget() {
        return this.symlinkTarget;
    }

    public final boolean isDirectory() {
        return this.isDirectory;
    }

    public final boolean isRegularFile() {
        return this.isRegularFile;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.isRegularFile) {
            arrayList.add("isRegularFile");
        }
        if (this.isDirectory) {
            arrayList.add("isDirectory");
        }
        if (this.size != null) {
            arrayList.add("byteCount=" + this.size);
        }
        if (this.createdAtMillis != null) {
            arrayList.add("createdAt=" + this.createdAtMillis);
        }
        if (this.lastModifiedAtMillis != null) {
            arrayList.add("lastModifiedAt=" + this.lastModifiedAtMillis);
        }
        if (this.lastAccessedAtMillis != null) {
            arrayList.add("lastAccessedAt=" + this.lastAccessedAtMillis);
        }
        if (!this.extras.isEmpty()) {
            arrayList.add("extras=" + this.extras);
        }
        return j.X(arrayList, ", ", "FileMetadata(", ")", null, 56);
    }

    public FileMetadata(boolean z7, boolean z10, Path path, Long l9, Long l10, Long l11, Long l12, Map<b, ? extends Object> map) {
        i.f(map, "extras");
        this.isRegularFile = z7;
        this.isDirectory = z10;
        this.symlinkTarget = path;
        this.size = l9;
        this.createdAtMillis = l10;
        this.lastModifiedAtMillis = l11;
        this.lastAccessedAtMillis = l12;
        this.extras = u.r(map);
    }

    public /* synthetic */ FileMetadata(boolean z7, boolean z10, Path path, Long l9, Long l10, Long l11, Long l12, Map map, int i6, f fVar) {
        this((i6 & 1) != 0 ? false : z7, (i6 & 2) == 0 ? z10 : false, (i6 & 4) != 0 ? null : path, (i6 & 8) != 0 ? null : l9, (i6 & 16) != 0 ? null : l10, (i6 & 32) != 0 ? null : l11, (i6 & 64) == 0 ? l12 : null, (i6 & 128) != 0 ? s.f11099a : map);
    }
}
