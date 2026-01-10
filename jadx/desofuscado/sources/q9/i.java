package q9;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements Iterable, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ r9.c f9373a;

    public i(r9.c cVar) {
        this.f9373a = cVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new r9.b(this.f9373a);
    }
}
