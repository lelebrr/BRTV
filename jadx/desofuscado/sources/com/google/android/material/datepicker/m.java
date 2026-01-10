package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.l1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends LinearLayoutManager {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4857a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ r f4858b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(r rVar, int i6, int i10) {
        super(i6);
        this.f4858b = rVar;
        this.f4857a = i10;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public final void calculateExtraLayoutSpace(l1 l1Var, int[] iArr) {
        int i6 = this.f4857a;
        r rVar = this.f4858b;
        if (i6 == 0) {
            iArr[0] = rVar.f4870c0.getWidth();
            iArr[1] = rVar.f4870c0.getWidth();
        } else {
            iArr[0] = rVar.f4870c0.getHeight();
            iArr[1] = rVar.f4870c0.getHeight();
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.x0
    public final void smoothScrollToPosition(RecyclerView recyclerView, l1 l1Var, int i6) {
        e0 e0Var = new e0(recyclerView.getContext());
        e0Var.setTargetPosition(i6);
        startSmoothScroll(e0Var);
    }
}
