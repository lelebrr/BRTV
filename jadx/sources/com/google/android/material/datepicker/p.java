package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.b1;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class p extends b1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a0 f4863a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MaterialButton f4864b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f4865c;

    public p(r rVar, a0 a0Var, MaterialButton materialButton) {
        this.f4865c = rVar;
        this.f4863a = a0Var;
        this.f4864b = materialButton;
    }

    @Override // androidx.recyclerview.widget.b1
    public final void onScrollStateChanged(RecyclerView recyclerView, int i6) {
        if (i6 == 0) {
            recyclerView.announceForAccessibility(this.f4864b.getText());
        }
    }

    @Override // androidx.recyclerview.widget.b1
    public final void onScrolled(RecyclerView recyclerView, int i6, int i10) {
        r rVar = this.f4865c;
        int iFindFirstVisibleItemPosition = i6 < 0 ? ((LinearLayoutManager) rVar.f4870c0.getLayoutManager()).findFirstVisibleItemPosition() : ((LinearLayoutManager) rVar.f4870c0.getLayoutManager()).findLastVisibleItemPosition();
        CalendarConstraints calendarConstraints = this.f4863a.f4819a;
        Calendar calendarC = g0.c(calendarConstraints.f4798a.f4809a);
        calendarC.add(2, iFindFirstVisibleItemPosition);
        rVar.X = new Month(calendarC);
        Calendar calendarC2 = g0.c(calendarConstraints.f4798a.f4809a);
        calendarC2.add(2, iFindFirstVisibleItemPosition);
        this.f4864b.setText(new Month(calendarC2).o());
    }
}
