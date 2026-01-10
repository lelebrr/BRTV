package t9;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public class t0 extends y0 {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10227c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t0(q0 q0Var) {
        super(true);
        boolean z7 = true;
        x(q0Var);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = y0.f10248b;
        h hVar = (h) atomicReferenceFieldUpdater.get(this);
        i iVar = hVar instanceof i ? (i) hVar : null;
        if (iVar == null) {
            z7 = false;
            break;
        }
        y0 y0VarI = iVar.i();
        while (!y0VarI.r()) {
            h hVar2 = (h) atomicReferenceFieldUpdater.get(y0VarI);
            i iVar2 = hVar2 instanceof i ? (i) hVar2 : null;
            if (iVar2 == null) {
                z7 = false;
                break;
            }
            y0VarI = iVar2.i();
        }
        this.f10227c = z7;
    }

    @Override // t9.y0
    public final boolean r() {
        return this.f10227c;
    }

    @Override // t9.y0
    public final boolean s() {
        return true;
    }
}
