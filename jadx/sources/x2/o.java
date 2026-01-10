package x2;

import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class o implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10925a;

    public o(ArrayList arrayList) {
        this.f10925a = arrayList;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f10925a.iterator();
    }
}
