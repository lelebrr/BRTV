package com.google.android.material.datepicker;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Adapter;
import android.widget.GridView;
import android.widget.ListAdapter;
import java.util.Calendar;
import java.util.Iterator;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
final class MaterialCalendarGridView extends GridView {

    /* renamed from: a, reason: collision with root package name */
    public final Calendar f4807a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4808b;

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public final x a() {
        return (x) super.getAdapter();
    }

    public final View b(int i6) {
        return getChildAt(i6 - getFirstVisiblePosition());
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final Adapter getAdapter() {
        return (x) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((x) super.getAdapter()).notifyDataSetChanged();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int iM;
        int width;
        int iM2;
        int width2;
        int i6;
        int width3;
        MaterialCalendarGridView materialCalendarGridView = this;
        super.onDraw(canvas);
        x xVar = (x) super.getAdapter();
        DateSelector dateSelector = xVar.f4894b;
        c cVar = xVar.d;
        Month month = xVar.f4893a;
        int iMax = Math.max(month.m(), getFirstVisiblePosition());
        int iMin = Math.min(xVar.b(), getLastVisiblePosition());
        Long item = xVar.getItem(iMax);
        Long item2 = xVar.getItem(iMin);
        Iterator it = dateSelector.c().iterator();
        while (it.hasNext()) {
            m0.b bVar = (m0.b) it.next();
            Object obj = bVar.f8111a;
            if (obj != null) {
                Object obj2 = bVar.f8112b;
                if (obj2 != null) {
                    Long l9 = (Long) obj;
                    long jLongValue = l9.longValue();
                    Long l10 = (Long) obj2;
                    long jLongValue2 = l10.longValue();
                    if (item == null || item2 == null || l9.longValue() > item2.longValue() || l10.longValue() < item.longValue()) {
                        materialCalendarGridView = this;
                        month = month;
                        iMax = iMax;
                        it = it;
                        xVar = xVar;
                    } else {
                        boolean zI = com.google.android.material.internal.a0.i(this);
                        long jLongValue3 = item.longValue();
                        int i10 = month.d;
                        Iterator it2 = it;
                        Calendar calendar = materialCalendarGridView.f4807a;
                        if (jLongValue < jLongValue3) {
                            width = iMax % i10 == 0 ? 0 : !zI ? materialCalendarGridView.b(iMax - 1).getRight() : materialCalendarGridView.b(iMax - 1).getLeft();
                            iM = iMax;
                        } else {
                            calendar.setTimeInMillis(jLongValue);
                            iM = month.m() + (calendar.get(5) - 1);
                            View viewB = materialCalendarGridView.b(iM);
                            width = (viewB.getWidth() / 2) + viewB.getLeft();
                        }
                        if (jLongValue2 > item2.longValue()) {
                            width2 = (iMin + 1) % i10 == 0 ? getWidth() : !zI ? materialCalendarGridView.b(iMin).getRight() : materialCalendarGridView.b(iMin).getLeft();
                            iM2 = iMin;
                        } else {
                            calendar.setTimeInMillis(jLongValue2);
                            iM2 = month.m() + (calendar.get(5) - 1);
                            View viewB2 = materialCalendarGridView.b(iM2);
                            width2 = (viewB2.getWidth() / 2) + viewB2.getLeft();
                        }
                        int itemId = (int) xVar.getItemId(iM);
                        Month month2 = month;
                        int i11 = iMax;
                        int itemId2 = (int) xVar.getItemId(iM2);
                        while (itemId <= itemId2) {
                            int numColumns = getNumColumns() * itemId;
                            x xVar2 = xVar;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View viewB3 = materialCalendarGridView.b(numColumns);
                            int top = viewB3.getTop() + ((Rect) cVar.f4825a.f840b).top;
                            int i12 = width2;
                            int bottom = viewB3.getBottom() - ((Rect) cVar.f4825a.f840b).bottom;
                            if (zI) {
                                int i13 = iM2 > numColumns2 ? 0 : i12;
                                int width4 = numColumns > iM ? getWidth() : width;
                                i6 = i13;
                                width3 = width4;
                            } else {
                                i6 = numColumns > iM ? 0 : width;
                                width3 = iM2 > numColumns2 ? getWidth() : i12;
                            }
                            canvas.drawRect(i6, top, width3, bottom, cVar.f4830h);
                            itemId++;
                            materialCalendarGridView = this;
                            itemId2 = itemId2;
                            xVar = xVar2;
                            width2 = i12;
                        }
                        materialCalendarGridView = this;
                        month = month2;
                        iMax = i11;
                        it = it2;
                    }
                }
            } else {
                materialCalendarGridView = this;
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onFocusChanged(boolean z7, int i6, Rect rect) {
        if (!z7) {
            super.onFocusChanged(false, i6, rect);
            return;
        }
        if (i6 == 33) {
            setSelection(((x) super.getAdapter()).b());
        } else if (i6 == 130) {
            setSelection(((x) super.getAdapter()).f4893a.m());
        } else {
            super.onFocusChanged(true, i6, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i6, KeyEvent keyEvent) {
        if (!super.onKeyDown(i6, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= ((x) super.getAdapter()).f4893a.m()) {
            return true;
        }
        if (19 != i6) {
            return false;
        }
        setSelection(((x) super.getAdapter()).f4893a.m());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public final void onMeasure(int i6, int i10) {
        if (!this.f4808b) {
            super.onMeasure(i6, i10);
            return;
        }
        super.onMeasure(i6, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final void setSelection(int i6) {
        if (i6 < ((x) super.getAdapter()).f4893a.m()) {
            super.setSelection(((x) super.getAdapter()).f4893a.m());
        } else {
            super.setSelection(i6);
        }
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f4807a = g0.h(null);
        if (u.V(getContext(), R.attr.windowFullscreen)) {
            setNextFocusLeftId(com.p2elite.brtv2.R.id.cancel_button);
            setNextFocusRightId(com.p2elite.brtv2.R.id.confirm_button);
        }
        this.f4808b = u.V(getContext(), com.p2elite.brtv2.R.attr.nestedScrollable);
        s0.q(this, new androidx.core.widget.i(2));
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public final ListAdapter getAdapter() {
        return (x) super.getAdapter();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof x)) {
            throw new IllegalArgumentException(String.format("%1$s must have its Adapter set to a %2$s", MaterialCalendarGridView.class.getCanonicalName(), x.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }
}
