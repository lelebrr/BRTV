package v0;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.ArrayList;
import java.util.WeakHashMap;
import n0.s0;
import o0.h;
import q1.f0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class b extends n0.b {

    /* renamed from: n, reason: collision with root package name */
    public static final Rect f10617n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* renamed from: o, reason: collision with root package name */
    public static final q.b f10618o = new q.b(6);

    /* renamed from: p, reason: collision with root package name */
    public static final f0 f10619p = new f0(6);

    /* renamed from: h, reason: collision with root package name */
    public final AccessibilityManager f10622h;

    /* renamed from: i, reason: collision with root package name */
    public final View f10623i;

    /* renamed from: j, reason: collision with root package name */
    public a f10624j;
    public final Rect d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public final Rect f10620e = new Rect();
    public final Rect f = new Rect();

    /* renamed from: g, reason: collision with root package name */
    public final int[] f10621g = new int[2];

    /* renamed from: k, reason: collision with root package name */
    public int f10625k = Integer.MIN_VALUE;

    /* renamed from: l, reason: collision with root package name */
    public int f10626l = Integer.MIN_VALUE;

    /* renamed from: m, reason: collision with root package name */
    public int f10627m = Integer.MIN_VALUE;

    public b(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f10623i = view;
        this.f10622h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        WeakHashMap weakHashMap = s0.f8353a;
        if (view.getImportantForAccessibility() == 0) {
            view.setImportantForAccessibility(1);
        }
    }

    @Override // n0.b
    public final j7.c b(View view) {
        if (this.f10624j == null) {
            this.f10624j = new a(this);
        }
        return this.f10624j;
    }

    @Override // n0.b
    public final void d(View view, h hVar) {
        this.f8298a.onInitializeAccessibilityNodeInfo(view, hVar.f8541a);
        t(hVar);
    }

    public final boolean j(int i6) {
        if (this.f10626l != i6) {
            return false;
        }
        this.f10626l = Integer.MIN_VALUE;
        v(i6, false);
        x(i6, 8);
        return true;
    }

    public final AccessibilityEvent k(int i6, int i10) {
        View view = this.f10623i;
        if (i6 == -1) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i10);
            view.onInitializeAccessibilityEvent(accessibilityEventObtain);
            return accessibilityEventObtain;
        }
        AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain(i10);
        h hVarR = r(i6);
        accessibilityEventObtain2.getText().add(hVarR.g());
        AccessibilityNodeInfo accessibilityNodeInfo = hVarR.f8541a;
        accessibilityEventObtain2.setContentDescription(accessibilityNodeInfo.getContentDescription());
        accessibilityEventObtain2.setScrollable(accessibilityNodeInfo.isScrollable());
        accessibilityEventObtain2.setPassword(accessibilityNodeInfo.isPassword());
        accessibilityEventObtain2.setEnabled(accessibilityNodeInfo.isEnabled());
        accessibilityEventObtain2.setChecked(accessibilityNodeInfo.isChecked());
        if (accessibilityEventObtain2.getText().isEmpty() && accessibilityEventObtain2.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain2.setClassName(accessibilityNodeInfo.getClassName());
        accessibilityEventObtain2.setSource(view, i6);
        accessibilityEventObtain2.setPackageName(view.getContext().getPackageName());
        return accessibilityEventObtain2;
    }

    public final h l(int i6) {
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain();
        h hVar = new h(accessibilityNodeInfoObtain);
        accessibilityNodeInfoObtain.setEnabled(true);
        accessibilityNodeInfoObtain.setFocusable(true);
        hVar.i("android.view.View");
        Rect rect = f10617n;
        accessibilityNodeInfoObtain.setBoundsInParent(rect);
        accessibilityNodeInfoObtain.setBoundsInScreen(rect);
        View view = this.f10623i;
        accessibilityNodeInfoObtain.setParent(view);
        u(i6, hVar);
        if (hVar.g() == null && accessibilityNodeInfoObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.f10620e;
        hVar.f(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoObtain.setPackageName(view.getContext().getPackageName());
        hVar.f8542b = i6;
        accessibilityNodeInfoObtain.setSource(view, i6);
        if (this.f10625k == i6) {
            accessibilityNodeInfoObtain.setAccessibilityFocused(true);
            hVar.a(128);
        } else {
            accessibilityNodeInfoObtain.setAccessibilityFocused(false);
            hVar.a(64);
        }
        boolean z7 = this.f10626l == i6;
        if (z7) {
            hVar.a(2);
        } else if (accessibilityNodeInfoObtain.isFocusable()) {
            hVar.a(1);
        }
        accessibilityNodeInfoObtain.setFocused(z7);
        int[] iArr = this.f10621g;
        view.getLocationOnScreen(iArr);
        Rect rect3 = this.d;
        accessibilityNodeInfoObtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            hVar.f(rect3);
            rect3.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
        }
        Rect rect4 = this.f;
        if (view.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            if (rect3.intersect(rect4)) {
                accessibilityNodeInfoObtain.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                    Object parent = view.getParent();
                    while (true) {
                        if (parent instanceof View) {
                            View view2 = (View) parent;
                            if (view2.getAlpha() <= 0.0f || view2.getVisibility() != 0) {
                                break;
                            }
                            parent = view2.getParent();
                        } else if (parent != null) {
                            hVar.f8541a.setVisibleToUser(true);
                        }
                    }
                }
            }
        }
        return hVar;
    }

    public final boolean m(MotionEvent motionEvent) {
        int i6;
        AccessibilityManager accessibilityManager = this.f10622h;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iN = n(motionEvent.getX(), motionEvent.getY());
            int i10 = this.f10627m;
            if (i10 != iN) {
                this.f10627m = iN;
                x(iN, 128);
                x(i10, 256);
            }
            return iN != Integer.MIN_VALUE;
        }
        if (action != 10 || (i6 = this.f10627m) == Integer.MIN_VALUE) {
            return false;
        }
        if (i6 != Integer.MIN_VALUE) {
            this.f10627m = Integer.MIN_VALUE;
            x(i6, 256);
        }
        return true;
    }

    public abstract int n(float f, float f3);

    public abstract void o(ArrayList arrayList);

    public final void p(int i6) {
        View view;
        ViewParent parent;
        if (i6 == Integer.MIN_VALUE || !this.f10622h.isEnabled() || (parent = (view = this.f10623i).getParent()) == null) {
            return;
        }
        AccessibilityEvent accessibilityEventK = k(i6, 2048);
        accessibilityEventK.setContentChangeTypes(0);
        parent.requestSendAccessibilityEvent(view, accessibilityEventK);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean q(int r20, android.graphics.Rect r21) {
        /*
            Method dump skipped, instructions count: 484
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: v0.b.q(int, android.graphics.Rect):boolean");
    }

    public final h r(int i6) {
        if (i6 != -1) {
            return l(i6);
        }
        View view = this.f10623i;
        AccessibilityNodeInfo accessibilityNodeInfoObtain = AccessibilityNodeInfo.obtain(view);
        h hVar = new h(accessibilityNodeInfoObtain);
        WeakHashMap weakHashMap = s0.f8353a;
        view.onInitializeAccessibilityNodeInfo(accessibilityNodeInfoObtain);
        ArrayList arrayList = new ArrayList();
        o(arrayList);
        if (accessibilityNodeInfoObtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            hVar.f8541a.addChild(view, ((Integer) arrayList.get(i10)).intValue());
        }
        return hVar;
    }

    public abstract boolean s(int i6, int i10, Bundle bundle);

    public abstract void u(int i6, h hVar);

    public final boolean w(int i6) {
        int i10;
        View view = this.f10623i;
        if ((!view.isFocused() && !view.requestFocus()) || (i10 = this.f10626l) == i6) {
            return false;
        }
        if (i10 != Integer.MIN_VALUE) {
            j(i10);
        }
        if (i6 == Integer.MIN_VALUE) {
            return false;
        }
        this.f10626l = i6;
        v(i6, true);
        x(i6, 8);
        return true;
    }

    public final void x(int i6, int i10) {
        View view;
        ViewParent parent;
        if (i6 == Integer.MIN_VALUE || !this.f10622h.isEnabled() || (parent = (view = this.f10623i).getParent()) == null) {
            return;
        }
        parent.requestSendAccessibilityEvent(view, k(i6, i10));
    }

    public void t(h hVar) {
    }

    public void v(int i6, boolean z7) {
    }
}
