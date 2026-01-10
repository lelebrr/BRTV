package d7;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s0 extends s5 {

    /* renamed from: a, reason: collision with root package name */
    public int f6259a;

    /* renamed from: b, reason: collision with root package name */
    public Object f6260b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f6261c;
    public final Iterator d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6262e;

    public s0() {
        this.f6259a = 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.util.Iterator
    public final boolean hasNext() {
        Object key;
        e0 e0VarO;
        Object r1Var;
        b7.b.o(this.f6259a != 4);
        int iA = u.h.a(this.f6259a);
        if (iA == 0) {
            return true;
        }
        if (iA == 2) {
            return false;
        }
        this.f6259a = 4;
        switch (this.f6261c) {
            case 0:
                do {
                    Iterator it = this.d;
                    if (!it.hasNext()) {
                        this.f6259a = 3;
                        r1Var = null;
                        break;
                    } else {
                        Map.Entry entry = (Map.Entry) it.next();
                        key = entry.getKey();
                        e0VarO = y0.o((Collection) entry.getValue(), new x0(((u0) ((d) this.f6262e).f6118c).d, key));
                    }
                } while (e0VarO.isEmpty());
                r1Var = new r1(key, e0VarO);
                break;
            case 1:
                do {
                    Iterator it2 = this.d;
                    if (!it2.hasNext()) {
                        this.f6259a = 3;
                        r1Var = null;
                        break;
                    } else {
                        r1Var = it2.next();
                    }
                } while (!((b7.n) this.f6262e).apply(r1Var));
            default:
                do {
                    Iterator it3 = this.d;
                    if (!it3.hasNext()) {
                        this.f6259a = 3;
                        r1Var = null;
                        break;
                    } else {
                        r1Var = it3.next();
                    }
                } while (!((m5) this.f6262e).f6220b.contains(r1Var));
        }
        this.f6260b = r1Var;
        if (this.f6259a == 3) {
            return false;
        }
        this.f6259a = 1;
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f6259a = 2;
        Object obj = this.f6260b;
        this.f6260b = null;
        return obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s0(d dVar) {
        this();
        this.f6261c = 0;
        this.f6262e = dVar;
        this.d = ((u0) dVar.f6118c).d.f.d().entrySet().iterator();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s0(Iterator it, b7.n nVar) {
        this();
        this.f6261c = 1;
        this.d = it;
        this.f6262e = nVar;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public s0(m5 m5Var) {
        this();
        this.f6261c = 2;
        this.f6262e = m5Var;
        this.d = m5Var.f6219a.iterator();
    }
}
