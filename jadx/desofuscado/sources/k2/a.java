package k2;

import android.graphics.Bitmap;
import j9.i;
import java.util.Map;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f7697a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f7698b;

    public a(Bitmap bitmap, Map map) {
        this.f7697a = bitmap;
        this.f7698b = map;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (i.a(this.f7697a, aVar.f7697a) && i.a(this.f7698b, aVar.f7698b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f7698b.hashCode() + (this.f7697a.hashCode() * 31);
    }

    public final String toString() {
        return "Value(bitmap=" + this.f7697a + ", extras=" + this.f7698b + ')';
    }
}
