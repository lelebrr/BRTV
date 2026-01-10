package o9;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a implements Iterable, k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final char f8634a = (char) d.p(1, 0, 1);

    /* renamed from: b, reason: collision with root package name */
    public final int f8635b = 1;

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new b(this.f8634a, this.f8635b);
    }
}
