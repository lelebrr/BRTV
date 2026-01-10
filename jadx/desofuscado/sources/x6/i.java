package x6;

import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class i implements b2.j {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f11063a;

    /* renamed from: b, reason: collision with root package name */
    public int f11064b;

    /* renamed from: c, reason: collision with root package name */
    public int f11065c;

    public i(TabLayout tabLayout) {
        this.f11063a = new WeakReference(tabLayout);
    }

    @Override // b2.j
    public final void a(int i6, float f) {
        TabLayout tabLayout = (TabLayout) this.f11063a.get();
        if (tabLayout != null) {
            int i10 = this.f11065c;
            tabLayout.n(i6, f, i10 != 2 || this.f11064b == 1, (i10 == 2 && this.f11064b == 0) ? false : true);
        }
    }

    @Override // b2.j
    public final void onPageScrollStateChanged(int i6) {
        this.f11064b = this.f11065c;
        this.f11065c = i6;
    }

    @Override // b2.j
    public final void onPageSelected(int i6) {
        TabLayout tabLayout = (TabLayout) this.f11063a.get();
        if (tabLayout == null || tabLayout.getSelectedTabPosition() == i6 || i6 >= tabLayout.getTabCount()) {
            return;
        }
        int i10 = this.f11065c;
        tabLayout.l(tabLayout.h(i6), i10 == 0 || (i10 == 2 && this.f11064b == 0));
    }
}
