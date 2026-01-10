package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;
import java.util.WeakHashMap;
import k6.a;
import n0.s0;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {

    /* renamed from: a, reason: collision with root package name */
    public int f5413a;

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5413a = 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public abstract boolean b(View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        Object obj = (a) view2;
        boolean z7 = ((FloatingActionButton) obj).f4933o.f659a;
        if (z7) {
            int i6 = this.f5413a;
            if (i6 != 0 && i6 != 2) {
                return false;
            }
        } else if (this.f5413a != 1) {
            return false;
        }
        this.f5413a = z7 ? 1 : 2;
        s((View) obj, view, z7, true);
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) {
        a aVar;
        boolean z7;
        int i10;
        WeakHashMap weakHashMap = s0.f8353a;
        if (!view.isLaidOut()) {
            ArrayList arrayListO = coordinatorLayout.o(view);
            int size = arrayListO.size();
            int i11 = 0;
            while (true) {
                if (i11 >= size) {
                    aVar = null;
                    break;
                }
                View view2 = (View) arrayListO.get(i11);
                if (b(view, view2)) {
                    aVar = (a) view2;
                    break;
                }
                i11++;
            }
            if (aVar != null && (!(z7 = ((FloatingActionButton) aVar).f4933o.f659a) ? this.f5413a == 1 : !((i10 = this.f5413a) != 0 && i10 != 2))) {
                int i12 = z7 ? 1 : 2;
                this.f5413a = i12;
                view.getViewTreeObserver().addOnPreDrawListener(new a7.a(this, view, i12, aVar));
            }
        }
        return false;
    }

    public abstract void s(View view, View view2, boolean z7, boolean z10);

    public ExpandableBehavior() {
        this.f5413a = 0;
    }
}
