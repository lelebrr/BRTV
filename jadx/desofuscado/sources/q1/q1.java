package q1;

import android.text.TextUtils;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q1 {

    /* renamed from: a, reason: collision with root package name */
    public final String f9119a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9120b;

    public q1(p1 p1Var) {
        this.f9119a = p1Var.f9108b;
        this.f9120b = p1Var.f9107a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q1)) {
            return false;
        }
        q1 q1Var = (q1) obj;
        return this.f9119a.equals(q1Var.f9119a) && this.f9120b == q1Var.f9120b && TextUtils.equals(null, null);
    }

    public final int hashCode() {
        return Objects.hash(this.f9119a, Integer.valueOf(this.f9120b), 0, 0, null);
    }
}
