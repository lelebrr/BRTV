package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.k0;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;
import java.util.Calendar;
import java.util.Iterator;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class a0 extends k0 {

    /* renamed from: a, reason: collision with root package name */
    public final CalendarConstraints f4819a;

    /* renamed from: b, reason: collision with root package name */
    public final DateSelector f4820b;

    /* renamed from: c, reason: collision with root package name */
    public final n f4821c;
    public final int d;

    public a0(ContextThemeWrapper contextThemeWrapper, DateSelector dateSelector, CalendarConstraints calendarConstraints, n nVar) {
        Month month = calendarConstraints.f4798a;
        Month month2 = calendarConstraints.d;
        if (month.compareTo(month2) > 0) {
            throw new IllegalArgumentException("firstPage cannot be after currentPage");
        }
        if (month2.compareTo(calendarConstraints.f4799b) > 0) {
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        this.d = (contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * x.f) + (u.V(contextThemeWrapper, android.R.attr.windowFullscreen) ? contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) : 0);
        this.f4819a = calendarConstraints;
        this.f4820b = dateSelector;
        this.f4821c = nVar;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f4819a.f;
    }

    @Override // androidx.recyclerview.widget.k0
    public final long getItemId(int i6) {
        Calendar calendarC = g0.c(this.f4819a.f4798a.f4809a);
        calendarC.add(2, i6);
        return new Month(calendarC).f4809a.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(p1 p1Var, int i6) {
        z zVar = (z) p1Var;
        CalendarConstraints calendarConstraints = this.f4819a;
        Calendar calendarC = g0.c(calendarConstraints.f4798a.f4809a);
        calendarC.add(2, i6);
        Month month = new Month(calendarC);
        zVar.f4899a.setText(month.o());
        MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) zVar.f4900b.findViewById(R.id.month_grid);
        if (materialCalendarGridView.a() == null || !month.equals(materialCalendarGridView.a().f4893a)) {
            x xVar = new x(month, this.f4820b, calendarConstraints);
            materialCalendarGridView.setNumColumns(month.d);
            materialCalendarGridView.setAdapter((ListAdapter) xVar);
        } else {
            materialCalendarGridView.invalidate();
            x xVarA = materialCalendarGridView.a();
            Iterator it = xVarA.f4895c.iterator();
            while (it.hasNext()) {
                xVarA.d(materialCalendarGridView, ((Long) it.next()).longValue());
            }
            DateSelector dateSelector = xVarA.f4894b;
            if (dateSelector != null) {
                Iterator it2 = dateSelector.g().iterator();
                while (it2.hasNext()) {
                    xVarA.d(materialCalendarGridView, ((Long) it2.next()).longValue());
                }
                xVarA.f4895c = dateSelector.g();
            }
        }
        materialCalendarGridView.setOnItemClickListener(new y(this, materialCalendarGridView));
    }

    @Override // androidx.recyclerview.widget.k0
    public final p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        LinearLayout linearLayout = (LinearLayout) a.e.i(viewGroup, R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (!u.V(viewGroup.getContext(), android.R.attr.windowFullscreen)) {
            return new z(linearLayout, false);
        }
        linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.d));
        return new z(linearLayout, true);
    }
}
