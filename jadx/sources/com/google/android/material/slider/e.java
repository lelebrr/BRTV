package com.google.android.material.slider;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.SeekBar;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class e extends v0.b {

    /* renamed from: q, reason: collision with root package name */
    public final BaseSlider f5215q;

    /* renamed from: r, reason: collision with root package name */
    public final Rect f5216r;

    public e(BaseSlider baseSlider) {
        super(baseSlider);
        this.f5216r = new Rect();
        this.f5215q = baseSlider;
    }

    @Override // v0.b
    public final int n(float f, float f3) {
        int i6 = 0;
        while (true) {
            BaseSlider baseSlider = this.f5215q;
            if (i6 >= baseSlider.getValues().size()) {
                return -1;
            }
            Rect rect = this.f5216r;
            baseSlider.v(i6, rect);
            if (rect.contains((int) f, (int) f3)) {
                return i6;
            }
            i6++;
        }
    }

    @Override // v0.b
    public final void o(ArrayList arrayList) {
        for (int i6 = 0; i6 < this.f5215q.getValues().size(); i6++) {
            arrayList.add(Integer.valueOf(i6));
        }
    }

    @Override // v0.b
    public final boolean s(int i6, int i10, Bundle bundle) {
        BaseSlider baseSlider = this.f5215q;
        if (!baseSlider.isEnabled()) {
            return false;
        }
        if (i10 != 4096 && i10 != 8192) {
            if (i10 == 16908349 && bundle != null && bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
                float f = bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE");
                int i11 = BaseSlider.f5173d0;
                if (baseSlider.t(i6, f)) {
                    baseSlider.w();
                    baseSlider.postInvalidate();
                    p(i6);
                    return true;
                }
            }
            return false;
        }
        int i12 = BaseSlider.f5173d0;
        float fRound = baseSlider.J;
        if (fRound == 0.0f) {
            fRound = 1.0f;
        }
        if ((baseSlider.F - baseSlider.E) / fRound > 20) {
            fRound *= Math.round(r1 / r5);
        }
        if (i10 == 8192) {
            fRound = -fRound;
        }
        if (baseSlider.k()) {
            fRound = -fRound;
        }
        float fFloatValue = baseSlider.getValues().get(i6).floatValue() + fRound;
        float valueFrom = baseSlider.getValueFrom();
        float valueTo = baseSlider.getValueTo();
        if (fFloatValue < valueFrom) {
            fFloatValue = valueFrom;
        } else if (fFloatValue > valueTo) {
            fFloatValue = valueTo;
        }
        if (!baseSlider.t(i6, fFloatValue)) {
            return false;
        }
        baseSlider.w();
        baseSlider.postInvalidate();
        p(i6);
        return true;
    }

    @Override // v0.b
    public final void u(int i6, o0.h hVar) {
        hVar.b(o0.c.f8534r);
        BaseSlider baseSlider = this.f5215q;
        List<Float> values = baseSlider.getValues();
        float fFloatValue = values.get(i6).floatValue();
        float valueFrom = baseSlider.getValueFrom();
        float valueTo = baseSlider.getValueTo();
        if (baseSlider.isEnabled()) {
            if (fFloatValue > valueFrom) {
                hVar.a(8192);
            }
            if (fFloatValue < valueTo) {
                hVar.a(4096);
            }
        }
        AccessibilityNodeInfo.RangeInfo rangeInfoObtain = AccessibilityNodeInfo.RangeInfo.obtain(1, valueFrom, valueTo, fFloatValue);
        AccessibilityNodeInfo accessibilityNodeInfo = hVar.f8541a;
        accessibilityNodeInfo.setRangeInfo(rangeInfoObtain);
        hVar.i(SeekBar.class.getName());
        StringBuilder sb = new StringBuilder();
        if (baseSlider.getContentDescription() != null) {
            sb.append(baseSlider.getContentDescription());
            sb.append(",");
        }
        if (values.size() > 1) {
            sb.append(i6 == baseSlider.getValues().size() - 1 ? baseSlider.getContext().getString(R.string.material_slider_range_end) : i6 == 0 ? baseSlider.getContext().getString(R.string.material_slider_range_start) : "");
            sb.append(baseSlider.f(fFloatValue));
        }
        hVar.l(sb.toString());
        Rect rect = this.f5216r;
        baseSlider.v(i6, rect);
        accessibilityNodeInfo.setBoundsInParent(rect);
    }
}
