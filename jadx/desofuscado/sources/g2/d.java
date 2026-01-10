package g2;

import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends e {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f7071a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f7072b;

    /* renamed from: c, reason: collision with root package name */
    public final d2.f f7073c;

    public d(Drawable drawable, boolean z7, d2.f fVar) {
        this.f7071a = drawable;
        this.f7072b = z7;
        this.f7073c = fVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (j9.i.a(this.f7071a, dVar.f7071a) && this.f7072b == dVar.f7072b && this.f7073c == dVar.f7073c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f7073c.hashCode() + (((this.f7071a.hashCode() * 31) + (this.f7072b ? 1231 : 1237)) * 31);
    }
}
