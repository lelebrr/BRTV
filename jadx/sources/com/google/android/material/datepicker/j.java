package com.google.android.material.datepicker;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.material.textfield.TextInputLayout;
import com.p2elite.brtv2.R;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j extends com.google.android.material.internal.z {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f4847a;

    /* renamed from: b, reason: collision with root package name */
    public final SimpleDateFormat f4848b;

    /* renamed from: c, reason: collision with root package name */
    public final CalendarConstraints f4849c;
    public final String d;

    /* renamed from: e, reason: collision with root package name */
    public final h f4850e;
    public i f;

    public j(String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f4848b = simpleDateFormat;
        this.f4847a = textInputLayout;
        this.f4849c = calendarConstraints;
        this.d = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.f4850e = new h(this, str);
    }

    public abstract void a();

    public abstract void b(Long l9);

    @Override // com.google.android.material.internal.z, android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i6, int i10, int i11) throws Resources.NotFoundException, ParseException {
        CalendarConstraints calendarConstraints = this.f4849c;
        TextInputLayout textInputLayout = this.f4847a;
        h hVar = this.f4850e;
        textInputLayout.removeCallbacks(hVar);
        textInputLayout.removeCallbacks(this.f);
        textInputLayout.setError(null);
        b(null);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        try {
            Date date = this.f4848b.parse(charSequence.toString());
            textInputLayout.setError(null);
            long time = date.getTime();
            if (calendarConstraints.f4800c.d(time) && calendarConstraints.f4798a.n(1) <= time) {
                Month month = calendarConstraints.f4799b;
                if (time <= month.n(month.f4812e)) {
                    b(Long.valueOf(date.getTime()));
                    return;
                }
            }
            i iVar = new i(this, time, 0);
            this.f = iVar;
            textInputLayout.postDelayed(iVar, 1000L);
        } catch (ParseException unused) {
            textInputLayout.postDelayed(hVar, 1000L);
        }
    }
}
