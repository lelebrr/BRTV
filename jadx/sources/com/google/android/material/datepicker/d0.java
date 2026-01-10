package com.google.android.material.datepicker;

import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 extends j {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ t f4836g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ SingleDateSelector f4837h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d0(SingleDateSelector singleDateSelector, String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, t tVar) {
        super(str, simpleDateFormat, textInputLayout, calendarConstraints);
        this.f4837h = singleDateSelector;
        this.f4836g = tVar;
    }

    @Override // com.google.android.material.datepicker.j
    public final void a() {
        this.f4836g.a();
    }

    @Override // com.google.android.material.datepicker.j
    public final void b(Long l9) {
        SingleDateSelector singleDateSelector = this.f4837h;
        if (l9 == null) {
            singleDateSelector.f4818a = null;
        } else {
            singleDateSelector.f4818a = l9;
        }
        this.f4836g.b(singleDateSelector.f4818a);
    }
}
