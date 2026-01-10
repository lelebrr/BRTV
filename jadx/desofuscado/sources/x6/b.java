package x6;

import androidx.viewpager.widget.ViewPager;
import com.google.android.material.tabs.TabLayout;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b implements b2.i {

    /* renamed from: a, reason: collision with root package name */
    public boolean f11047a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TabLayout f11048b;

    public b(TabLayout tabLayout) {
        this.f11048b = tabLayout;
    }

    @Override // b2.i
    public final void b(ViewPager viewPager, b2.a aVar, b2.a aVar2) {
        TabLayout tabLayout = this.f11048b;
        if (tabLayout.K == viewPager) {
            tabLayout.m(aVar2, this.f11047a);
        }
    }
}
