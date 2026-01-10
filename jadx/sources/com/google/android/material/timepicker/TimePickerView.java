package com.google.android.material.timepicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.chip.Chip;
import com.p2elite.brtv2.R;
import java.util.HashMap;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class TimePickerView extends ConstraintLayout {

    /* renamed from: r, reason: collision with root package name */
    public static final /* synthetic */ int f5404r = 0;

    /* renamed from: q, reason: collision with root package name */
    public final MaterialButtonToggleGroup f5405q;

    public TimePickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final void o() {
        if (this.f5405q.getVisibility() == 0) {
            androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
            dVar.d(this);
            WeakHashMap weakHashMap = s0.f8353a;
            char c5 = getLayoutDirection() == 0 ? (char) 2 : (char) 1;
            HashMap map = dVar.f1098c;
            if (map.containsKey(Integer.valueOf(R.id.material_clock_display))) {
                androidx.constraintlayout.widget.c cVar = (androidx.constraintlayout.widget.c) map.get(Integer.valueOf(R.id.material_clock_display));
                switch (c5) {
                    case 1:
                        y.d dVar2 = cVar.d;
                        dVar2.f11168i = -1;
                        dVar2.f11166h = -1;
                        dVar2.D = -1;
                        dVar2.J = -1;
                        break;
                    case 2:
                        y.d dVar3 = cVar.d;
                        dVar3.f11171k = -1;
                        dVar3.f11169j = -1;
                        dVar3.E = -1;
                        dVar3.L = -1;
                        break;
                    case 3:
                        y.d dVar4 = cVar.d;
                        dVar4.f11173m = -1;
                        dVar4.f11172l = -1;
                        dVar4.F = -1;
                        dVar4.K = -1;
                        break;
                    case 4:
                        y.d dVar5 = cVar.d;
                        dVar5.f11174n = -1;
                        dVar5.f11175o = -1;
                        dVar5.G = -1;
                        dVar5.M = -1;
                        break;
                    case 5:
                        cVar.d.f11176p = -1;
                        break;
                    case 6:
                        y.d dVar6 = cVar.d;
                        dVar6.f11177q = -1;
                        dVar6.f11178r = -1;
                        dVar6.I = -1;
                        dVar6.O = -1;
                        break;
                    case 7:
                        y.d dVar7 = cVar.d;
                        dVar7.f11179s = -1;
                        dVar7.f11180t = -1;
                        dVar7.H = -1;
                        dVar7.N = -1;
                        break;
                    default:
                        throw new IllegalArgumentException("unknown constraint");
                }
            }
            dVar.b(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        o();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i6) {
        super.onVisibilityChanged(view, i6);
        if (view == this && i6 == 0) {
            o();
        }
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        g gVar = new g(this);
        LayoutInflater.from(context).inflate(R.layout.material_timepicker, this);
        MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) findViewById(R.id.material_clock_period_toggle);
        this.f5405q = materialButtonToggleGroup;
        materialButtonToggleGroup.f4726c.add(new h(this));
        Chip chip = (Chip) findViewById(R.id.material_minute_tv);
        Chip chip2 = (Chip) findViewById(R.id.material_hour_tv);
        j jVar = new j(new GestureDetector(getContext(), new i(this)));
        chip.setOnTouchListener(jVar);
        chip2.setOnTouchListener(jVar);
        chip.setTag(R.id.selection_type, 12);
        chip2.setTag(R.id.selection_type, 10);
        chip.setOnClickListener(gVar);
        chip2.setOnClickListener(gVar);
        chip.setAccessibilityClassName("android.view.View");
        chip2.setAccessibilityClassName("android.view.View");
    }
}
