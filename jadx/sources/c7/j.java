package c7;

import java.util.AbstractQueue;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j extends AbstractQueue {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3429a;

    /* renamed from: b, reason: collision with root package name */
    public final g f3430b;

    public j(int i6) {
        this.f3429a = i6;
        switch (i6) {
            case 1:
                h hVar = new h(1);
                hVar.f3424b = hVar;
                hVar.f3425c = hVar;
                this.f3430b = hVar;
                break;
            default:
                h hVar2 = new h(0);
                hVar2.f3424b = hVar2;
                hVar2.f3425c = hVar2;
                this.f3430b = hVar2;
                break;
        }
    }

    @Override // java.util.AbstractQueue, java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        p pVar = p.f3444a;
        g gVar = this.f3430b;
        switch (this.f3429a) {
            case 0:
                h hVar = (h) gVar;
                c0 c0Var = hVar.f3424b;
                while (c0Var != hVar) {
                    c0 c0VarI = c0Var.i();
                    e eVar = b0.f3400s;
                    c0Var.h(pVar);
                    c0Var.n(pVar);
                    c0Var = c0VarI;
                }
                hVar.f3424b = hVar;
                hVar.f3425c = hVar;
                break;
            default:
                h hVar2 = (h) gVar;
                c0 c0Var2 = hVar2.f3424b;
                while (c0Var2 != hVar2) {
                    c0 c0VarO = c0Var2.o();
                    e eVar2 = b0.f3400s;
                    c0Var2.f(pVar);
                    c0Var2.g(pVar);
                    c0Var2 = c0VarO;
                }
                hVar2.f3424b = hVar2;
                hVar2.f3425c = hVar2;
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.f3429a) {
            case 0:
                if (((c0) obj).i() != p.f3444a) {
                }
                break;
            default:
                if (((c0) obj).o() != p.f3444a) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        switch (this.f3429a) {
            case 0:
                h hVar = (h) this.f3430b;
                if (hVar.f3424b == hVar) {
                }
                break;
            default:
                h hVar2 = (h) this.f3430b;
                if (hVar2.f3424b == hVar2) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f3429a) {
            case 0:
                h hVar = (h) this.f3430b;
                c0 c0Var = hVar.f3424b;
                if (c0Var == hVar) {
                    c0Var = null;
                }
                return new i(this, c0Var, 0);
            default:
                h hVar2 = (h) this.f3430b;
                c0 c0Var2 = hVar2.f3424b;
                if (c0Var2 == hVar2) {
                    c0Var2 = null;
                }
                return new i(this, c0Var2, 1);
        }
    }

    @Override // java.util.Queue
    public final boolean offer(Object obj) {
        g gVar = this.f3430b;
        switch (this.f3429a) {
            case 0:
                c0 c0Var = (c0) obj;
                c0 c0VarE = c0Var.e();
                c0 c0VarI = c0Var.i();
                e eVar = b0.f3400s;
                c0VarE.h(c0VarI);
                c0VarI.n(c0VarE);
                h hVar = (h) gVar;
                c0 c0Var2 = hVar.f3425c;
                c0Var2.h(c0Var);
                c0Var.n(c0Var2);
                c0Var.h(hVar);
                hVar.f3425c = c0Var;
                break;
            default:
                c0 c0Var3 = (c0) obj;
                c0 c0VarM = c0Var3.m();
                c0 c0VarO = c0Var3.o();
                e eVar2 = b0.f3400s;
                c0VarM.f(c0VarO);
                c0VarO.g(c0VarM);
                h hVar2 = (h) gVar;
                c0 c0Var4 = hVar2.f3425c;
                c0Var4.f(c0Var3);
                c0Var3.g(c0Var4);
                c0Var3.f(hVar2);
                hVar2.f3425c = c0Var3;
                break;
        }
        return true;
    }

    @Override // java.util.Queue
    public final Object peek() {
        switch (this.f3429a) {
            case 0:
                h hVar = (h) this.f3430b;
                c0 c0Var = hVar.f3424b;
                if (c0Var == hVar) {
                    return null;
                }
                return c0Var;
            default:
                h hVar2 = (h) this.f3430b;
                c0 c0Var2 = hVar2.f3424b;
                if (c0Var2 == hVar2) {
                    return null;
                }
                return c0Var2;
        }
    }

    @Override // java.util.Queue
    public final Object poll() {
        switch (this.f3429a) {
            case 0:
                h hVar = (h) this.f3430b;
                c0 c0Var = hVar.f3424b;
                if (c0Var == hVar) {
                    return null;
                }
                remove(c0Var);
                return c0Var;
            default:
                h hVar2 = (h) this.f3430b;
                c0 c0Var2 = hVar2.f3424b;
                if (c0Var2 == hVar2) {
                    return null;
                }
                remove(c0Var2);
                return c0Var2;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        p pVar = p.f3444a;
        switch (this.f3429a) {
            case 0:
                c0 c0Var = (c0) obj;
                c0 c0VarE = c0Var.e();
                c0 c0VarI = c0Var.i();
                e eVar = b0.f3400s;
                c0VarE.h(c0VarI);
                c0VarI.n(c0VarE);
                c0Var.h(pVar);
                c0Var.n(pVar);
                if (c0VarI != pVar) {
                }
                break;
            default:
                c0 c0Var2 = (c0) obj;
                c0 c0VarM = c0Var2.m();
                c0 c0VarO = c0Var2.o();
                e eVar2 = b0.f3400s;
                c0VarM.f(c0VarO);
                c0VarO.g(c0VarM);
                c0Var2.f(pVar);
                c0Var2.g(pVar);
                if (c0VarO != pVar) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        switch (this.f3429a) {
            case 0:
                h hVar = (h) this.f3430b;
                int i6 = 0;
                for (c0 c0VarI = hVar.f3424b; c0VarI != hVar; c0VarI = c0VarI.i()) {
                    i6++;
                }
                return i6;
            default:
                h hVar2 = (h) this.f3430b;
                int i10 = 0;
                for (c0 c0VarO = hVar2.f3424b; c0VarO != hVar2; c0VarO = c0VarO.o()) {
                    i10++;
                }
                return i10;
        }
    }
}
