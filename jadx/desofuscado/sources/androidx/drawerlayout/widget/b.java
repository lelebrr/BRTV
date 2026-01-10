package androidx.drawerlayout.widget;

import a.e;
import android.view.View;
import androidx.drawerlayout.widget.DrawerLayout;
import java.util.ArrayList;
import s4.h;
import v0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b extends r4.b {

    /* renamed from: c, reason: collision with root package name */
    public final int f1364c;
    public d d;

    /* renamed from: e, reason: collision with root package name */
    public final h f1365e = new h(7, this);
    public final /* synthetic */ DrawerLayout f;

    public b(DrawerLayout drawerLayout, int i6) {
        this.f = drawerLayout;
        this.f1364c = i6;
    }

    @Override // r4.b
    public final void D(int i6, int i10) {
        int i11 = i6 & 1;
        DrawerLayout drawerLayout = this.f;
        View viewD = i11 == 1 ? drawerLayout.d(3) : drawerLayout.d(5);
        if (viewD == null || drawerLayout.g(viewD) != 0) {
            return;
        }
        this.d.b(i10, viewD);
    }

    @Override // r4.b
    public final void E() {
        this.f.postDelayed(this.f1365e, 160L);
    }

    @Override // r4.b
    public final void F(int i6, View view) {
        ((DrawerLayout.LayoutParams) view.getLayoutParams()).f1360c = false;
        int i10 = this.f1364c == 3 ? 5 : 3;
        DrawerLayout drawerLayout = this.f;
        View viewD = drawerLayout.d(i10);
        if (viewD != null) {
            drawerLayout.b(viewD);
        }
    }

    @Override // r4.b
    public final void G(int i6) {
        int i10;
        int size;
        int size2;
        View rootView;
        int size3;
        View view = this.d.f10649t;
        DrawerLayout drawerLayout = this.f;
        int i11 = drawerLayout.f1338g.f10632a;
        int i12 = drawerLayout.f1339h.f10632a;
        if (i11 == 1 || i12 == 1) {
            i10 = 1;
        } else {
            i10 = 2;
            if (i11 != 2 && i12 != 2) {
                i10 = 0;
            }
        }
        if (view != null && i6 == 0) {
            float f = ((DrawerLayout.LayoutParams) view.getLayoutParams()).f1359b;
            if (f == 0.0f) {
                DrawerLayout.LayoutParams layoutParams = (DrawerLayout.LayoutParams) view.getLayoutParams();
                if ((layoutParams.d & 1) == 1) {
                    layoutParams.d = 0;
                    ArrayList arrayList = drawerLayout.f1350s;
                    if (arrayList != null && (size3 = arrayList.size() - 1) >= 0) {
                        throw e.k(size3, drawerLayout.f1350s);
                    }
                    drawerLayout.q(view, false);
                    drawerLayout.p(view);
                    if (drawerLayout.hasWindowFocus() && (rootView = drawerLayout.getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (f == 1.0f) {
                DrawerLayout.LayoutParams layoutParams2 = (DrawerLayout.LayoutParams) view.getLayoutParams();
                if ((layoutParams2.d & 1) == 0) {
                    layoutParams2.d = 1;
                    ArrayList arrayList2 = drawerLayout.f1350s;
                    if (arrayList2 != null && (size2 = arrayList2.size() - 1) >= 0) {
                        throw e.k(size2, drawerLayout.f1350s);
                    }
                    drawerLayout.q(view, true);
                    drawerLayout.p(view);
                    if (drawerLayout.hasWindowFocus()) {
                        drawerLayout.sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i10 != drawerLayout.f1342k) {
            drawerLayout.f1342k = i10;
            ArrayList arrayList3 = drawerLayout.f1350s;
            if (arrayList3 != null && (size = arrayList3.size() - 1) >= 0) {
                throw e.k(size, drawerLayout.f1350s);
            }
        }
    }

    @Override // r4.b
    public final void H(View view, int i6, int i10) {
        int width = view.getWidth();
        DrawerLayout drawerLayout = this.f;
        float width2 = (drawerLayout.a(3, view) ? i6 + width : drawerLayout.getWidth() - i6) / width;
        drawerLayout.o(view, width2);
        view.setVisibility(width2 == 0.0f ? 4 : 0);
        drawerLayout.invalidate();
    }

    @Override // r4.b
    public final void I(View view, float f, float f3) {
        int i6;
        DrawerLayout drawerLayout = this.f;
        drawerLayout.getClass();
        float f4 = ((DrawerLayout.LayoutParams) view.getLayoutParams()).f1359b;
        int width = view.getWidth();
        if (drawerLayout.a(3, view)) {
            i6 = (f > 0.0f || (f == 0.0f && f4 > 0.5f)) ? 0 : -width;
        } else {
            int width2 = drawerLayout.getWidth();
            if (f < 0.0f || (f == 0.0f && f4 > 0.5f)) {
                width2 -= width;
            }
            i6 = width2;
        }
        this.d.q(i6, view.getTop());
        drawerLayout.invalidate();
    }

    @Override // r4.b
    public final boolean O(int i6, View view) {
        DrawerLayout drawerLayout = this.f;
        drawerLayout.getClass();
        return DrawerLayout.l(view) && drawerLayout.a(this.f1364c, view) && drawerLayout.g(view) == 0;
    }

    @Override // r4.b
    public final int d(int i6, View view) {
        DrawerLayout drawerLayout = this.f;
        if (drawerLayout.a(3, view)) {
            return Math.max(-view.getWidth(), Math.min(i6, 0));
        }
        int width = drawerLayout.getWidth();
        return Math.max(width - view.getWidth(), Math.min(i6, width));
    }

    @Override // r4.b
    public final int e(int i6, View view) {
        return view.getTop();
    }

    @Override // r4.b
    public final int x(View view) {
        this.f.getClass();
        if (DrawerLayout.l(view)) {
            return view.getWidth();
        }
        return 0;
    }
}
