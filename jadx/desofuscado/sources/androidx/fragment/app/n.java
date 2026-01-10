package androidx.fragment.app;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n extends o9.e {
    public final /* synthetic */ s f;

    public n(s sVar) {
        this.f = sVar;
    }

    @Override // o9.e
    public final View B(int i6) {
        s sVar = this.f;
        View view = sVar.F;
        if (view != null) {
            return view.findViewById(i6);
        }
        throw new IllegalStateException("Fragment " + sVar + " does not have a view");
    }

    @Override // o9.e
    public final boolean C() {
        return this.f.F != null;
    }
}
