package fa;

import androidx.viewpager.widget.ViewPager;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y extends androidx.fragment.app.n0 {

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f6981g;

    /* renamed from: h, reason: collision with root package name */
    public androidx.fragment.app.s f6982h;

    @Override // b2.a
    public final int c() {
        return this.f6981g.size();
    }

    @Override // androidx.fragment.app.n0, b2.a
    public final void e(ViewPager viewPager, int i6, androidx.fragment.app.s sVar) {
        this.f6982h = sVar;
        super.e(viewPager, i6, sVar);
    }

    @Override // androidx.fragment.app.n0
    public final androidx.fragment.app.s h(int i6) {
        return (androidx.fragment.app.s) this.f6981g.get(i6);
    }
}
