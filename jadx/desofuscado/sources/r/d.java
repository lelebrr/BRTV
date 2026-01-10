package r;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends com.bumptech.glide.d {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f9439a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f9440b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f9441c;
    public final AtomicReferenceFieldUpdater d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f9442e;

    public d(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f9439a = atomicReferenceFieldUpdater;
        this.f9440b = atomicReferenceFieldUpdater2;
        this.f9441c = atomicReferenceFieldUpdater3;
        this.d = atomicReferenceFieldUpdater4;
        this.f9442e = atomicReferenceFieldUpdater5;
    }

    @Override // com.bumptech.glide.d
    public final void B(f fVar, f fVar2) {
        this.f9440b.lazySet(fVar, fVar2);
    }

    @Override // com.bumptech.glide.d
    public final void C(f fVar, Thread thread) {
        this.f9439a.lazySet(fVar, thread);
    }

    @Override // com.bumptech.glide.d
    public final boolean b(g gVar, c cVar, c cVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.d;
            if (atomicReferenceFieldUpdater.compareAndSet(gVar, cVar, cVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(gVar) == cVar);
        return false;
    }

    @Override // com.bumptech.glide.d
    public final boolean c(g gVar, Object obj, Object obj2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f9442e;
            if (atomicReferenceFieldUpdater.compareAndSet(gVar, obj, obj2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(gVar) == obj);
        return false;
    }

    @Override // com.bumptech.glide.d
    public final boolean d(g gVar, f fVar, f fVar2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = this.f9441c;
            if (atomicReferenceFieldUpdater.compareAndSet(gVar, fVar, fVar2)) {
                return true;
            }
        } while (atomicReferenceFieldUpdater.get(gVar) == fVar);
        return false;
    }
}
