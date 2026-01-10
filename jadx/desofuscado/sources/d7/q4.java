package d7;

import java.io.Serializable;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q4 implements b7.e0, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6245a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6246b;

    public q4(int i6) {
        this.f6245a = i6;
        switch (i6) {
            case 1:
                d0.d(2, "expectedValuesPerKey");
                this.f6246b = 2;
                break;
            default:
                d0.d(2, "expectedValuesPerKey");
                this.f6246b = 2;
                break;
        }
    }

    @Override // b7.e0
    public final Object get() {
        switch (this.f6245a) {
            case 0:
                return new ArrayList(this.f6246b);
            default:
                return k0.d(this.f6246b);
        }
    }
}
