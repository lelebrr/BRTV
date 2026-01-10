package d7;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c3 extends WeakReference implements f3 {

    /* renamed from: a, reason: collision with root package name */
    public final int f6106a;

    public c3(Object obj, int i6, ReferenceQueue referenceQueue) {
        super(obj, referenceQueue);
        this.f6106a = i6;
    }

    @Override // d7.f3
    public f3 b() {
        return null;
    }

    @Override // d7.f3
    public final int c() {
        return this.f6106a;
    }

    @Override // d7.f3
    public final Object getKey() {
        return get();
    }
}
