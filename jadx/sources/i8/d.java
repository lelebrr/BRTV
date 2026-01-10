package i8;

import q8.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements j8.b, Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final a3.c f7359a;

    /* renamed from: b, reason: collision with root package name */
    public final e f7360b;

    /* renamed from: c, reason: collision with root package name */
    public Thread f7361c;

    public d(a3.c cVar, e eVar) {
        this.f7359a = cVar;
        this.f7360b = eVar;
    }

    @Override // j8.b
    public final void a() {
        if (this.f7361c == Thread.currentThread()) {
            e eVar = this.f7360b;
            if (eVar instanceof j) {
                j jVar = (j) eVar;
                if (jVar.f9345b) {
                    return;
                }
                jVar.f9345b = true;
                jVar.f9344a.shutdown();
                return;
            }
        }
        this.f7360b.a();
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7361c = Thread.currentThread();
        try {
            this.f7359a.run();
        } finally {
        }
    }
}
