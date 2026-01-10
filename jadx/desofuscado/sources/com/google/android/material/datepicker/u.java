package com.google.android.material.datepicker;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.leanback.widget.j1;
import com.google.android.material.datepicker.CalendarConstraints;
import com.google.android.material.internal.CheckableImageButton;
import com.p2elite.brtv2.R;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import n0.c1;
import n0.s0;
import n0.s1;
import n0.t1;
import n0.u1;
import n0.v1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u<S> extends androidx.fragment.app.m {
    public CharSequence A0;
    public TextView B0;
    public CheckableImageButton C0;
    public u6.h D0;
    public Button E0;
    public boolean F0;

    /* renamed from: k0, reason: collision with root package name */
    public final LinkedHashSet f4877k0 = new LinkedHashSet();

    /* renamed from: l0, reason: collision with root package name */
    public final LinkedHashSet f4878l0 = new LinkedHashSet();

    /* renamed from: m0, reason: collision with root package name */
    public final LinkedHashSet f4879m0 = new LinkedHashSet();

    /* renamed from: n0, reason: collision with root package name */
    public final LinkedHashSet f4880n0 = new LinkedHashSet();

    /* renamed from: o0, reason: collision with root package name */
    public int f4881o0;

    /* renamed from: p0, reason: collision with root package name */
    public DateSelector f4882p0;

    /* renamed from: q0, reason: collision with root package name */
    public b0 f4883q0;

    /* renamed from: r0, reason: collision with root package name */
    public CalendarConstraints f4884r0;

    /* renamed from: s0, reason: collision with root package name */
    public r f4885s0;

    /* renamed from: t0, reason: collision with root package name */
    public int f4886t0;

    /* renamed from: u0, reason: collision with root package name */
    public CharSequence f4887u0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f4888v0;

    /* renamed from: w0, reason: collision with root package name */
    public int f4889w0;
    public int x0;

    /* renamed from: y0, reason: collision with root package name */
    public CharSequence f4890y0;

    /* renamed from: z0, reason: collision with root package name */
    public int f4891z0;

    public static int U(Context context) throws Resources.NotFoundException {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Month month = new Month(g0.g());
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width);
        int dimensionPixelOffset2 = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding);
        int i6 = month.d;
        return ((i6 - 1) * dimensionPixelOffset2) + (dimensionPixelSize * i6) + (dimensionPixelOffset * 2);
    }

    public static boolean V(Context context, int i6) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(com.bumptech.glide.c.m(context, R.attr.materialCalendarStyle, r.class.getCanonicalName()), new int[]{i6});
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z7;
    }

    @Override // androidx.fragment.app.m, androidx.fragment.app.s
    public final void A(Bundle bundle) {
        super.A(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f4881o0);
        bundle.putParcelable("DATE_SELECTOR_KEY", this.f4882p0);
        CalendarConstraints calendarConstraints = this.f4884r0;
        b bVar = new b();
        int i6 = b.f4822c;
        int i10 = b.f4822c;
        new DateValidatorPointForward(Long.MIN_VALUE);
        long j10 = calendarConstraints.f4798a.f;
        long j11 = calendarConstraints.f4799b.f;
        bVar.f4823a = Long.valueOf(calendarConstraints.d.f);
        CalendarConstraints.DateValidator dateValidator = calendarConstraints.f4800c;
        bVar.f4824b = dateValidator;
        Month month = this.f4885s0.X;
        if (month != null) {
            bVar.f4823a = Long.valueOf(month.f);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", dateValidator);
        Month monthL = Month.l(j10);
        Month monthL2 = Month.l(j11);
        CalendarConstraints.DateValidator dateValidator2 = (CalendarConstraints.DateValidator) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l9 = bVar.f4823a;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new CalendarConstraints(monthL, monthL2, dateValidator2, l9 == null ? null : Month.l(l9.longValue())));
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f4886t0);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f4887u0);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.x0);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f4890y0);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f4891z0);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.A0);
    }

    @Override // androidx.fragment.app.m, androidx.fragment.app.s
    public final void B() throws Resources.NotFoundException {
        super.B();
        Dialog dialog = this.f1492f0;
        if (dialog == null) {
            throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
        }
        Window window = dialog.getWindow();
        if (this.f4888v0) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.D0);
            if (!this.F0) {
                View viewFindViewById = L().findViewById(R.id.fullscreen_header);
                Integer numValueOf = viewFindViewById.getBackground() instanceof ColorDrawable ? Integer.valueOf(((ColorDrawable) viewFindViewById.getBackground()).getColor()) : null;
                int i6 = Build.VERSION.SDK_INT;
                boolean z7 = false;
                boolean z10 = numValueOf == null || numValueOf.intValue() == 0;
                int iQ = o9.e.q(window.getContext(), android.R.attr.colorBackground, -16777216);
                if (z10) {
                    numValueOf = Integer.valueOf(iQ);
                }
                if (i6 >= 30) {
                    c1.a(window, false);
                } else {
                    View decorView = window.getDecorView();
                    decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1792);
                }
                int iH = i6 < 23 ? f0.a.h(o9.e.q(window.getContext(), android.R.attr.statusBarColor, -16777216), 128) : 0;
                int iH2 = i6 < 27 ? f0.a.h(o9.e.q(window.getContext(), android.R.attr.navigationBarColor, -16777216), 128) : 0;
                window.setStatusBarColor(iH);
                window.setNavigationBarColor(iH2);
                boolean z11 = o9.e.t(iH) || (iH == 0 && o9.e.t(numValueOf.intValue()));
                boolean zT = o9.e.t(iQ);
                if (o9.e.t(iH2) || (iH2 == 0 && zT)) {
                    z7 = true;
                }
                window.getDecorView();
                int i10 = Build.VERSION.SDK_INT;
                o9.e v1Var = i10 >= 30 ? new v1(window) : i10 >= 26 ? new u1(window) : i10 >= 23 ? new t1(window) : new s1(window);
                v1Var.G(z11);
                v1Var.F(z7);
                int paddingTop = viewFindViewById.getPaddingTop();
                int i11 = viewFindViewById.getLayoutParams().height;
                j1 j1Var = new j1();
                j1Var.f1845a = i11;
                j1Var.f1847c = viewFindViewById;
                j1Var.f1846b = paddingTop;
                WeakHashMap weakHashMap = s0.f8353a;
                n0.g0.u(viewFindViewById, j1Var);
                this.F0 = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = m().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.D0, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            View decorView2 = window.getDecorView();
            Dialog dialog2 = this.f1492f0;
            if (dialog2 == null) {
                throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
            }
            decorView2.setOnTouchListener(new h6.a(dialog2, rect));
        }
        W();
    }

    @Override // androidx.fragment.app.m, androidx.fragment.app.s
    public final void C() {
        this.f4883q0.T.clear();
        super.C();
    }

    @Override // androidx.fragment.app.m
    public final Dialog R() {
        Context contextK = K();
        Context contextK2 = K();
        int iB = this.f4881o0;
        if (iB == 0) {
            iB = T().b(contextK2);
        }
        Dialog dialog = new Dialog(contextK, iB);
        Context context = dialog.getContext();
        this.f4888v0 = V(context, android.R.attr.windowFullscreen);
        int iM = com.bumptech.glide.c.m(context, R.attr.colorSurface, u.class.getCanonicalName());
        u6.h hVar = new u6.h(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        this.D0 = hVar;
        hVar.k(context);
        this.D0.n(ColorStateList.valueOf(iM));
        u6.h hVar2 = this.D0;
        View decorView = dialog.getWindow().getDecorView();
        WeakHashMap weakHashMap = s0.f8353a;
        hVar2.m(n0.g0.i(decorView));
        return dialog;
    }

    public final DateSelector T() {
        if (this.f4882p0 == null) {
            this.f4882p0 = (DateSelector) this.f1524g.getParcelable("DATE_SELECTOR_KEY");
        }
        return this.f4882p0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.fragment.app.s, com.google.android.material.datepicker.v] */
    public final void W() {
        Context contextK = K();
        int iB = this.f4881o0;
        if (iB == 0) {
            iB = T().b(contextK);
        }
        DateSelector dateSelectorT = T();
        CalendarConstraints calendarConstraints = this.f4884r0;
        r rVar = new r();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", iB);
        bundle.putParcelable("GRID_SELECTOR_KEY", dateSelectorT);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints);
        bundle.putParcelable("CURRENT_MONTH_KEY", calendarConstraints.d);
        rVar.O(bundle);
        this.f4885s0 = rVar;
        if (this.C0.d) {
            DateSelector dateSelectorT2 = T();
            CalendarConstraints calendarConstraints2 = this.f4884r0;
            ?? vVar = new v();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", iB);
            bundle2.putParcelable("DATE_SELECTOR_KEY", dateSelectorT2);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", calendarConstraints2);
            vVar.O(bundle2);
            rVar = vVar;
        }
        this.f4883q0 = rVar;
        X();
        androidx.fragment.app.j0 j0VarI = i();
        j0VarI.getClass();
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(j0VarI);
        aVar.i(R.id.mtrl_calendar_frame, this.f4883q0);
        if (aVar.f1414g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        aVar.f1415h = false;
        aVar.f1424q.v(aVar, false);
        this.f4883q0.Q(new t(0, this));
    }

    public final void X() {
        String strA = T().a(j());
        this.B0.setContentDescription(String.format(n(R.string.mtrl_picker_announce_current_selection), strA));
        this.B0.setText(strA);
    }

    public final void Y(CheckableImageButton checkableImageButton) {
        this.C0.setContentDescription(this.C0.d ? checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
    }

    @Override // androidx.fragment.app.m, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.f4879m0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.m, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f4880n0.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) this.F;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.m, androidx.fragment.app.s
    public final void s(Bundle bundle) {
        super.s(bundle);
        if (bundle == null) {
            bundle = this.f1524g;
        }
        this.f4881o0 = bundle.getInt("OVERRIDE_THEME_RES_ID");
        this.f4882p0 = (DateSelector) bundle.getParcelable("DATE_SELECTOR_KEY");
        this.f4884r0 = (CalendarConstraints) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        this.f4886t0 = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f4887u0 = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f4889w0 = bundle.getInt("INPUT_MODE_KEY");
        this.x0 = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f4890y0 = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f4891z0 = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.A0 = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
    }

    @Override // androidx.fragment.app.s
    public final View t(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f4888v0 ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f4888v0) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(U(context), -2));
        } else {
            viewInflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(U(context), -1));
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text);
        this.B0 = textView;
        WeakHashMap weakHashMap = s0.f8353a;
        textView.setAccessibilityLiveRegion(1);
        this.C0 = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        CharSequence charSequence = this.f4887u0;
        if (charSequence != null) {
            textView2.setText(charSequence);
        } else {
            textView2.setText(this.f4886t0);
        }
        this.C0.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.C0;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, com.bumptech.glide.c.h(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], com.bumptech.glide.c.h(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.C0.setChecked(this.f4889w0 != 0);
        s0.q(this.C0, null);
        Y(this.C0);
        this.C0.setOnClickListener(new s(this, 2));
        this.E0 = (Button) viewInflate.findViewById(R.id.confirm_button);
        if (T().f()) {
            this.E0.setEnabled(true);
        } else {
            this.E0.setEnabled(false);
        }
        this.E0.setTag("CONFIRM_BUTTON_TAG");
        CharSequence charSequence2 = this.f4890y0;
        if (charSequence2 != null) {
            this.E0.setText(charSequence2);
        } else {
            int i6 = this.x0;
            if (i6 != 0) {
                this.E0.setText(i6);
            }
        }
        this.E0.setOnClickListener(new s(this, 0));
        Button button = (Button) viewInflate.findViewById(R.id.cancel_button);
        button.setTag("CANCEL_BUTTON_TAG");
        CharSequence charSequence3 = this.A0;
        if (charSequence3 != null) {
            button.setText(charSequence3);
        } else {
            int i10 = this.f4891z0;
            if (i10 != 0) {
                button.setText(i10);
            }
        }
        button.setOnClickListener(new s(this, 1));
        return viewInflate;
    }
}
