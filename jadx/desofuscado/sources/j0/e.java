package j0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public boolean f7415a;

    /* renamed from: b, reason: collision with root package name */
    public d f7416b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7417c;

    public final void a(d dVar) {
        synchronized (this) {
            while (this.f7417c) {
                try {
                    try {
                        wait();
                    } catch (InterruptedException unused) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (this.f7416b == dVar) {
                return;
            }
            this.f7416b = dVar;
            if (this.f7415a) {
                dVar.a();
            }
        }
    }
}
