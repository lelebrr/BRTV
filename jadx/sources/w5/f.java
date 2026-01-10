package w5;

import a4.r;
import java.util.concurrent.Executor;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10817a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10818b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Executor f10819c;
    public final Object d;

    public f(r rVar, b bVar) {
        this.f10819c = rVar;
        this.d = bVar;
    }

    private final void b(g gVar) {
        synchronized (this.f10818b) {
        }
        this.f10819c.execute(new ua.a(4, this, gVar, false));
    }

    private final void c(g gVar) {
        if (gVar.e()) {
            return;
        }
        synchronized (this.f10818b) {
        }
        ((r) this.f10819c).execute(new ua.a(5, this, gVar, false));
    }

    public final void a(g gVar) {
        switch (this.f10817a) {
            case 0:
                b(gVar);
                return;
            case 1:
                c(gVar);
                return;
            default:
                if (gVar.e()) {
                    synchronized (this.f10818b) {
                    }
                    ((r) this.f10819c).execute(new ua.a(6, this, gVar, false));
                    return;
                }
                return;
        }
    }

    public f(r rVar, c cVar) {
        this.f10819c = rVar;
        this.d = cVar;
    }

    public f(Executor executor, a aVar) {
        this.f10819c = executor;
        this.d = aVar;
    }
}
