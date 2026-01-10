package p8;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends o9.d {

    /* renamed from: j, reason: collision with root package name */
    public final i8.b f8915j;

    public c(i8.b bVar) {
        this.f8915j = bVar;
    }

    @Override // o9.d
    public final void G(i8.c cVar) {
        b bVar = new b(cVar);
        cVar.c(bVar);
        try {
            this.f8915j.a(bVar);
        } catch (Throwable th) {
            com.bumptech.glide.d.G(th);
            if (bVar.b()) {
                com.bumptech.glide.d.y(th);
                return;
            }
            try {
                bVar.f8914a.d(th);
            } finally {
                m8.a.b(bVar);
            }
        }
    }
}
