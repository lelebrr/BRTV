package b1;

import androidx.leanback.widget.n0;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends a2.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f3101b;

    public e(f fVar) {
        this.f3101b = fVar;
    }

    @Override // a2.a
    public final void H(Throwable th) {
        this.f3101b.f3102a.d(th);
    }

    @Override // a2.a
    public final void I(a0.f fVar) {
        f fVar2 = this.f3101b;
        fVar2.f3104c = fVar;
        fVar2.f3103b = new a7.f(fVar2.f3104c, new u6.e(3), fVar2.f3102a.f3112h);
        i iVar = fVar2.f3102a;
        iVar.getClass();
        ArrayList arrayList = new ArrayList();
        iVar.f3107a.writeLock().lock();
        try {
            iVar.f3109c = 1;
            arrayList.addAll(iVar.f3108b);
            iVar.f3108b.clear();
            iVar.f3107a.writeLock().unlock();
            iVar.d.post(new n0(arrayList, iVar.f3109c, (Throwable) null));
        } catch (Throwable th) {
            iVar.f3107a.writeLock().unlock();
            throw th;
        }
    }
}
