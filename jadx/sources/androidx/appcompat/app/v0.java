package androidx.appcompat.app;

import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v0 extends o9.d {

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f371j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ x0 f372k;

    public /* synthetic */ v0(x0 x0Var, int i6) {
        this.f371j = i6;
        this.f372k = x0Var;
    }

    @Override // n0.b1
    public final void a() {
        View view;
        x0 x0Var = this.f372k;
        switch (this.f371j) {
            case 0:
                if (x0Var.F && (view = x0Var.f382x) != null) {
                    view.setTranslationY(0.0f);
                    x0Var.f379u.setTranslationY(0.0f);
                }
                x0Var.f379u.setVisibility(8);
                x0Var.f379u.setTransitioning(false);
                x0Var.J = null;
                a7.f fVar = x0Var.B;
                if (fVar != null) {
                    fVar.E(x0Var.A);
                    x0Var.A = null;
                    x0Var.B = null;
                }
                ActionBarOverlayLayout actionBarOverlayLayout = x0Var.f378t;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = n0.s0.f8353a;
                    n0.e0.c(actionBarOverlayLayout);
                    break;
                }
                break;
            default:
                x0Var.J = null;
                x0Var.f379u.requestLayout();
                break;
        }
    }
}
