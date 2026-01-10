package x2;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10920a;

    /* renamed from: b, reason: collision with root package name */
    public final n3.f f10921b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ p f10922c;

    public /* synthetic */ m(p pVar, n3.f fVar, int i6) {
        this.f10920a = i6;
        this.f10922c = pVar;
        this.f10921b = fVar;
    }

    private final void a() {
        n3.f fVar = this.f10921b;
        fVar.f8416b.a();
        synchronized (fVar.f8417c) {
            synchronized (this.f10922c) {
                try {
                    o oVar = this.f10922c.f10927a;
                    n3.f fVar2 = this.f10921b;
                    oVar.getClass();
                    if (oVar.f10925a.contains(new n(fVar2, r3.f.f9497b))) {
                        p pVar = this.f10922c;
                        n3.f fVar3 = this.f10921b;
                        pVar.getClass();
                        try {
                            fVar3.j(pVar.f10941q, 5);
                        } catch (Throwable th) {
                            throw new b(th);
                        }
                    }
                    this.f10922c.d();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10920a) {
            case 0:
                a();
                return;
            default:
                n3.f fVar = this.f10921b;
                fVar.f8416b.a();
                synchronized (fVar.f8417c) {
                    synchronized (this.f10922c) {
                        try {
                            o oVar = this.f10922c.f10927a;
                            n3.f fVar2 = this.f10921b;
                            oVar.getClass();
                            if (oVar.f10925a.contains(new n(fVar2, r3.f.f9497b))) {
                                this.f10922c.f10943s.b();
                                p pVar = this.f10922c;
                                n3.f fVar3 = this.f10921b;
                                pVar.getClass();
                                try {
                                    fVar3.k(pVar.f10943s, pVar.f10939o, pVar.f10946v);
                                    this.f10922c.j(this.f10921b);
                                } catch (Throwable th) {
                                    throw new b(th);
                                }
                            }
                            this.f10922c.d();
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                return;
        }
    }
}
