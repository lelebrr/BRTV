package c6;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.lang.ref.WeakReference;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a extends r4.b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f3389c;

    public a(BottomSheetBehavior bottomSheetBehavior) {
        this.f3389c = bottomSheetBehavior;
    }

    @Override // r4.b
    public final void G(int i6) {
        if (i6 == 1) {
            BottomSheetBehavior bottomSheetBehavior = this.f3389c;
            if (bottomSheetBehavior.I) {
                bottomSheetBehavior.B(1);
            }
        }
    }

    @Override // r4.b
    public final void H(View view, int i6, int i10) {
        this.f3389c.u(i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000d  */
    @Override // r4.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void I(android.view.View r6, float r7, float r8) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c6.a.I(android.view.View, float, float):void");
    }

    @Override // r4.b
    public final boolean O(int i6, View view) {
        BottomSheetBehavior bottomSheetBehavior = this.f3389c;
        int i10 = bottomSheetBehavior.J;
        if (i10 == 1 || bottomSheetBehavior.X) {
            return false;
        }
        if (i10 == 3 && bottomSheetBehavior.V == i6) {
            WeakReference weakReference = bottomSheetBehavior.S;
            View view2 = weakReference != null ? (View) weakReference.get() : null;
            if (view2 != null && view2.canScrollVertically(-1)) {
                return false;
            }
        }
        System.currentTimeMillis();
        WeakReference weakReference2 = bottomSheetBehavior.R;
        return weakReference2 != null && weakReference2.get() == view;
    }

    @Override // r4.b
    public final int d(int i6, View view) {
        return view.getLeft();
    }

    @Override // r4.b
    public final int e(int i6, View view) {
        BottomSheetBehavior bottomSheetBehavior = this.f3389c;
        return l5.a.g(i6, bottomSheetBehavior.x(), bottomSheetBehavior.G ? bottomSheetBehavior.Q : bottomSheetBehavior.E);
    }

    @Override // r4.b
    public final int y() {
        BottomSheetBehavior bottomSheetBehavior = this.f3389c;
        return bottomSheetBehavior.G ? bottomSheetBehavior.Q : bottomSheetBehavior.E;
    }
}
