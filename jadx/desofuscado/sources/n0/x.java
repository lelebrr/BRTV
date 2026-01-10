package n0;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x implements Iterator, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8363a;

    /* renamed from: b, reason: collision with root package name */
    public Iterator f8364b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f8365c;

    public x(j9.a aVar) {
        this.f8363a = 0;
        this.f8365c = new ArrayList();
        this.f8364b = aVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f8363a) {
        }
        return this.f8364b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f8363a) {
            case 0:
                Object next = this.f8364b.next();
                View view = (View) next;
                ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
                j9.a aVar = viewGroup != null ? new j9.a(1, viewGroup) : null;
                ArrayList arrayList = (ArrayList) this.f8365c;
                if (aVar == null || !aVar.hasNext()) {
                    while (!this.f8364b.hasNext() && !arrayList.isEmpty()) {
                        this.f8364b = (Iterator) x8.j.Y(arrayList);
                        if (arrayList.isEmpty()) {
                            throw new NoSuchElementException("List is empty.");
                        }
                        arrayList.remove(x8.k.O(arrayList));
                    }
                } else {
                    arrayList.add(this.f8364b);
                    this.f8364b = aVar;
                }
                return next;
            default:
                return ((q9.j) this.f8365c).f9375b.invoke(this.f8364b.next());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f8363a) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public x(q9.j jVar) {
        this.f8363a = 1;
        this.f8365c = jVar;
        this.f8364b = jVar.f9374a.iterator();
    }
}
