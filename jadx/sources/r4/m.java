package r4;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Iterator;
import q4.z;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class m extends BasePendingResult {

    /* renamed from: r, reason: collision with root package name */
    public j7.c f9563r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f9564s;

    /* renamed from: t, reason: collision with root package name */
    public final /* synthetic */ f f9565t;

    public m(f fVar, boolean z7) {
        this.f9565t = fVar;
        this.f9564s = z7;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ y4.l c0(Status status) {
        return new k(status, 1);
    }

    public abstract void k0();

    public final v4.m l0() {
        if (this.f9563r == null) {
            this.f9563r = new j7.c(28, this);
        }
        return this.f9563r;
    }

    public final void m0() {
        if (!this.f9564s) {
            f fVar = this.f9565t;
            Iterator it = fVar.f9546g.iterator();
            while (it.hasNext()) {
                ((d) it.next()).f();
            }
            Iterator it2 = fVar.f9547h.iterator();
            while (it2.hasNext()) {
                ((z) it2.next()).getClass();
            }
        }
        try {
            synchronized (this.f9565t.f9542a) {
                k0();
            }
        } catch (v4.j unused) {
            g0(new k(new Status(2100, null, null, null), 1));
        }
    }
}
