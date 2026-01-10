package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class r1 extends n0.b {
    public final RecyclerView d;

    /* renamed from: e, reason: collision with root package name */
    public final q1 f2939e;

    public r1(RecyclerView recyclerView) {
        this.d = recyclerView;
        q1 q1Var = this.f2939e;
        if (q1Var != null) {
            this.f2939e = q1Var;
        } else {
            this.f2939e = new q1(this);
        }
    }

    @Override // n0.b
    public final void c(View view, AccessibilityEvent accessibilityEvent) {
        super.c(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || this.d.hasPendingAdapterUpdates()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().onInitializeAccessibilityEvent(accessibilityEvent);
        }
    }

    @Override // n0.b
    public void d(View view, o0.h hVar) {
        this.f8298a.onInitializeAccessibilityNodeInfo(view, hVar.f8541a);
        RecyclerView recyclerView = this.d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return;
        }
        recyclerView.getLayoutManager().onInitializeAccessibilityNodeInfo(hVar);
    }

    @Override // n0.b
    public final boolean g(View view, int i6, Bundle bundle) {
        if (super.g(view, i6, bundle)) {
            return true;
        }
        RecyclerView recyclerView = this.d;
        if (recyclerView.hasPendingAdapterUpdates() || recyclerView.getLayoutManager() == null) {
            return false;
        }
        return recyclerView.getLayoutManager().performAccessibilityAction(i6, bundle);
    }
}
