package d7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z4 extends w4 implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6320a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6321b;

    public z4(int i6, Object obj) {
        this.f6320a = obj;
        this.f6321b = i6;
        d0.d(i6, "count");
    }

    @Override // d7.w4
    public final int a() {
        return this.f6321b;
    }

    @Override // d7.w4
    public final Object b() {
        return this.f6320a;
    }
}
