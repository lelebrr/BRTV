package m2;

import android.graphics.drawable.Drawable;
import coil.memory.MemoryCache$Key;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q extends j {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f8245a;

    /* renamed from: b, reason: collision with root package name */
    public final i f8246b;

    /* renamed from: c, reason: collision with root package name */
    public final d2.f f8247c;
    public final MemoryCache$Key d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8248e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f8249g;

    public q(Drawable drawable, i iVar, d2.f fVar, MemoryCache$Key memoryCache$Key, String str, boolean z7, boolean z10) {
        this.f8245a = drawable;
        this.f8246b = iVar;
        this.f8247c = fVar;
        this.d = memoryCache$Key;
        this.f8248e = str;
        this.f = z7;
        this.f8249g = z10;
    }

    @Override // m2.j
    public final Drawable a() {
        return this.f8245a;
    }

    @Override // m2.j
    public final i b() {
        return this.f8246b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            if (j9.i.a(this.f8245a, qVar.f8245a)) {
                if (j9.i.a(this.f8246b, qVar.f8246b) && this.f8247c == qVar.f8247c && j9.i.a(this.d, qVar.d) && j9.i.a(this.f8248e, qVar.f8248e) && this.f == qVar.f && this.f8249g == qVar.f8249g) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f8247c.hashCode() + ((this.f8246b.hashCode() + (this.f8245a.hashCode() * 31)) * 31)) * 31;
        MemoryCache$Key memoryCache$Key = this.d;
        int iHashCode2 = (iHashCode + (memoryCache$Key != null ? memoryCache$Key.hashCode() : 0)) * 31;
        String str = this.f8248e;
        return ((((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31) + (this.f ? 1231 : 1237)) * 31) + (this.f8249g ? 1231 : 1237);
    }
}
