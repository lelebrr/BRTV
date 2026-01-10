package n0;

import android.view.DisplayCutout;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayCutout f8333a;

    public k(DisplayCutout displayCutout) {
        this.f8333a = displayCutout;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        return Objects.equals(this.f8333a, ((k) obj).f8333a);
    }

    public final int hashCode() {
        return this.f8333a.hashCode();
    }

    public final String toString() {
        return "DisplayCutoutCompat{" + this.f8333a + "}";
    }
}
