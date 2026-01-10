package m9;

import java.util.Random;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends ThreadLocal {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8277a;

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        switch (this.f8277a) {
            case 0:
                return new Random();
            case 1:
                return 0L;
            case 2:
                return new ua.d();
            default:
                return Boolean.FALSE;
        }
    }
}
