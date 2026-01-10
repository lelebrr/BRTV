package q1;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b0 extends c0 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f8937a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public Executor f8938b;

    /* renamed from: c, reason: collision with root package name */
    public a0 f8939c;
    public w d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f8940e;

    public String k() {
        return null;
    }

    public String l() {
        return null;
    }

    public final void m(w wVar, ArrayList arrayList) {
        if (wVar == null) {
            throw new NullPointerException("groupRoute must not be null");
        }
        synchronized (this.f8937a) {
            try {
                Executor executor = this.f8938b;
                if (executor != null) {
                    executor.execute(new y(this, this.f8939c, wVar, arrayList, 0));
                } else {
                    this.d = wVar;
                    this.f8940e = new ArrayList(arrayList);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void n(String str);

    public abstract void o(String str);

    public abstract void p(List list);

    public final void q(Executor executor, a0 a0Var) {
        synchronized (this.f8937a) {
            try {
                if (executor == null) {
                    throw new NullPointerException("Executor shouldn't be null");
                }
                if (a0Var == null) {
                    throw new NullPointerException("Listener shouldn't be null");
                }
                this.f8938b = executor;
                this.f8939c = a0Var;
                ArrayList arrayList = this.f8940e;
                if (arrayList != null && !arrayList.isEmpty()) {
                    w wVar = this.d;
                    ArrayList arrayList2 = this.f8940e;
                    this.d = null;
                    this.f8940e = null;
                    this.f8938b.execute(new y(this, a0Var, wVar, arrayList2, 1));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
