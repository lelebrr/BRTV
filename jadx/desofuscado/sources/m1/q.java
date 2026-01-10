package m1;

import android.os.Build;
import android.text.TextUtils;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a, reason: collision with root package name */
    public s f8147a;

    public q(String str, int i6, int i10) {
        if (str == null) {
            throw new NullPointerException("package shouldn't be null");
        }
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("packageName should be nonempty");
        }
        if (Build.VERSION.SDK_INT < 28) {
            this.f8147a = new s(str, i6, i10);
            return;
        }
        r rVar = new r(str, i6, i10);
        l0.f.n(i6, i10, str);
        this.f8147a = rVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        return this.f8147a.equals(((q) obj).f8147a);
    }

    public final int hashCode() {
        return this.f8147a.hashCode();
    }
}
