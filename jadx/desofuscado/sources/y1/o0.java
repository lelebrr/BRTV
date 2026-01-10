package y1;

import android.view.ViewGroup;
import android.view.WindowId;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class o0 {

    /* renamed from: a, reason: collision with root package name */
    public final WindowId f11318a;

    public o0(ViewGroup viewGroup) {
        this.f11318a = viewGroup.getWindowId();
    }

    public final boolean equals(Object obj) {
        return (obj instanceof o0) && ((o0) obj).f11318a.equals(this.f11318a);
    }

    public final int hashCode() {
        return this.f11318a.hashCode();
    }
}
