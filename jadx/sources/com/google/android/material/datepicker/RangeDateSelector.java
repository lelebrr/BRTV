package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import com.p2elite.brtv2.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class RangeDateSelector implements DateSelector<m0.b> {
    public static final Parcelable.Creator<RangeDateSelector> CREATOR = new w(3);

    /* renamed from: a, reason: collision with root package name */
    public String f4814a;

    /* renamed from: b, reason: collision with root package name */
    public Long f4815b;

    /* renamed from: c, reason: collision with root package name */
    public Long f4816c;
    public Long d;

    /* renamed from: e, reason: collision with root package name */
    public Long f4817e;

    public static void h(RangeDateSelector rangeDateSelector, TextInputLayout textInputLayout, TextInputLayout textInputLayout2, t tVar) {
        Long l9 = rangeDateSelector.d;
        if (l9 == null || rangeDateSelector.f4817e == null) {
            if (textInputLayout.getError() != null && rangeDateSelector.f4814a.contentEquals(textInputLayout.getError())) {
                textInputLayout.setError(null);
            }
            if (textInputLayout2.getError() != null && " ".contentEquals(textInputLayout2.getError())) {
                textInputLayout2.setError(null);
            }
            tVar.a();
            return;
        }
        if (l9.longValue() > rangeDateSelector.f4817e.longValue()) {
            textInputLayout.setError(rangeDateSelector.f4814a);
            textInputLayout2.setError(" ");
            tVar.a();
        } else {
            Long l10 = rangeDateSelector.d;
            rangeDateSelector.f4815b = l10;
            Long l11 = rangeDateSelector.f4817e;
            rangeDateSelector.f4816c = l11;
            tVar.b(new m0.b(l10, l11));
        }
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final String a(Context context) {
        Resources resources = context.getResources();
        Long l9 = this.f4815b;
        if (l9 == null && this.f4816c == null) {
            return resources.getString(R.string.mtrl_picker_range_header_unselected);
        }
        Long l10 = this.f4816c;
        if (l10 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_start_selected, r4.b.m(l9.longValue()));
        }
        if (l9 == null) {
            return resources.getString(R.string.mtrl_picker_range_header_only_end_selected, r4.b.m(l10.longValue()));
        }
        Calendar calendarG = g0.g();
        Calendar calendarH = g0.h(null);
        calendarH.setTimeInMillis(l9.longValue());
        Calendar calendarH2 = g0.h(null);
        calendarH2.setTimeInMillis(l10.longValue());
        m0.b bVar = calendarH.get(1) == calendarH2.get(1) ? calendarH.get(1) == calendarG.get(1) ? new m0.b(r4.b.p(l9.longValue(), Locale.getDefault()), r4.b.p(l10.longValue(), Locale.getDefault())) : new m0.b(r4.b.p(l9.longValue(), Locale.getDefault()), r4.b.z(l10.longValue(), Locale.getDefault())) : new m0.b(r4.b.z(l9.longValue(), Locale.getDefault()), r4.b.z(l10.longValue(), Locale.getDefault()));
        return resources.getString(R.string.mtrl_picker_range_header_selected, bVar.f8111a, bVar.f8112b);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final int b(Context context) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        return com.bumptech.glide.c.m(context, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) > resources.getDimensionPixelSize(R.dimen.mtrl_calendar_maximum_default_fullscreen_minor_axis) ? R.attr.materialCalendarTheme : R.attr.materialCalendarFullscreenTheme, u.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList c() {
        if (this.f4815b == null || this.f4816c == null) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new m0.b(this.f4815b, this.f4816c));
        return arrayList;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final View e(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, t tVar) throws Resources.NotFoundException {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date_range, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_start);
        TextInputLayout textInputLayout2 = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_range_end);
        EditText editText = textInputLayout.getEditText();
        EditText editText2 = textInputLayout2.getEditText();
        if (com.google.android.material.internal.a0.h()) {
            editText.setInputType(17);
            editText2.setInputType(17);
        }
        this.f4814a = viewInflate.getResources().getString(R.string.mtrl_picker_invalid_range);
        SimpleDateFormat simpleDateFormatE = g0.e();
        Long l9 = this.f4815b;
        if (l9 != null) {
            editText.setText(simpleDateFormatE.format(l9));
            this.d = this.f4815b;
        }
        Long l10 = this.f4816c;
        if (l10 != null) {
            editText2.setText(simpleDateFormatE.format(l10));
            this.f4817e = this.f4816c;
        }
        String strF = g0.f(viewInflate.getResources(), simpleDateFormatE);
        textInputLayout.setPlaceholderText(strF);
        textInputLayout2.setPlaceholderText(strF);
        editText.addTextChangedListener(new c0(this, strF, simpleDateFormatE, textInputLayout, calendarConstraints, textInputLayout, textInputLayout2, tVar, 0));
        editText2.addTextChangedListener(new c0(this, strF, simpleDateFormatE, textInputLayout2, calendarConstraints, textInputLayout, textInputLayout2, tVar, 1));
        editText.requestFocus();
        editText.post(new a.f(10, editText));
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final boolean f() {
        Long l9 = this.f4815b;
        return (l9 == null || this.f4816c == null || l9.longValue() > this.f4816c.longValue()) ? false : true;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList g() {
        ArrayList arrayList = new ArrayList();
        Long l9 = this.f4815b;
        if (l9 != null) {
            arrayList.add(l9);
        }
        Long l10 = this.f4816c;
        if (l10 != null) {
            arrayList.add(l10);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final Object i() {
        return new m0.b(this.f4815b, this.f4816c);
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final void k(long j10) {
        Long l9 = this.f4815b;
        if (l9 == null) {
            this.f4815b = Long.valueOf(j10);
        } else if (this.f4816c == null && l9.longValue() <= j10) {
            this.f4816c = Long.valueOf(j10);
        } else {
            this.f4816c = null;
            this.f4815b = Long.valueOf(j10);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeValue(this.f4815b);
        parcel.writeValue(this.f4816c);
    }
}
