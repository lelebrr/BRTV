package com.google.android.material.datepicker;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.p2elite.brtv2.R;
import java.util.Calendar;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class k extends BaseAdapter {
    public static final int d;

    /* renamed from: a, reason: collision with root package name */
    public final Calendar f4852a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4853b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4854c;

    static {
        d = Build.VERSION.SDK_INT >= 26 ? 4 : 1;
    }

    public k() {
        Calendar calendarH = g0.h(null);
        this.f4852a = calendarH;
        this.f4853b = calendarH.getMaximum(7);
        this.f4854c = calendarH.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f4853b;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i6) {
        int i10 = this.f4853b;
        if (i6 >= i10) {
            return null;
        }
        int i11 = i6 + this.f4854c;
        if (i11 > i10) {
            i11 -= i10;
        }
        return Integer.valueOf(i11);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i6) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i6, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) a.e.i(viewGroup, R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i10 = i6 + this.f4854c;
        int i11 = this.f4853b;
        if (i10 > i11) {
            i10 -= i11;
        }
        Calendar calendar = this.f4852a;
        calendar.set(7, i10);
        textView.setText(calendar.getDisplayName(7, d, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }
}
