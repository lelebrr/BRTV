package d2;

import android.graphics.drawable.BitmapDrawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final BitmapDrawable f6029a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f6030b;

    public g(BitmapDrawable bitmapDrawable, boolean z7) {
        this.f6029a = bitmapDrawable;
        this.f6030b = z7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (this.f6029a.equals(gVar.f6029a) && this.f6030b == gVar.f6030b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f6029a.hashCode() * 31) + (this.f6030b ? 1231 : 1237);
    }
}
