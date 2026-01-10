package d7;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p2 extends h1 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Iterable f6239b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.common.util.concurrent.m f6240c;

    public p2(Iterable iterable, com.google.common.util.concurrent.m mVar) {
        this.f6239b = iterable;
        this.f6240c = mVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new r2(this.f6239b.iterator(), this.f6240c);
    }
}
