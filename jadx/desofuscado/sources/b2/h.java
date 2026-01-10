package b2;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.datepicker.r;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.NavigationMenuItemView;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h extends n0.b {
    public final /* synthetic */ int d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f3157e;

    public /* synthetic */ h(int i6, Object obj) {
        this.d = i6;
        this.f3157e = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0032  */
    @Override // n0.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void c(android.view.View r3, android.view.accessibility.AccessibilityEvent r4) {
        /*
            r2 = this;
            int r0 = r2.d
            switch(r0) {
                case 0: goto L16;
                case 3: goto L9;
                default: goto L5;
            }
        L5:
            super.c(r3, r4)
            return
        L9:
            super.c(r3, r4)
            java.lang.Object r3 = r2.f3157e
            com.google.android.material.internal.CheckableImageButton r3 = (com.google.android.material.internal.CheckableImageButton) r3
            boolean r3 = r3.d
            r4.setChecked(r3)
            return
        L16:
            super.c(r3, r4)
            java.lang.Class<androidx.viewpager.widget.ViewPager> r3 = androidx.viewpager.widget.ViewPager.class
            java.lang.String r3 = r3.getName()
            r4.setClassName(r3)
            java.lang.Object r3 = r2.f3157e
            androidx.viewpager.widget.ViewPager r3 = (androidx.viewpager.widget.ViewPager) r3
            b2.a r0 = r3.f3067e
            if (r0 == 0) goto L32
            int r0 = r0.c()
            r1 = 1
            if (r0 <= r1) goto L32
            goto L33
        L32:
            r1 = 0
        L33:
            r4.setScrollable(r1)
            int r0 = r4.getEventType()
            r1 = 4096(0x1000, float:5.74E-42)
            if (r0 != r1) goto L53
            b2.a r0 = r3.f3067e
            if (r0 == 0) goto L53
            int r0 = r0.c()
            r4.setItemCount(r0)
            int r0 = r3.f
            r4.setFromIndex(r0)
            int r3 = r3.f
            r4.setToIndex(r3)
        L53:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b2.h.c(android.view.View, android.view.accessibility.AccessibilityEvent):void");
    }

    @Override // n0.b
    public final void d(View view, o0.h hVar) {
        int i6 = -1;
        boolean z7 = false;
        Object obj = this.f3157e;
        View.AccessibilityDelegate accessibilityDelegate = this.f8298a;
        switch (this.d) {
            case 0:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, hVar.f8541a);
                hVar.i(ViewPager.class.getName());
                ViewPager viewPager = (ViewPager) obj;
                a aVar = viewPager.f3067e;
                if (aVar != null && aVar.c() > 1) {
                    z7 = true;
                }
                hVar.n(z7);
                if (viewPager.canScrollHorizontally(1)) {
                    hVar.a(4096);
                }
                if (viewPager.canScrollHorizontally(-1)) {
                    hVar.a(8192);
                    break;
                }
                break;
            case 1:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, hVar.f8541a);
                int i10 = MaterialButtonToggleGroup.f4723k;
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) obj;
                materialButtonToggleGroup.getClass();
                if (view instanceof MaterialButton) {
                    int i11 = 0;
                    int i12 = 0;
                    while (true) {
                        if (i11 < materialButtonToggleGroup.getChildCount()) {
                            if (materialButtonToggleGroup.getChildAt(i11) == view) {
                                i6 = i12;
                            } else {
                                if ((materialButtonToggleGroup.getChildAt(i11) instanceof MaterialButton) && materialButtonToggleGroup.c(i11)) {
                                    i12++;
                                }
                                i11++;
                            }
                        }
                    }
                }
                hVar.k(o0.g.a(0, 1, i6, 1, ((MaterialButton) view).f4719n));
                break;
            case 2:
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, hVar.f8541a);
                r rVar = (r) obj;
                hVar.m(rVar.f4872e0.getVisibility() == 0 ? rVar.n(R.string.mtrl_picker_toggle_to_year_selection) : rVar.n(R.string.mtrl_picker_toggle_to_day_selection));
                break;
            case 3:
                AccessibilityNodeInfo accessibilityNodeInfo = hVar.f8541a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                CheckableImageButton checkableImageButton = (CheckableImageButton) obj;
                accessibilityNodeInfo.setCheckable(checkableImageButton.f4955e);
                accessibilityNodeInfo.setChecked(checkableImageButton.d);
                break;
            default:
                AccessibilityNodeInfo accessibilityNodeInfo2 = hVar.f8541a;
                accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo2);
                accessibilityNodeInfo2.setCheckable(((NavigationMenuItemView) obj).f4968x);
                break;
        }
    }

    @Override // n0.b
    public boolean g(View view, int i6, Bundle bundle) {
        switch (this.d) {
            case 0:
                if (super.g(view, i6, bundle)) {
                    return true;
                }
                ViewPager viewPager = (ViewPager) this.f3157e;
                if (i6 != 4096) {
                    if (i6 == 8192 && viewPager.canScrollHorizontally(-1)) {
                        viewPager.setCurrentItem(viewPager.f - 1);
                        return true;
                    }
                } else if (viewPager.canScrollHorizontally(1)) {
                    viewPager.setCurrentItem(viewPager.f + 1);
                    return true;
                }
                return false;
            default:
                return super.g(view, i6, bundle);
        }
    }
}
