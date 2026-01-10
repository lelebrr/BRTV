package w8;

import java.io.Serializable;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m implements c, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public j9.j f10833a;

    /* renamed from: b, reason: collision with root package name */
    public Object f10834b;

    /* JADX WARN: Type inference failed for: r0v2, types: [i9.a, j9.j, java.lang.Object] */
    @Override // w8.c
    public final Object getValue() {
        if (this.f10834b == k.f10831a) {
            ?? r02 = this.f10833a;
            j9.i.c(r02);
            this.f10834b = r02.invoke();
            this.f10833a = null;
        }
        return this.f10834b;
    }

    public final String toString() {
        return this.f10834b != k.f10831a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
