package d7;

import java.lang.ref.ReferenceQueue;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class w3 extends c3 implements y3 {

    /* renamed from: b, reason: collision with root package name */
    public volatile z3 f6289b;

    public w3(Object obj, int i6, ReferenceQueue referenceQueue) {
        super(obj, i6, referenceQueue);
        this.f6289b = c4.f6107j;
    }

    @Override // d7.y3
    public final z3 a() {
        return this.f6289b;
    }

    @Override // d7.f3
    public final Object getValue() {
        return this.f6289b.get();
    }
}
