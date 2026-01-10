package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;
import u6.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
class RadialViewGroup extends ConstraintLayout {

    /* renamed from: q, reason: collision with root package name */
    public final e f5398q;

    /* renamed from: r, reason: collision with root package name */
    public int f5399r;

    /* renamed from: s, reason: collision with root package name */
    public final u6.h f5400s;

    public RadialViewGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i6, layoutParams);
        if (view.getId() == -1) {
            WeakHashMap weakHashMap = s0.f8353a;
            view.setId(View.generateViewId());
        }
        Handler handler = getHandler();
        if (handler != null) {
            e eVar = this.f5398q;
            handler.removeCallbacks(eVar);
            handler.post(eVar);
        }
    }

    public final void o() {
        int childCount = getChildCount();
        int i6 = 1;
        for (int i10 = 0; i10 < childCount; i10++) {
            if ("skip".equals(getChildAt(i10).getTag())) {
                i6++;
            }
        }
        androidx.constraintlayout.widget.d dVar = new androidx.constraintlayout.widget.d();
        dVar.d(this);
        float f = 0.0f;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getId() != R.id.circle_center && !"skip".equals(childAt.getTag())) {
                int id = childAt.getId();
                int i12 = this.f5399r;
                y.d dVar2 = dVar.g(id).d;
                dVar2.f11184x = R.id.circle_center;
                dVar2.f11185y = i12;
                dVar2.f11186z = f;
                f = (360.0f / (childCount - i6)) + f;
            }
        }
        dVar.b(this);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        o();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        Handler handler = getHandler();
        if (handler != null) {
            e eVar = this.f5398q;
            handler.removeCallbacks(eVar);
            handler.post(eVar);
        }
    }

    @Override // android.view.View
    public final void setBackgroundColor(int i6) {
        this.f5400s.n(ColorStateList.valueOf(i6));
    }

    public RadialViewGroup(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        LayoutInflater.from(context).inflate(R.layout.material_radial_view_group, this);
        u6.h hVar = new u6.h();
        this.f5400s = hVar;
        u6.j jVar = new u6.j(0.5f);
        l lVarF = hVar.f10367a.f10350a.f();
        lVarF.f10392e = jVar;
        lVarF.f = jVar;
        lVarF.f10393g = jVar;
        lVarF.f10394h = jVar;
        hVar.setShapeAppearanceModel(lVarF.a());
        this.f5400s.n(ColorStateList.valueOf(-1));
        u6.h hVar2 = this.f5400s;
        WeakHashMap weakHashMap = s0.f8353a;
        setBackground(hVar2);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.O, i6, 0);
        this.f5399r = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f5398q = new e(this);
        typedArrayObtainStyledAttributes.recycle();
    }
}
