package y2;

import android.graphics.Bitmap;
import r3.n;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class j implements h {

    /* renamed from: a, reason: collision with root package name */
    public final e f11367a;

    /* renamed from: b, reason: collision with root package name */
    public int f11368b;

    /* renamed from: c, reason: collision with root package name */
    public Bitmap.Config f11369c;

    public j(e eVar) {
        this.f11367a = eVar;
    }

    @Override // y2.h
    public final void a() {
        this.f11367a.c(this);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return this.f11368b == jVar.f11368b && n.b(this.f11369c, jVar.f11369c);
    }

    public final int hashCode() {
        int i6 = this.f11368b * 31;
        Bitmap.Config config = this.f11369c;
        return i6 + (config != null ? config.hashCode() : 0);
    }

    public final String toString() {
        return k.c(this.f11368b, this.f11369c);
    }
}
