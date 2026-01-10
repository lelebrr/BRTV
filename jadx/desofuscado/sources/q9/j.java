package q9;

import i9.l;
import java.util.Iterator;
import n0.x;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j implements c {

    /* renamed from: a, reason: collision with root package name */
    public final c f9374a;

    /* renamed from: b, reason: collision with root package name */
    public final l f9375b;

    public j(c cVar, l lVar) {
        this.f9374a = cVar;
        this.f9375b = lVar;
    }

    @Override // q9.c
    public final Iterator iterator() {
        return new x(this);
    }
}
