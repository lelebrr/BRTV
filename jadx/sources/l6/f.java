package l6;

import android.animation.Animator;
import androidx.appcompat.widget.g3;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f extends b {

    /* renamed from: g, reason: collision with root package name */
    public boolean f8012g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ExtendedFloatingActionButton f8013h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ExtendedFloatingActionButton extendedFloatingActionButton, j7.c cVar) {
        super(extendedFloatingActionButton, cVar);
        this.f8013h = extendedFloatingActionButton;
    }

    @Override // l6.b
    public final int c() {
        return R.animator.mtrl_extended_fab_hide_motion_spec;
    }

    @Override // l6.b
    public final void d() {
        super.d();
        this.f8012g = true;
    }

    @Override // l6.b
    public final void e() {
        this.d.f7444b = null;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8013h;
        extendedFloatingActionButton.f4911s = 0;
        if (this.f8012g) {
            return;
        }
        extendedFloatingActionButton.setVisibility(8);
    }

    @Override // l6.b
    public final void f(Animator animator) {
        j7.c cVar = this.d;
        Animator animator2 = (Animator) cVar.f7444b;
        if (animator2 != null) {
            animator2.cancel();
        }
        cVar.f7444b = animator;
        this.f8012g = false;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8013h;
        extendedFloatingActionButton.setVisibility(0);
        extendedFloatingActionButton.f4911s = 1;
    }

    @Override // l6.b
    public final void g() {
        this.f8013h.setVisibility(8);
    }

    @Override // l6.b
    public final boolean h() {
        g3 g3Var = ExtendedFloatingActionButton.F;
        ExtendedFloatingActionButton extendedFloatingActionButton = this.f8013h;
        if (extendedFloatingActionButton.getVisibility() == 0) {
            if (extendedFloatingActionButton.f4911s != 1) {
                return false;
            }
        } else if (extendedFloatingActionButton.f4911s == 2) {
            return false;
        }
        return true;
    }
}
