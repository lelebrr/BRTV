package n7;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i implements Iterator {

    /* renamed from: a, reason: collision with root package name */
    public k f8481a;

    /* renamed from: b, reason: collision with root package name */
    public k f8482b = null;

    /* renamed from: c, reason: collision with root package name */
    public int f8483c;
    public final /* synthetic */ l d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f8484e;

    public i(l lVar, int i6) {
        this.f8484e = i6;
        this.d = lVar;
        this.f8481a = lVar.f8497e.d;
        this.f8483c = lVar.d;
    }

    public final Object a() {
        return b();
    }

    public final k b() {
        k kVar = this.f8481a;
        l lVar = this.d;
        if (kVar == lVar.f8497e) {
            throw new NoSuchElementException();
        }
        if (lVar.d != this.f8483c) {
            throw new ConcurrentModificationException();
        }
        this.f8481a = kVar.d;
        this.f8482b = kVar;
        return kVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8481a != this.d.f8497e;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.f8484e) {
            case 1:
                return b().f;
            default:
                return a();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        k kVar = this.f8482b;
        if (kVar == null) {
            throw new IllegalStateException();
        }
        l lVar = this.d;
        lVar.c(kVar, true);
        this.f8482b = null;
        this.f8483c = lVar.d;
    }
}
