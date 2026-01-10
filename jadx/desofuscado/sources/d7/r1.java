package d7;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r1 extends t implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6251a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f6252b;

    public r1(Object obj, Object obj2) {
        this.f6251a = obj;
        this.f6252b = obj2;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f6251a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f6252b;
    }

    @Override // d7.t, java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
