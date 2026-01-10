package n2;

import android.content.Context;
import android.util.DisplayMetrics;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements i {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8376a;

    public c(Context context) {
        this.f8376a = context;
    }

    @Override // n2.i
    public final Object a(c2.i iVar) {
        DisplayMetrics displayMetrics = this.f8376a.getResources().getDisplayMetrics();
        a aVar = new a(Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        return new h(aVar, aVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c) {
            if (j9.i.a(this.f8376a, ((c) obj).f8376a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f8376a.hashCode();
    }
}
