package androidx.fragment.app;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o implements androidx.lifecycle.u {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s f1498a;

    public o(s sVar) {
        this.f1498a = sVar;
    }

    @Override // androidx.lifecycle.u
    public final void onStateChanged(androidx.lifecycle.w wVar, androidx.lifecycle.n nVar) {
        View view;
        if (nVar != androidx.lifecycle.n.ON_STOP || (view = this.f1498a.F) == null) {
            return;
        }
        view.cancelPendingInputEvents();
    }
}
