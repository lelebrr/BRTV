package d7;

import java.util.ArrayList;
import java.util.Collection;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 extends b {

    /* renamed from: h, reason: collision with root package name */
    public final transient int f6082h;

    public a0() {
        super(i0.b(12));
        d0.d(3, "expectedValuesPerKey");
        this.f6082h = 3;
    }

    @Override // d7.s
    public final Collection o() {
        return new ArrayList(this.f6082h);
    }
}
