package d7;

import java.io.Serializable;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.LinkedHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class c2 {

    /* renamed from: a, reason: collision with root package name */
    public Serializable f6105a;

    public c2(int i6) {
        switch (i6) {
            case 2:
                char[] cArr = r3.n.f9510a;
                this.f6105a = new ArrayDeque(20);
                break;
            default:
                this.f6105a = new LinkedHashMap();
                break;
        }
    }

    public int a(Iterable iterable) {
        if (iterable instanceof Collection) {
            return Math.max(4, ((Collection) iterable).size());
        }
        return 4;
    }

    public p1 b(int i6) {
        return u1.l(i6);
    }

    public void c(y2.h hVar) {
        ArrayDeque arrayDeque = (ArrayDeque) this.f6105a;
        if (arrayDeque.size() < 20) {
            arrayDeque.offer(hVar);
        }
    }

    public c2 d(Object obj, Object obj2) {
        d0.c(obj, obj2);
        i0 i0VarA = (i0) this.f6105a;
        if (i0VarA == null) {
            i0VarA = i0.a();
            this.f6105a = i0VarA;
        }
        p1 p1VarB = (p1) i0VarA.get(obj);
        if (p1VarB == null) {
            p1VarB = b(4);
            i0 i0VarA2 = (i0) this.f6105a;
            if (i0VarA2 == null) {
                i0VarA2 = i0.a();
                this.f6105a = i0VarA2;
            }
            i0VarA2.put(obj, p1VarB);
        }
        p1VarB.b(obj2);
        return this;
    }
}
