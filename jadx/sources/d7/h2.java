package d7;

import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h2 extends s5 {

    /* renamed from: a, reason: collision with root package name */
    public int f6157a;

    /* renamed from: b, reason: collision with root package name */
    public Object f6158b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s5 f6159c;

    public h2(s5 s5Var) {
        this.f6159c = s5Var;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f6157a > 0 || this.f6159c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f6157a <= 0) {
            w4 w4Var = (w4) this.f6159c.next();
            this.f6158b = w4Var.b();
            this.f6157a = w4Var.a();
        }
        this.f6157a--;
        Object obj = this.f6158b;
        Objects.requireNonNull(obj);
        return obj;
    }
}
