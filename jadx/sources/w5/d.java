package w5;

import b5.l;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final g f10815a = new g();

    public final void a(Exception exc) {
        g gVar = this.f10815a;
        gVar.getClass();
        synchronized (gVar.f10820a) {
            gVar.f();
            gVar.f10822c = true;
            gVar.f10823e = exc;
        }
        gVar.f10821b.i(gVar);
    }

    public final void b(Object obj) {
        g gVar = this.f10815a;
        synchronized (gVar.f10820a) {
            gVar.f();
            gVar.f10822c = true;
            gVar.d = obj;
        }
        gVar.f10821b.i(gVar);
    }

    public final void c(Exception exc) {
        g gVar = this.f10815a;
        gVar.getClass();
        l.f(exc, "Exception must not be null");
        synchronized (gVar.f10820a) {
            try {
                if (gVar.f10822c) {
                    return;
                }
                gVar.f10822c = true;
                gVar.f10823e = exc;
                gVar.f10821b.i(gVar);
            } finally {
            }
        }
    }

    public final void d(Boolean bool) {
        g gVar = this.f10815a;
        synchronized (gVar.f10820a) {
            try {
                if (gVar.f10822c) {
                    return;
                }
                gVar.f10822c = true;
                gVar.d = bool;
                gVar.f10821b.i(gVar);
            } finally {
            }
        }
    }
}
