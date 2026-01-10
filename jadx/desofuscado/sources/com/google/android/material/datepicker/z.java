package com.google.android.material.datepicker;

import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class z extends p1 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f4899a;

    /* renamed from: b, reason: collision with root package name */
    public final MaterialCalendarGridView f4900b;

    public z(LinearLayout linearLayout, boolean z7) {
        super(linearLayout);
        TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
        this.f4899a = textView;
        WeakHashMap weakHashMap = s0.f8353a;
        new n0.c0(R.id.tag_accessibility_heading, Boolean.class, 0, 28, 3).d(textView, Boolean.TRUE);
        this.f4900b = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
        if (z7) {
            return;
        }
        textView.setVisibility(8);
    }
}
