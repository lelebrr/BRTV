package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import com.google.android.material.textfield.TextInputLayout;
import com.p2elite.brtv2.R;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class SingleDateSelector implements DateSelector<Long> {
    public static final Parcelable.Creator<SingleDateSelector> CREATOR = new w(4);

    /* renamed from: a, reason: collision with root package name */
    public Long f4818a;

    @Override // com.google.android.material.datepicker.DateSelector
    public final String a(Context context) {
        Resources resources = context.getResources();
        Long l9 = this.f4818a;
        return l9 == null ? resources.getString(R.string.mtrl_picker_date_header_unselected) : resources.getString(R.string.mtrl_picker_date_header_selected, r4.b.z(l9.longValue(), Locale.getDefault()));
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final int b(Context context) {
        return com.bumptech.glide.c.m(context, R.attr.materialCalendarTheme, u.class.getCanonicalName());
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList c() {
        return new ArrayList();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final View e(LayoutInflater layoutInflater, ViewGroup viewGroup, CalendarConstraints calendarConstraints, t tVar) throws Resources.NotFoundException {
        View viewInflate = layoutInflater.inflate(R.layout.mtrl_picker_text_input_date, viewGroup, false);
        TextInputLayout textInputLayout = (TextInputLayout) viewInflate.findViewById(R.id.mtrl_picker_text_input_date);
        EditText editText = textInputLayout.getEditText();
        if (com.google.android.material.internal.a0.h()) {
            editText.setInputType(17);
        }
        SimpleDateFormat simpleDateFormatE = g0.e();
        String strF = g0.f(viewInflate.getResources(), simpleDateFormatE);
        textInputLayout.setPlaceholderText(strF);
        Long l9 = this.f4818a;
        if (l9 != null) {
            editText.setText(simpleDateFormatE.format(l9));
        }
        editText.addTextChangedListener(new d0(this, strF, simpleDateFormatE, textInputLayout, calendarConstraints, tVar));
        editText.requestFocus();
        editText.post(new a.f(10, editText));
        return viewInflate;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final boolean f() {
        return this.f4818a != null;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final ArrayList g() {
        ArrayList arrayList = new ArrayList();
        Long l9 = this.f4818a;
        if (l9 != null) {
            arrayList.add(l9);
        }
        return arrayList;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final Object i() {
        return this.f4818a;
    }

    @Override // com.google.android.material.datepicker.DateSelector
    public final void k(long j10) {
        this.f4818a = Long.valueOf(j10);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i6) {
        parcel.writeValue(this.f4818a);
    }
}
