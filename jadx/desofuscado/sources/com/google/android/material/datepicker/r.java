package com.google.android.material.datepicker;

import android.R;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.button.MaterialButton;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r<S> extends b0 {
    public int U;
    public DateSelector V;
    public CalendarConstraints W;
    public Month X;
    public int Y;
    public c Z;

    /* renamed from: b0, reason: collision with root package name */
    public RecyclerView f4869b0;

    /* renamed from: c0, reason: collision with root package name */
    public RecyclerView f4870c0;

    /* renamed from: d0, reason: collision with root package name */
    public View f4871d0;

    /* renamed from: e0, reason: collision with root package name */
    public View f4872e0;

    @Override // androidx.fragment.app.s
    public final void A(Bundle bundle) {
        bundle.putInt("THEME_RES_ID_KEY", this.U);
        bundle.putParcelable("GRID_SELECTOR_KEY", this.V);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", this.W);
        bundle.putParcelable("CURRENT_MONTH_KEY", this.X);
    }

    @Override // com.google.android.material.datepicker.b0
    public final void Q(t tVar) {
        this.T.add(tVar);
    }

    public final void R(Month month) {
        a0 a0Var = (a0) this.f4870c0.getAdapter();
        int iP = a0Var.f4819a.f4798a.p(month);
        int iP2 = iP - a0Var.f4819a.f4798a.p(this.X);
        boolean z7 = Math.abs(iP2) > 3;
        boolean z10 = iP2 > 0;
        this.X = month;
        if (z7 && z10) {
            this.f4870c0.scrollToPosition(iP - 3);
            this.f4870c0.post(new l(this, iP));
        } else if (!z7) {
            this.f4870c0.post(new l(this, iP));
        } else {
            this.f4870c0.scrollToPosition(iP + 3);
            this.f4870c0.post(new l(this, iP));
        }
    }

    public final void S(int i6) {
        this.Y = i6;
        if (i6 == 2) {
            this.f4869b0.getLayoutManager().scrollToPosition(this.X.f4811c - ((j0) this.f4869b0.getAdapter()).f4851a.W.f4798a.f4811c);
            this.f4871d0.setVisibility(0);
            this.f4872e0.setVisibility(8);
            return;
        }
        if (i6 == 1) {
            this.f4871d0.setVisibility(8);
            this.f4872e0.setVisibility(0);
            R(this.X);
        }
    }

    @Override // androidx.fragment.app.s
    public final void s(Bundle bundle) {
        super.s(bundle);
        if (bundle == null) {
            bundle = this.f1524g;
        }
        this.U = bundle.getInt("THEME_RES_ID_KEY");
        this.V = (DateSelector) bundle.getParcelable("GRID_SELECTOR_KEY");
        this.W = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.X = (Month) bundle.getParcelable("CURRENT_MONTH_KEY");
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) throws IllegalStateException, Resources.NotFoundException {
        int i6;
        int i10;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(j(), this.U);
        this.Z = new c(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month month = this.W.f4798a;
        if (u.V(contextThemeWrapper, R.attr.windowFullscreen)) {
            i6 = com.p2elite.brtv2.R.layout.mtrl_calendar_vertical;
            i10 = 1;
        } else {
            i6 = com.p2elite.brtv2.R.layout.mtrl_calendar_horizontal;
            i10 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i6, viewGroup, false);
        Resources resources = K().getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(com.p2elite.brtv2.R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelOffset(com.p2elite.brtv2.R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelSize(com.p2elite.brtv2.R.dimen.mtrl_calendar_navigation_height);
        int dimensionPixelSize = resources.getDimensionPixelSize(com.p2elite.brtv2.R.dimen.mtrl_calendar_days_of_week_height);
        int i11 = x.f;
        int i12 = dimensionPixelOffset + dimensionPixelSize;
        viewInflate.setMinimumHeight(i12 + (resources.getDimensionPixelOffset(com.p2elite.brtv2.R.dimen.mtrl_calendar_month_vertical_padding) * (i11 - 1)) + (resources.getDimensionPixelSize(com.p2elite.brtv2.R.dimen.mtrl_calendar_day_height) * i11) + resources.getDimensionPixelOffset(com.p2elite.brtv2.R.dimen.mtrl_calendar_bottom_padding));
        GridView gridView = (GridView) viewInflate.findViewById(com.p2elite.brtv2.R.id.mtrl_calendar_days_of_week);
        s0.q(gridView, new androidx.core.widget.i(1));
        gridView.setAdapter((ListAdapter) new k());
        gridView.setNumColumns(month.d);
        gridView.setEnabled(false);
        this.f4870c0 = (RecyclerView) viewInflate.findViewById(com.p2elite.brtv2.R.id.mtrl_calendar_months);
        this.f4870c0.setLayoutManager(new m(this, i10, i10));
        this.f4870c0.setTag("MONTHS_VIEW_GROUP_TAG");
        a0 a0Var = new a0(contextThemeWrapper, this.V, this.W, new n(this));
        this.f4870c0.setAdapter(a0Var);
        int integer = contextThemeWrapper.getResources().getInteger(com.p2elite.brtv2.R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(com.p2elite.brtv2.R.id.mtrl_calendar_year_selector_frame);
        this.f4869b0 = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.f4869b0.setLayoutManager(new GridLayoutManager(integer));
            this.f4869b0.setAdapter(new j0(this));
            this.f4869b0.addItemDecoration(new o(this));
        }
        if (viewInflate.findViewById(com.p2elite.brtv2.R.id.month_navigation_fragment_toggle) != null) {
            MaterialButton materialButton = (MaterialButton) viewInflate.findViewById(com.p2elite.brtv2.R.id.month_navigation_fragment_toggle);
            materialButton.setTag("SELECTOR_TOGGLE_TAG");
            s0.q(materialButton, new b2.h(2, this));
            MaterialButton materialButton2 = (MaterialButton) viewInflate.findViewById(com.p2elite.brtv2.R.id.month_navigation_previous);
            materialButton2.setTag("NAVIGATION_PREV_TAG");
            MaterialButton materialButton3 = (MaterialButton) viewInflate.findViewById(com.p2elite.brtv2.R.id.month_navigation_next);
            materialButton3.setTag("NAVIGATION_NEXT_TAG");
            this.f4871d0 = viewInflate.findViewById(com.p2elite.brtv2.R.id.mtrl_calendar_year_selector_frame);
            this.f4872e0 = viewInflate.findViewById(com.p2elite.brtv2.R.id.mtrl_calendar_day_selector_frame);
            S(1);
            materialButton.setText(this.X.o());
            this.f4870c0.addOnScrollListener(new p(this, a0Var, materialButton));
            materialButton.setOnClickListener(new androidx.appcompat.app.a(3, this));
            materialButton3.setOnClickListener(new q(this, a0Var, 0));
            materialButton2.setOnClickListener(new q(this, a0Var, 1));
        }
        if (!u.V(contextThemeWrapper, R.attr.windowFullscreen)) {
            new androidx.recyclerview.widget.f0().attachToRecyclerView(this.f4870c0);
        }
        this.f4870c0.scrollToPosition(a0Var.f4819a.f4798a.p(this.X));
        return viewInflate;
    }
}
