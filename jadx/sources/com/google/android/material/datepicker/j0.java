package com.google.android.material.datepicker;

import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.k0;
import androidx.recyclerview.widget.p1;
import com.p2elite.brtv2.R;
import java.util.Calendar;
import java.util.Iterator;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class j0 extends k0 {

    /* renamed from: a, reason: collision with root package name */
    public final r f4851a;

    public j0(r rVar) {
        this.f4851a = rVar;
    }

    @Override // androidx.recyclerview.widget.k0
    public final int getItemCount() {
        return this.f4851a.W.f4801e;
    }

    @Override // androidx.recyclerview.widget.k0
    public final void onBindViewHolder(p1 p1Var, int i6) {
        i0 i0Var = (i0) p1Var;
        r rVar = this.f4851a;
        int i10 = rVar.W.f4798a.f4811c + i6;
        String string = i0Var.f4846a.getContext().getString(R.string.mtrl_picker_navigate_to_year_description);
        String str = String.format(Locale.getDefault(), "%d", Integer.valueOf(i10));
        TextView textView = i0Var.f4846a;
        textView.setText(str);
        textView.setContentDescription(String.format(string, Integer.valueOf(i10)));
        c cVar = rVar.Z;
        Calendar calendarG = g0.g();
        androidx.appcompat.widget.u uVar = calendarG.get(1) == i10 ? cVar.f : cVar.d;
        Iterator it = rVar.V.g().iterator();
        while (it.hasNext()) {
            calendarG.setTimeInMillis(((Long) it.next()).longValue());
            if (calendarG.get(1) == i10) {
                uVar = cVar.f4828e;
            }
        }
        uVar.k(textView);
        textView.setOnClickListener(new h0(this, i10));
    }

    @Override // androidx.recyclerview.widget.k0
    public final p1 onCreateViewHolder(ViewGroup viewGroup, int i6) {
        return new i0((TextView) a.e.i(viewGroup, R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
