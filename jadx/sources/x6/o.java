package x6;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.k0;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import com.p2elite.brtv2.R;
import ka.i0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final TabLayout f11084a;

    /* renamed from: b, reason: collision with root package name */
    public final ViewPager2 f11085b;

    /* renamed from: c, reason: collision with root package name */
    public final j7.c f11086c;
    public k0 d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11087e;

    public o(TabLayout tabLayout, ViewPager2 viewPager2, j7.c cVar) {
        this.f11084a = tabLayout;
        this.f11085b = viewPager2;
        this.f11086c = cVar;
    }

    public final void a() {
        TabLayout tabLayout = this.f11084a;
        tabLayout.k();
        k0 k0Var = this.d;
        if (k0Var != null) {
            int itemCount = k0Var.getItemCount();
            int i6 = 0;
            while (i6 < itemCount) {
                h hVarI = tabLayout.i();
                RelativeLayout relativeLayout = (RelativeLayout) LayoutInflater.from(((i0) this.f11086c.f7444b).j()).inflate(R.layout.tab_custom, (ViewGroup) null);
                StringBuilder sb = new StringBuilder();
                sb.append(a2.a.s("d/MHp2hQUQ==\n", "JJZm1Ac+caQ=\n"));
                i6++;
                sb.append(i6);
                String string = sb.toString();
                TextView textView = (TextView) relativeLayout.findViewById(R.id.tv);
                textView.setText(string);
                textView.setTextSize(15.0f);
                hVarI.f11061e = relativeLayout;
                hVarI.a();
                tabLayout.b(hVarI, false);
            }
            if (itemCount > 0) {
                int iMin = Math.min(this.f11085b.getCurrentItem(), tabLayout.getTabCount() - 1);
                if (iMin != tabLayout.getSelectedTabPosition()) {
                    tabLayout.l(tabLayout.h(iMin), true);
                }
            }
        }
    }
}
