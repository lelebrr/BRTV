package d7;

import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v2 extends s5 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6282a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6283b;

    public v2(Object obj) {
        this.f6282a = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f6283b;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f6283b) {
            throw new NoSuchElementException();
        }
        this.f6283b = true;
        return this.f6282a;
    }
}
