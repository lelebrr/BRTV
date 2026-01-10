package l6;

import android.animation.Animator;
import androidx.appcompat.widget.g3;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends b {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ ExtendedFloatingActionButton f8014g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(ExtendedFloatingActionButton extendedFloatingActionButton, j7.c cVar) {
        super(extendedFloatingActionButton, cVar);
        this.f8014g = extendedFloatingActionButton;
    }

    @Override // l6.b
    public final int c() {
        return R.animator.mtrl_extended_fab_show_motion_spec;
    }

    @Override // l6.b
    public final void e() {
        this.d.f7444b = null;
        this.f8014g.f4911s = 0;
    }

    @Override // l6.b
    public final void f(Animator animator) {
        j7.c cVar = this.d;
        Animator animator2 = (Animator) cVar.f7444b;
        if (animator2 != null) {
            animator2.cancel();
        }
        cVar.f7444b = animator;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8014g;
        extendedFloatingActionButton.setVisibility(0);
        extendedFloatingActionButton.f4911s = 2;
    }

    @Override // l6.b
    public final void g() {
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8014g;
        extendedFloatingActionButton.setVisibility(0);
        extendedFloatingActionButton.setAlpha(1.0f);
        extendedFloatingActionButton.setScaleY(1.0f);
        extendedFloatingActionButton.setScaleX(1.0f);
    }

    @Override // l6.b
    public final boolean h() {
        g3 g3Var = ExtendedFloatingActionButton.F;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8014g;
        if (extendedFloatingActionButton.getVisibility() != 0) {
            if (extendedFloatingActionButton.f4911s != 2) {
                return false;
            }
        } else if (extendedFloatingActionButton.f4911s == 1) {
            return false;
        }
        return true;
    }
}
