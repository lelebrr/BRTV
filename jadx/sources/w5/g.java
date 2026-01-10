package w5;

import androidx.fragment.app.q;
import b5.l;
import k3.t;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10820a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public final t f10821b = new t(5);

    /* renamed from: c, reason: collision with root package name */
    public boolean f10822c;
    public Object d;

    /* renamed from: e, reason: collision with root package name */
    public Exception f10823e;

    public final void a(a aVar) {
        this.f10821b.h(new f(e.f10816a, aVar));
        g();
    }

    public final void b(c cVar) {
        this.f10821b.h(new f(e.f10816a, cVar));
        g();
    }

    public final Exception c() {
        Exception exc;
        synchronized (this.f10820a) {
            exc = this.f10823e;
        }
        return exc;
    }

    public final Object d() {
        Object obj;
        synchronized (this.f10820a) {
            try {
                l.g("Task is not yet complete", this.f10822c);
                Exception exc = this.f10823e;
                if (exc != null) {
                    throw new q(exc, 11);
                }
                obj = this.d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return obj;
    }

    public final boolean e() {
        boolean z7;
        synchronized (this.f10820a) {
            try {
                z7 = false;
                if (this.f10822c && this.f10823e == null) {
                    z7 = true;
                }
            } finally {
            }
        }
        return z7;
    }

    public final void f() {
        boolean z7;
        if (this.f10822c) {
            int i6 = k8.d.f7757a;
            synchronized (this.f10820a) {
                z7 = this.f10822c;
            }
            if (!z7) {
                throw new IllegalStateException("DuplicateTaskCompletionException can only be created from completed Task.");
            }
            Exception excC = c();
        }
    }

    public final void g() {
        synchronized (this.f10820a) {
            try {
                if (this.f10822c) {
                    this.f10821b.i(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
