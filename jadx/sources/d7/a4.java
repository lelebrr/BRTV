package d7;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a4 extends WeakReference implements z3 {

    /* renamed from: a, reason: collision with root package name */
    public final f3 f6088a;

    public a4(ReferenceQueue referenceQueue, Object obj, f3 f3Var) {
        super(obj, referenceQueue);
        this.f6088a = f3Var;
    }

    @Override // d7.z3
    public final f3 a() {
        return this.f6088a;
    }

    @Override // d7.z3
    public final z3 b(ReferenceQueue referenceQueue, y3 y3Var) {
        return new a4(referenceQueue, get(), y3Var);
    }
}
