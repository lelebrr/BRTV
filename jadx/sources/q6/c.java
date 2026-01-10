package q6;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9242a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f9243b;

    public /* synthetic */ c(d dVar, int i6) {
        this.f9242a = i6;
        this.f9243b = dVar;
    }

    public final void a() {
        switch (this.f9242a) {
            case 0:
                d dVar = this.f9243b;
                dVar.setIndeterminate(false);
                dVar.b(dVar.f9245b);
                break;
            default:
                d dVar2 = this.f9243b;
                if (!dVar2.f) {
                    dVar2.setVisibility(dVar2.f9248g);
                    break;
                }
                break;
        }
    }
}
