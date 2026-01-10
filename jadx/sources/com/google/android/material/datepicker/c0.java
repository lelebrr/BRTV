package com.google.android.material.datepicker;

import com.google.android.material.textfield.TextInputLayout;
import java.text.SimpleDateFormat;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c0 extends j {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f4831g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f4832h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ TextInputLayout f4833i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ t f4834j;

    /* renamed from: k, reason: collision with root package name */
    public final /* synthetic */ RangeDateSelector f4835k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ c0(RangeDateSelector rangeDateSelector, String str, SimpleDateFormat simpleDateFormat, TextInputLayout textInputLayout, CalendarConstraints calendarConstraints, TextInputLayout textInputLayout2, TextInputLayout textInputLayout3, t tVar, int i6) {
        super(str, simpleDateFormat, textInputLayout, calendarConstraints);
        this.f4831g = i6;
        this.f4835k = rangeDateSelector;
        this.f4832h = textInputLayout2;
        this.f4833i = textInputLayout3;
        this.f4834j = tVar;
    }

    @Override // com.google.android.material.datepicker.j
    public final void a() {
        switch (this.f4831g) {
            case 0:
                RangeDateSelector rangeDateSelector = this.f4835k;
                rangeDateSelector.d = null;
                RangeDateSelector.h(rangeDateSelector, this.f4832h, this.f4833i, this.f4834j);
                break;
            default:
                RangeDateSelector rangeDateSelector2 = this.f4835k;
                rangeDateSelector2.f4817e = null;
                RangeDateSelector.h(rangeDateSelector2, this.f4832h, this.f4833i, this.f4834j);
                break;
        }
    }

    @Override // com.google.android.material.datepicker.j
    public final void b(Long l9) {
        switch (this.f4831g) {
            case 0:
                RangeDateSelector rangeDateSelector = this.f4835k;
                rangeDateSelector.d = l9;
                RangeDateSelector.h(rangeDateSelector, this.f4832h, this.f4833i, this.f4834j);
                break;
            default:
                RangeDateSelector rangeDateSelector2 = this.f4835k;
                rangeDateSelector2.f4817e = l9;
                RangeDateSelector.h(rangeDateSelector2, this.f4832h, this.f4833i, this.f4834j);
                break;
        }
    }
}
