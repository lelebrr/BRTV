package androidx.mediarouter.app;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2733a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2734b;

    public y(Object obj) {
        this.f2733a = obj;
        if (obj instanceof String) {
            this.f2734b = 1;
        } else {
            if (!(obj instanceof q1.s0)) {
                throw new IllegalArgumentException();
            }
            this.f2734b = 2;
        }
    }
}
