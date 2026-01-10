package b2;

import android.view.View;
import androidx.viewpager.widget.PagerTabStrip;
import androidx.viewpager.widget.ViewPager;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3147a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PagerTabStrip f3148b;

    public /* synthetic */ b(PagerTabStrip pagerTabStrip, int i6) {
        this.f3147a = i6;
        this.f3148b = pagerTabStrip;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f3147a) {
            case 0:
                this.f3148b.f3050a.setCurrentItem(r2.getCurrentItem() - 1);
                break;
            default:
                ViewPager viewPager = this.f3148b.f3050a;
                viewPager.setCurrentItem(viewPager.getCurrentItem() + 1);
                break;
        }
    }
}
