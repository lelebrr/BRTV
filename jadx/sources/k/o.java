package k;

import android.view.ActionProvider;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends n0.c implements ActionProvider.VisibilityListener {

    /* renamed from: b, reason: collision with root package name */
    public final ActionProvider f7658b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s f7659c;
    public j7.c d;

    public o(s sVar, ActionProvider actionProvider) {
        this.f7659c = sVar;
        this.f7658b = actionProvider;
    }

    @Override // n0.c
    public final boolean a() {
        return this.f7658b.isVisible();
    }

    @Override // n0.c
    public final View b(n nVar) {
        return this.f7658b.onCreateActionView(nVar);
    }

    @Override // n0.c
    public final boolean c() {
        return this.f7658b.overridesItemVisibility();
    }

    @Override // n0.c
    public final void d(j7.c cVar) {
        this.d = cVar;
        this.f7658b.setVisibilityListener(this);
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z7) {
        j7.c cVar = this.d;
        if (cVar != null) {
            l lVar = ((n) cVar.f7444b).f7645n;
            lVar.f7614h = true;
            lVar.p(true);
        }
    }
}
