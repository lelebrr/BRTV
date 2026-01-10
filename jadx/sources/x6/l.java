package x6;

import android.view.ViewGroup;
import androidx.viewpager.widget.ViewPager;
import androidx.viewpager2.widget.ViewPager2;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class l implements d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11078a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewGroup f11079b;

    public /* synthetic */ l(ViewGroup viewGroup, int i6) {
        this.f11078a = i6;
        this.f11079b = viewGroup;
    }

    @Override // x6.c
    public final void a(h hVar) {
        int i6 = this.f11078a;
    }

    @Override // x6.c
    public final void b(h hVar) {
        int i6 = this.f11078a;
    }

    @Override // x6.c
    public final void c(h hVar) {
        switch (this.f11078a) {
            case 0:
                ((ViewPager) this.f11079b).setCurrentItem(hVar.d);
                break;
            default:
                ((ViewPager2) this.f11079b).setCurrentItem(hVar.d, true);
                break;
        }
    }

    private final void d(h hVar) {
    }

    private final void e(h hVar) {
    }

    private final void f(h hVar) {
    }

    private final void g(h hVar) {
    }
}
