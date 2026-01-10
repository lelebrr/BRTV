package d7;

import java.util.Collection;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y extends j4 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6303b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ z f6304c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ y(z zVar, int i6) {
        super(1);
        this.f6303b = i6;
        this.f6304c = zVar;
    }

    @Override // d7.j4
    public final v4 d() {
        switch (this.f6303b) {
            case 0:
                return this.f6304c;
            default:
                return (w0) this.f6304c;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f6303b) {
            case 0:
                return this.f6304c.g();
            default:
                return ((w0) this.f6304c).g();
        }
    }

    @Override // d7.j4, d7.p5, java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean removeAll(Collection collection) {
        switch (this.f6303b) {
            case 1:
                return ((w0) this.f6304c).d.p(new v0(new b7.q(collection)));
            default:
                return super.removeAll(collection);
        }
    }

    @Override // d7.j4, d7.p5, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean retainAll(Collection collection) {
        switch (this.f6303b) {
            case 1:
                return ((w0) this.f6304c).d.p(new v0(new b7.t(new b7.q(collection))));
            default:
                return super.retainAll(collection);
        }
    }

    @Override // d7.j4, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f6303b) {
            case 0:
                return this.f6304c.e();
            default:
                return ((w0) this.f6304c).d.keySet().size();
        }
    }
}
