package q9;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements c {

    /* renamed from: a, reason: collision with root package name */
    public final c f9366a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9367b;

    public b(c cVar, int i6) {
        this.f9366a = cVar;
        this.f9367b = i6;
        if (i6 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i6 + '.').toString());
    }

    @Override // q9.c
    public final Iterator iterator() {
        return new j9.a(this);
    }
}
