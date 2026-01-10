package androidx.fragment.app;

import android.app.Dialog;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class l extends o9.e {
    public final /* synthetic */ n f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ m f1482g;

    public l(m mVar, n nVar) {
        this.f1482g = mVar;
        this.f = nVar;
    }

    @Override // o9.e
    public final View B(int i6) {
        n nVar = this.f;
        if (nVar.C()) {
            return nVar.B(i6);
        }
        Dialog dialog = this.f1482g.f1492f0;
        if (dialog != null) {
            return dialog.findViewById(i6);
        }
        return null;
    }

    @Override // o9.e
    public final boolean C() {
        return this.f.C() || this.f1482g.f1495j0;
    }
}
