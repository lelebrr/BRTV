package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4866a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ a0 f4867b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r f4868c;

    public /* synthetic */ q(r rVar, a0 a0Var, int i6) {
        this.f4866a = i6;
        this.f4868c = rVar;
        this.f4867b = a0Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f4866a) {
            case 0:
                r rVar = this.f4868c;
                int iFindFirstVisibleItemPosition = ((LinearLayoutManager) rVar.f4870c0.getLayoutManager()).findFirstVisibleItemPosition() + 1;
                if (iFindFirstVisibleItemPosition < rVar.f4870c0.getAdapter().getItemCount()) {
                    Calendar calendarC = g0.c(this.f4867b.f4819a.f4798a.f4809a);
                    calendarC.add(2, iFindFirstVisibleItemPosition);
                    rVar.R(new Month(calendarC));
                    break;
                }
                break;
            default:
                r rVar2 = this.f4868c;
                int iFindLastVisibleItemPosition = ((LinearLayoutManager) rVar2.f4870c0.getLayoutManager()).findLastVisibleItemPosition() - 1;
                if (iFindLastVisibleItemPosition >= 0) {
                    Calendar calendarC2 = g0.c(this.f4867b.f4819a.f4798a.f4809a);
                    calendarC2.add(2, iFindLastVisibleItemPosition);
                    rVar2.R(new Month(calendarC2));
                    break;
                }
                break;
        }
    }
}
