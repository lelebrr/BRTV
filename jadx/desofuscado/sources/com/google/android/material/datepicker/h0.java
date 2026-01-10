package com.google.android.material.datepicker;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4841a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j0 f4842b;

    public h0(j0 j0Var, int i6) {
        this.f4842b = j0Var;
        this.f4841a = i6;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        j0 j0Var = this.f4842b;
        Month monthJ = Month.j(this.f4841a, j0Var.f4851a.X.f4810b);
        r rVar = j0Var.f4851a;
        CalendarConstraints calendarConstraints = rVar.W;
        Month month = calendarConstraints.f4798a;
        if (monthJ.compareTo(month) < 0) {
            monthJ = month;
        } else {
            Month month2 = calendarConstraints.f4799b;
            if (monthJ.compareTo(month2) > 0) {
                monthJ = month2;
            }
        }
        rVar.R(monthJ);
        rVar.S(1);
    }
}
