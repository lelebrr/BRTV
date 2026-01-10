package com.google.android.material.internal;

import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.r1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o extends r1 {
    public final /* synthetic */ r f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(r rVar, NavigationMenuView navigationMenuView) {
        super(navigationMenuView);
        this.f = rVar;
    }

    @Override // androidx.recyclerview.widget.r1, n0.b
    public final void d(View view, o0.h hVar) {
        super.d(view, hVar);
        r rVar = this.f.f5044e.d;
        int i6 = rVar.f5042b.getChildCount() == 0 ? 0 : 1;
        for (int i10 = 0; i10 < rVar.f5044e.f5034a.size(); i10++) {
            if (rVar.f5044e.getItemViewType(i10) == 0) {
                i6++;
            }
        }
        hVar.f8541a.setCollectionInfo(AccessibilityNodeInfo.CollectionInfo.obtain(i6, 0, false));
    }
}
