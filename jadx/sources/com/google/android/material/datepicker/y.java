package com.google.android.material.datepicker;

import android.view.View;
import android.widget.AdapterView;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y implements AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendarGridView f4897a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f4898b;

    public y(a0 a0Var, MaterialCalendarGridView materialCalendarGridView) {
        this.f4898b = a0Var;
        this.f4897a = materialCalendarGridView;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j10) {
        MaterialCalendarGridView materialCalendarGridView = this.f4897a;
        x xVarA = materialCalendarGridView.a();
        if (i6 < xVarA.f4893a.m() || i6 > xVarA.b()) {
            return;
        }
        n nVar = this.f4898b.f4821c;
        long jLongValue = materialCalendarGridView.a().getItem(i6).longValue();
        r rVar = nVar.f4859a;
        if (rVar.W.f4800c.d(jLongValue)) {
            rVar.V.k(jLongValue);
            Iterator it = rVar.T.iterator();
            while (it.hasNext()) {
                ((t) it.next()).b(rVar.V.i());
            }
            rVar.f4870c0.getAdapter().notifyDataSetChanged();
            RecyclerView recyclerView = rVar.f4869b0;
            if (recyclerView != null) {
                recyclerView.getAdapter().notifyDataSetChanged();
            }
        }
    }
}
