package x6;

import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class n extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f11081a;

    /* renamed from: c, reason: collision with root package name */
    public int f11083c = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f11082b = 0;

    public n(TabLayout tabLayout) {
        this.f11081a = new WeakReference(tabLayout);
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageScrollStateChanged(int i6) {
        this.f11082b = this.f11083c;
        this.f11083c = i6;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageScrolled(int i6, float f, int i10) {
        TabLayout tabLayout = (TabLayout) this.f11081a.get();
        if (tabLayout != null) {
            int i11 = this.f11083c;
            tabLayout.n(i6, f, i11 != 2 || this.f11082b == 1, (i11 == 2 && this.f11082b == 0) ? false : true);
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void onPageSelected(int i6) {
        TabLayout tabLayout = (TabLayout) this.f11081a.get();
        if (tabLayout == null || tabLayout.getSelectedTabPosition() == i6 || i6 >= tabLayout.getTabCount()) {
            return;
        }
        int i10 = this.f11083c;
        tabLayout.l(tabLayout.h(i6), i10 == 0 || (i10 == 2 && this.f11082b == 0));
    }
}
