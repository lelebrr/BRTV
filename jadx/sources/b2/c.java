package b2;

import android.database.DataSetObserver;
import androidx.viewpager.widget.PagerTitleStrip;
import androidx.viewpager.widget.ViewPager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends DataSetObserver implements j, i {

    /* renamed from: a, reason: collision with root package name */
    public int f3149a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PagerTitleStrip f3150b;

    public c(PagerTitleStrip pagerTitleStrip) {
        this.f3150b = pagerTitleStrip;
    }

    @Override // b2.j
    public final void a(int i6, float f) {
        if (f > 0.5f) {
            i6++;
        }
        this.f3150b.c(f, i6, false);
    }

    @Override // b2.i
    public final void b(ViewPager viewPager, a aVar, a aVar2) {
        this.f3150b.a(aVar, aVar2);
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        PagerTitleStrip pagerTitleStrip = this.f3150b;
        pagerTitleStrip.b(pagerTitleStrip.f3050a.getCurrentItem(), pagerTitleStrip.f3050a.getAdapter());
        float f = pagerTitleStrip.f;
        if (f < 0.0f) {
            f = 0.0f;
        }
        pagerTitleStrip.c(f, pagerTitleStrip.f3050a.getCurrentItem(), true);
    }

    @Override // b2.j
    public final void onPageScrollStateChanged(int i6) {
        this.f3149a = i6;
    }

    @Override // b2.j
    public final void onPageSelected(int i6) {
        if (this.f3149a == 0) {
            PagerTitleStrip pagerTitleStrip = this.f3150b;
            pagerTitleStrip.b(pagerTitleStrip.f3050a.getCurrentItem(), pagerTitleStrip.f3050a.getAdapter());
            float f = pagerTitleStrip.f;
            if (f < 0.0f) {
                f = 0.0f;
            }
            pagerTitleStrip.c(f, pagerTitleStrip.f3050a.getCurrentItem(), true);
        }
    }
}
