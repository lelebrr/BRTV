package ka;

import androidx.viewpager2.widget.ViewPager2;
import org.bitspark.android.view.LeanbackTabLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class f0 extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ i0 f7783a;

    public f0(i0 i0Var) {
        this.f7783a = i0Var;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i6) {
        i0 i0Var = this.f7783a;
        if (i0Var.f7801h0 && i6 == i0Var.U.f10263s) {
            String str = a2.a.s("kw==\n", "9TzHKsy6qDY=\n") + i0Var.U.f10263s;
            if (((sa.l) i0Var.h().k().z(str)) != null) {
                i0Var.R(str);
            } else {
                i0Var.f7797d0.postDelayed(new a3.c(this, 20, str), 500L);
                LeanbackTabLayout leanbackTabLayout = i0Var.X;
                leanbackTabLayout.l(leanbackTabLayout.h(i6), true);
            }
            i0Var.f7801h0 = false;
        }
    }
}
