package com.google.android.material.datepicker;

import android.content.Context;
import android.icu.text.DateFormat;
import android.icu.util.TimeZone;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x extends BaseAdapter {
    public static final int f = g0.h(null).getMaximum(4);

    /* renamed from: a, reason: collision with root package name */
    public final Month f4893a;

    /* renamed from: b, reason: collision with root package name */
    public final DateSelector f4894b;

    /* renamed from: c, reason: collision with root package name */
    public Collection f4895c;
    public c d;

    /* renamed from: e, reason: collision with root package name */
    public final CalendarConstraints f4896e;

    public x(Month month, DateSelector dateSelector, CalendarConstraints calendarConstraints) {
        this.f4893a = month;
        this.f4894b = dateSelector;
        this.f4896e = calendarConstraints;
        this.f4895c = dateSelector.g();
    }

    @Override // android.widget.Adapter
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i6) {
        Month month = this.f4893a;
        if (i6 < month.m() || i6 > b()) {
            return null;
        }
        return Long.valueOf(month.n((i6 - month.m()) + 1));
    }

    public final int b() {
        Month month = this.f4893a;
        return (month.m() + month.f4812e) - 1;
    }

    public final void c(TextView textView, long j10) {
        androidx.appcompat.widget.u uVar;
        if (textView == null) {
            return;
        }
        if (this.f4896e.f4800c.d(j10)) {
            textView.setEnabled(true);
            Iterator it = this.f4894b.g().iterator();
            while (true) {
                if (it.hasNext()) {
                    if (g0.a(j10) == g0.a(((Long) it.next()).longValue())) {
                        uVar = this.d.f4826b;
                        break;
                    }
                } else {
                    uVar = g0.g().getTimeInMillis() == j10 ? this.d.f4827c : this.d.f4825a;
                }
            }
        } else {
            textView.setEnabled(false);
            uVar = this.d.f4829g;
        }
        uVar.k(textView);
    }

    public final void d(MaterialCalendarGridView materialCalendarGridView, long j10) {
        Month monthL = Month.l(j10);
        Month month = this.f4893a;
        if (monthL.equals(month)) {
            Calendar calendarC = g0.c(month.f4809a);
            calendarC.setTimeInMillis(j10);
            c((TextView) materialCalendarGridView.getChildAt((materialCalendarGridView.a().f4893a.m() + (calendarC.get(5) - 1)) - materialCalendarGridView.getFirstVisiblePosition()), j10);
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        Month month = this.f4893a;
        return month.f4812e + month.m();
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i6) {
        return i6 / this.f4893a.d;
    }

    @Override // android.widget.Adapter
    public final View getView(int i6, View view, ViewGroup viewGroup) {
        CharSequence charSequence;
        CharSequence charSequence2;
        Context context = viewGroup.getContext();
        if (this.d == null) {
            this.d = new c(context);
        }
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) a.e.i(viewGroup, R.layout.mtrl_calendar_day, viewGroup, false);
        }
        Month month = this.f4893a;
        int iM = i6 - month.m();
        if (iM < 0 || iM >= month.f4812e) {
            textView.setVisibility(8);
            textView.setEnabled(false);
        } else {
            int i10 = iM + 1;
            textView.setTag(month);
            textView.setText(String.format(textView.getResources().getConfiguration().locale, "%d", Integer.valueOf(i10)));
            long jN = month.n(i10);
            if (month.f4811c == new Month(g0.g()).f4811c) {
                Locale locale = Locale.getDefault();
                if (Build.VERSION.SDK_INT >= 24) {
                    DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton("MMMEd", locale);
                    instanceForSkeleton.setTimeZone(TimeZone.getTimeZone("UTC"));
                    charSequence2 = instanceForSkeleton.format(new Date(jN));
                } else {
                    charSequence2 = g0.d(0, locale).format(new Date(jN));
                }
                textView.setContentDescription(charSequence2);
            } else {
                Locale locale2 = Locale.getDefault();
                if (Build.VERSION.SDK_INT >= 24) {
                    DateFormat instanceForSkeleton2 = DateFormat.getInstanceForSkeleton("yMMMEd", locale2);
                    instanceForSkeleton2.setTimeZone(TimeZone.getTimeZone("UTC"));
                    charSequence = instanceForSkeleton2.format(new Date(jN));
                } else {
                    charSequence = g0.d(0, locale2).format(new Date(jN));
                }
                textView.setContentDescription(charSequence);
            }
            textView.setVisibility(0);
            textView.setEnabled(true);
        }
        Long item = getItem(i6);
        if (item != null) {
            c(textView, item.longValue());
        }
        return textView;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
