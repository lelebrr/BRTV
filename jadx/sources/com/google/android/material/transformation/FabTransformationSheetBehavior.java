package com.google.android.material.transformation;

import a7.f;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.coordinatorlayout.widget.c;
import com.p2elite.brtv2.R;
import java.util.HashMap;
import java.util.WeakHashMap;
import n0.s0;
import y5.e;
import y5.g;

/* compiled from: MyApplication */
@Deprecated
/* loaded from: classes.dex */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: i, reason: collision with root package name */
    public HashMap f5420i;

    public FabTransformationSheetBehavior() {
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    public final void s(View view, View view2, boolean z7, boolean z10) {
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z7) {
                this.f5420i = new HashMap(childCount);
            }
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = coordinatorLayout.getChildAt(i6);
                boolean z11 = (childAt.getLayoutParams() instanceof c) && (((c) childAt.getLayoutParams()).f1122a instanceof FabTransformationScrimBehavior);
                if (childAt != view2 && !z11) {
                    if (z7) {
                        this.f5420i.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        WeakHashMap weakHashMap = s0.f8353a;
                        childAt.setImportantForAccessibility(4);
                    } else {
                        HashMap map = this.f5420i;
                        if (map != null && map.containsKey(childAt)) {
                            int iIntValue = ((Integer) this.f5420i.get(childAt)).intValue();
                            WeakHashMap weakHashMap2 = s0.f8353a;
                            childAt.setImportantForAccessibility(iIntValue);
                        }
                    }
                }
            }
            if (!z7) {
                this.f5420i = null;
            }
        }
        super.s(view, view2, z7, z10);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    public final f z(Context context, boolean z7) {
        int i6 = z7 ? R.animator.mtrl_fab_transformation_sheet_expand_spec : R.animator.mtrl_fab_transformation_sheet_collapse_spec;
        f fVar = new f(0);
        fVar.f169b = e.b(context, i6);
        fVar.f170c = new g();
        return fVar;
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
