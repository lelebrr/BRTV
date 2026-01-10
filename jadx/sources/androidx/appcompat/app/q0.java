package androidx.appcompat.app;

import android.view.MenuItem;
import androidx.appcompat.widget.r3;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q0 implements r3, k.j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ s0 f348a;

    public /* synthetic */ q0(s0 s0Var) {
        this.f348a = s0Var;
    }

    @Override // k.j
    public boolean j(k.l lVar, MenuItem menuItem) {
        return false;
    }

    @Override // k.j
    public void n(k.l lVar) {
        s0 s0Var = this.f348a;
        boolean zP = s0Var.f356r.f862a.p();
        z zVar = s0Var.f357s;
        if (zP) {
            zVar.onPanelClosed(108, lVar);
        } else if (zVar.onPreparePanel(0, null, lVar)) {
            zVar.onMenuOpened(108, lVar);
        }
    }
}
