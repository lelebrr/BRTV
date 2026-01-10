package e0;

import android.content.res.Resources;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f6392a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources.Theme f6393b;

    public l(Resources resources, Resources.Theme theme) {
        this.f6392a = resources;
        this.f6393b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        return this.f6392a.equals(lVar.f6392a) && Objects.equals(this.f6393b, lVar.f6393b);
    }

    public final int hashCode() {
        return Objects.hash(this.f6392a, this.f6393b);
    }
}
