package com.google.android.material.datepicker;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v<S> extends b0 {
    public int U;
    public DateSelector V;
    public CalendarConstraints W;

    @Override // androidx.fragment.app.s
    public final void A(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.U);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.V);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.W);
    }

    @Override // androidx.fragment.app.s
    public final void s(Bundle bundle) {
        super.s(bundle);
        if (bundle == null) {
            bundle = this.f1524g;
        }
        this.U = bundle.getInt("THEME_RES_ID_KEY");
        this.V = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.W = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return this.V.e(layoutInflater.cloneInContext(new ContextThemeWrapper(j(), this.U)), viewGroup, this.W, new t(1, this));
    }
}
