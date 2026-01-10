package c7;

import d7.b4;
import d7.c4;
import d7.f3;
import d7.h3;
import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class n implements Iterator {

    /* renamed from: b, reason: collision with root package name */
    public int f3437b;
    public AtomicReferenceArray d;

    /* renamed from: e, reason: collision with root package name */
    public ReentrantLock f3439e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public Map.Entry f3440g;

    /* renamed from: h, reason: collision with root package name */
    public Map.Entry f3441h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ AbstractMap f3442i;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3436a = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f3438c = -1;

    public n(c4 c4Var) {
        this.f3442i = c4Var;
        this.f3437b = c4Var.f6110c.length - 1;
        a();
    }

    public final void a() {
        switch (this.f3436a) {
            case 0:
                this.f3440g = null;
                if (!f() && !g()) {
                    while (true) {
                        int i6 = this.f3437b;
                        if (i6 < 0) {
                            break;
                        } else {
                            q[] qVarArr = ((b0) this.f3442i).f3404c;
                            this.f3437b = i6 - 1;
                            q qVar = qVarArr[i6];
                            this.f3439e = qVar;
                            if (qVar.f3447b != 0) {
                                this.d = ((q) this.f3439e).f;
                                this.f3438c = r0.length() - 1;
                                if (g()) {
                                    break;
                                }
                            }
                        }
                    }
                }
                break;
            default:
                this.f3440g = null;
                if (!f() && !g()) {
                    while (true) {
                        int i10 = this.f3437b;
                        if (i10 < 0) {
                            break;
                        } else {
                            h3[] h3VarArr = ((c4) this.f3442i).f6110c;
                            this.f3437b = i10 - 1;
                            h3 h3Var = h3VarArr[i10];
                            this.f3439e = h3Var;
                            if (h3Var.f6162b != 0) {
                                this.d = ((h3) this.f3439e).f6164e;
                                this.f3438c = r0.length() - 1;
                                if (g()) {
                                    break;
                                }
                            }
                        }
                    }
                }
                break;
        }
    }

    public boolean b(c0 c0Var) {
        Object obj;
        b0 b0Var = (b0) this.f3442i;
        try {
            long jA = b0Var.f3412m.a();
            Object key = c0Var.getKey();
            Object obj2 = null;
            if (c0Var.getKey() != null && (obj = c0Var.a().get()) != null && !b0Var.d(c0Var, jA)) {
                obj2 = obj;
            }
            if (obj2 == null) {
                ((q) this.f3439e).j();
                return false;
            }
            this.f3440g = new a0(b0Var, key, obj2);
            ((q) this.f3439e).j();
            return true;
        } catch (Throwable th) {
            ((q) this.f3439e).j();
            throw th;
        }
    }

    public boolean c(f3 f3Var) {
        c4 c4Var = (c4) this.f3442i;
        try {
            Object key = f3Var.getKey();
            c4Var.getClass();
            Object value = f3Var.getKey() == null ? null : f3Var.getValue();
            if (value == null) {
                ((h3) this.f3439e).g();
                return false;
            }
            this.f3440g = new b4(c4Var, key, value);
            ((h3) this.f3439e).g();
            return true;
        } catch (Throwable th) {
            ((h3) this.f3439e).g();
            throw th;
        }
    }

    public a0 d() {
        a0 a0Var = (a0) this.f3440g;
        if (a0Var == null) {
            throw new NoSuchElementException();
        }
        this.f3441h = a0Var;
        a();
        return (a0) this.f3441h;
    }

    public b4 e() {
        b4 b4Var = (b4) this.f3440g;
        if (b4Var == null) {
            throw new NoSuchElementException();
        }
        this.f3441h = b4Var;
        a();
        return (b4) this.f3441h;
    }

    public final boolean f() {
        switch (this.f3436a) {
            case 0:
                c0 c0Var = (c0) this.f;
                if (c0Var != null) {
                    while (true) {
                        this.f = c0Var.b();
                        c0 c0Var2 = (c0) this.f;
                        if (c0Var2 == null) {
                            break;
                        } else if (b(c0Var2)) {
                            break;
                        } else {
                            c0Var = (c0) this.f;
                        }
                    }
                }
                break;
            default:
                f3 f3Var = (f3) this.f;
                if (f3Var != null) {
                    while (true) {
                        this.f = f3Var.b();
                        f3 f3Var2 = (f3) this.f;
                        if (f3Var2 == null) {
                            break;
                        } else if (c(f3Var2)) {
                            break;
                        } else {
                            f3Var = (f3) this.f;
                        }
                    }
                }
                break;
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final boolean g() {
        switch (this.f3436a) {
            case 0:
                while (true) {
                    int i6 = this.f3438c;
                    if (i6 < 0) {
                        break;
                    } else {
                        AtomicReferenceArray atomicReferenceArray = this.d;
                        this.f3438c = i6 - 1;
                        c0 c0Var = (c0) atomicReferenceArray.get(i6);
                        this.f = c0Var;
                        if (c0Var != null && (b(c0Var) || f())) {
                            break;
                        }
                    }
                }
                break;
            default:
                while (true) {
                    int i10 = this.f3438c;
                    if (i10 < 0) {
                        break;
                    } else {
                        AtomicReferenceArray atomicReferenceArray2 = this.d;
                        this.f3438c = i10 - 1;
                        f3 f3Var = (f3) atomicReferenceArray2.get(i10);
                        this.f = f3Var;
                        if (f3Var != null && (c(f3Var) || f())) {
                            break;
                        }
                    }
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f3436a) {
            case 0:
                if (((a0) this.f3440g) != null) {
                }
                break;
            default:
                if (((b4) this.f3440g) != null) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public Object next() {
        switch (this.f3436a) {
            case 0:
                return d();
            default:
                return e();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f3436a) {
            case 0:
                b7.b.o(((a0) this.f3441h) != null);
                ((b0) this.f3442i).remove(((a0) this.f3441h).f3395a);
                this.f3441h = null;
                break;
            default:
                b7.b.n("no calls to next() since the last call to remove()", ((b4) this.f3441h) != null);
                ((c4) this.f3442i).remove(((b4) this.f3441h).f6095a);
                this.f3441h = null;
                break;
        }
    }

    public n(b0 b0Var) {
        this.f3442i = b0Var;
        this.f3437b = b0Var.f3404c.length - 1;
        a();
    }
}
