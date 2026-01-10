package r;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends com.bumptech.glide.d {
    @Override // com.bumptech.glide.d
    public final void B(f fVar, f fVar2) {
        fVar.f9445b = fVar2;
    }

    @Override // com.bumptech.glide.d
    public final void C(f fVar, Thread thread) {
        fVar.f9444a = thread;
    }

    @Override // com.bumptech.glide.d
    public final boolean b(g gVar, c cVar, c cVar2) {
        synchronized (gVar) {
            try {
                if (gVar.f9449b != cVar) {
                    return false;
                }
                gVar.f9449b = cVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean c(g gVar, Object obj, Object obj2) {
        synchronized (gVar) {
            try {
                if (gVar.f9448a != obj) {
                    return false;
                }
                gVar.f9448a = obj2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.d
    public final boolean d(g gVar, f fVar, f fVar2) {
        synchronized (gVar) {
            try {
                if (gVar.f9450c != fVar) {
                    return false;
                }
                gVar.f9450c = fVar2;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
