package k3;

import android.content.Context;
import java.util.HashSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7708a;

    /* renamed from: b, reason: collision with root package name */
    public final com.bumptech.glide.n f7709b;

    public c(Context context, com.bumptech.glide.n nVar) {
        this.f7708a = context.getApplicationContext();
        this.f7709b = nVar;
    }

    @Override // k3.i
    public final void c() {
        t tVarB = t.b(this.f7708a);
        com.bumptech.glide.n nVar = this.f7709b;
        synchronized (tVarB) {
            ((HashSet) tVarB.d).remove(nVar);
            if (tVarB.f7734b && ((HashSet) tVarB.d).isEmpty()) {
                ((o) tVarB.f7735c).a();
                tVarB.f7734b = false;
            }
        }
    }

    @Override // k3.i
    public final void i() {
        t tVarB = t.b(this.f7708a);
        com.bumptech.glide.n nVar = this.f7709b;
        synchronized (tVarB) {
            ((HashSet) tVarB.d).add(nVar);
            if (!tVarB.f7734b && !((HashSet) tVarB.d).isEmpty()) {
                tVarB.f7734b = ((o) tVarB.f7735c).b();
            }
        }
    }

    @Override // k3.i
    public final void j() {
    }
}
