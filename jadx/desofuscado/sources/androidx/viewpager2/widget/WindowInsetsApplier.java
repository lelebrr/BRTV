package androidx.viewpager2.widget;

import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.WeakHashMap;
import n0.g0;
import n0.r1;
import n0.s;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class WindowInsetsApplier implements s {
    private WindowInsetsApplier() {
    }

    private r1 consumeAllInsets(r1 r1Var) {
        r1 r1Var2 = r1.f8351b;
        return r1Var2.g() != null ? r1Var2 : r1Var.f8352a.c().f8352a.b();
    }

    public static boolean install(ViewPager2 viewPager2) {
        ApplicationInfo applicationInfo = viewPager2.getContext().getApplicationInfo();
        if (Build.VERSION.SDK_INT >= 30 && applicationInfo.targetSdkVersion >= 30) {
            return false;
        }
        WindowInsetsApplier windowInsetsApplier = new WindowInsetsApplier();
        WeakHashMap weakHashMap = s0.f8353a;
        g0.u(viewPager2, windowInsetsApplier);
        return true;
    }

    @Override // n0.s
    public r1 onApplyWindowInsets(View view, r1 r1Var) {
        ViewPager2 viewPager2 = (ViewPager2) view;
        r1 r1VarK = s0.k(viewPager2, r1Var);
        if (r1VarK.f8352a.n()) {
            return r1VarK;
        }
        RecyclerView recyclerView = viewPager2.mRecyclerView;
        int childCount = recyclerView.getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            s0.b(recyclerView.getChildAt(i6), new r1(r1VarK));
        }
        return consumeAllInsets(r1VarK);
    }
}
