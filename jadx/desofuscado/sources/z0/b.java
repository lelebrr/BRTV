package z0;

import android.graphics.Rect;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.drawerlayout.widget.DrawerLayout;
import java.util.WeakHashMap;
import n0.s0;
import o0.h;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class b extends n0.b {
    public final Rect d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DrawerLayout f11440e;

    public b(DrawerLayout drawerLayout) {
        this.f11440e = drawerLayout;
    }

    @Override // n0.b
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            return this.f8298a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
        }
        accessibilityEvent.getText();
        DrawerLayout drawerLayout = this.f11440e;
        View viewF = drawerLayout.f();
        if (viewF == null) {
            return true;
        }
        int iH = drawerLayout.h(viewF);
        drawerLayout.getClass();
        WeakHashMap weakHashMap = s0.f8353a;
        Gravity.getAbsoluteGravity(iH, drawerLayout.getLayoutDirection());
        return true;
    }

    @Override // n0.b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        accessibilityEvent.setClassName("androidx.drawerlayout.widget.DrawerLayout");
    }

    @Override // n0.b
    public final void d(View view, h hVar) {
        boolean z7 = DrawerLayout.E;
        View.AccessibilityDelegate accessibilityDelegate = this.f8298a;
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f8541a;
        if (z7) {
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
        } else {
            AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(accessibilityNodeInfo);
            accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoObtain);
            hVar.f8542b = -1;
            accessibilityNodeInfo.setSource(view);
            WeakHashMap weakHashMap = s0.f8353a;
            Object parentForAccessibility = view.getParentForAccessibility();
            if (parentForAccessibility instanceof View) {
                accessibilityNodeInfo.setParent((View) parentForAccessibility);
            }
            Rect rect = this.d;
            accessibilityNodeInfoObtain.getBoundsInScreen(rect);
            accessibilityNodeInfo.setBoundsInScreen(rect);
            accessibilityNodeInfo.setVisibleToUser(accessibilityNodeInfoObtain.isVisibleToUser());
            accessibilityNodeInfo.setPackageName(accessibilityNodeInfoObtain.getPackageName());
            hVar.i(accessibilityNodeInfoObtain.getClassName());
            hVar.l(accessibilityNodeInfoObtain.getContentDescription());
            accessibilityNodeInfo.setEnabled(accessibilityNodeInfoObtain.isEnabled());
            accessibilityNodeInfo.setFocused(accessibilityNodeInfoObtain.isFocused());
            accessibilityNodeInfo.setAccessibilityFocused(accessibilityNodeInfoObtain.isAccessibilityFocused());
            accessibilityNodeInfo.setSelected(accessibilityNodeInfoObtain.isSelected());
            hVar.a(accessibilityNodeInfoObtain.getActions());
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = viewGroup.getChildAt(i6);
                if (DrawerLayout.i(childAt)) {
                    accessibilityNodeInfo.addChild(childAt);
                }
            }
        }
        hVar.i("androidx.drawerlayout.widget.DrawerLayout");
        accessibilityNodeInfo.setFocusable(false);
        accessibilityNodeInfo.setFocused(false);
        accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) o0.c.f8522e.f8536a);
        accessibilityNodeInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) o0.c.f.f8536a);
    }

    @Override // n0.b
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        if (DrawerLayout.E || DrawerLayout.i(view)) {
            return this.f8298a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
        }
        return false;
    }
}
