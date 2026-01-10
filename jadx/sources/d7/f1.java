package d7;

import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f1 extends h1 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f6140b = 0;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6141c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f1(Iterable iterable, Iterable iterable2) {
        super(iterable);
        this.f6141c = iterable2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f6140b) {
            case 0:
                return ((Iterable) this.f6141c).iterator();
            default:
                g1 g1Var = new g1(this, ((Iterable[]) this.f6141c).length);
                t2 t2Var = new t2();
                t2Var.f6270b = s2.d;
                t2Var.f6271c = g1Var;
                return t2Var;
        }
    }

    public f1(Iterable[] iterableArr) {
        this.f6141c = iterableArr;
    }
}
