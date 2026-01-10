package androidx.appcompat.app;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n0 implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final Object f338a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayDeque f339b = new ArrayDeque();

    /* renamed from: c, reason: collision with root package name */
    public final o0 f340c;
    public Runnable d;

    public n0(o0 o0Var) {
        this.f340c = o0Var;
    }

    public final void a() {
        synchronized (this.f338a) {
            try {
                Runnable runnable = (Runnable) this.f339b.poll();
                this.d = runnable;
                if (runnable != null) {
                    this.f340c.execute(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        synchronized (this.f338a) {
            try {
                this.f339b.add(new m0(this, 0, runnable));
                if (this.d == null) {
                    a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
