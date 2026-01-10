package m2;

import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends j {

    /* renamed from: a, reason: collision with root package name */
    public final Drawable f8179a;

    /* renamed from: b, reason: collision with root package name */
    public final i f8180b;

    /* renamed from: c, reason: collision with root package name */
    public final Throwable f8181c;

    public e(Drawable drawable, i iVar, Throwable th) {
        this.f8179a = drawable;
        this.f8180b = iVar;
        this.f8181c = th;
    }

    @Override // m2.j
    public final Drawable a() {
        return this.f8179a;
    }

    @Override // m2.j
    public final i b() {
        return this.f8180b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (j9.i.a(this.f8179a, eVar.f8179a)) {
                if (j9.i.a(this.f8180b, eVar.f8180b) && j9.i.a(this.f8181c, eVar.f8181c)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        Drawable drawable = this.f8179a;
        return this.f8181c.hashCode() + ((this.f8180b.hashCode() + ((drawable != null ? drawable.hashCode() : 0) * 31)) * 31);
    }
}
