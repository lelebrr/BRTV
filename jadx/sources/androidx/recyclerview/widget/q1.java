package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q1 extends n0.b {
    public final r1 d;

    /* renamed from: e, reason: collision with root package name */
    public final WeakHashMap f2933e = new WeakHashMap();

    public q1(r1 r1Var) {
        this.d = r1Var;
    }

    @Override // n0.b
    public final boolean a(View view, AccessibilityEvent accessibilityEvent) {
        n0.b bVar = (n0.b) this.f2933e.get(view);
        return bVar != null ? bVar.a(view, accessibilityEvent) : this.f8298a.dispatchPopulateAccessibilityEvent(view, accessibilityEvent);
    }

    @Override // n0.b
    public final j7.c b(View view) {
        n0.b bVar = (n0.b) this.f2933e.get(view);
        return bVar != null ? bVar.b(view) : super.b(view);
    }

    @Override // n0.b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        n0.b bVar = (n0.b) this.f2933e.get(view);
        if (bVar != null) {
            bVar.c(view, accessibilityEvent);
        } else {
            super.c(view, accessibilityEvent);
        }
    }

    @Override // n0.b
    public final void d(View view, o0.h hVar) {
        r1 r1Var = this.d;
        boolean zHasPendingAdapterUpdates = r1Var.d.hasPendingAdapterUpdates();
        View.AccessibilityDelegate accessibilityDelegate = this.f8298a;
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f8541a;
        if (!zHasPendingAdapterUpdates) {
            RecyclerView recyclerView = r1Var.d;
            if (recyclerView.getLayoutManager() != null) {
                recyclerView.getLayoutManager().onInitializeAccessibilityNodeInfoForItem(view, hVar);
                n0.b bVar = (n0.b) this.f2933e.get(view);
                if (bVar != null) {
                    bVar.d(view, hVar);
                    return;
                } else {
                    accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    return;
                }
            }
        }
        accessibilityDelegate.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
    }

    @Override // n0.b
    public final void e(View view, AccessibilityEvent accessibilityEvent) {
        n0.b bVar = (n0.b) this.f2933e.get(view);
        if (bVar != null) {
            bVar.e(view, accessibilityEvent);
        } else {
            super.e(view, accessibilityEvent);
        }
    }

    @Override // n0.b
    public final boolean f(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
        n0.b bVar = (n0.b) this.f2933e.get(viewGroup);
        return bVar != null ? bVar.f(viewGroup, view, accessibilityEvent) : this.f8298a.onRequestSendAccessibilityEvent(viewGroup, view, accessibilityEvent);
    }

    @Override // n0.b
    public final boolean g(View view, int i6, Bundle bundle) {
        r1 r1Var = this.d;
        if (!r1Var.d.hasPendingAdapterUpdates()) {
            RecyclerView recyclerView = r1Var.d;
            if (recyclerView.getLayoutManager() != null) {
                n0.b bVar = (n0.b) this.f2933e.get(view);
                if (bVar != null) {
                    if (bVar.g(view, i6, bundle)) {
                        return true;
                    }
                } else if (super.g(view, i6, bundle)) {
                    return true;
                }
                return recyclerView.getLayoutManager().performAccessibilityActionForItem(view, i6, bundle);
            }
        }
        return super.g(view, i6, bundle);
    }

    @Override // n0.b
    public final void h(View view, int i6) {
        n0.b bVar = (n0.b) this.f2933e.get(view);
        if (bVar != null) {
            bVar.h(view, i6);
        } else {
            super.h(view, i6);
        }
    }

    @Override // n0.b
    public final void i(View view, AccessibilityEvent accessibilityEvent) {
        n0.b bVar = (n0.b) this.f2933e.get(view);
        if (bVar != null) {
            bVar.i(view, accessibilityEvent);
        } else {
            super.i(view, accessibilityEvent);
        }
    }
}
