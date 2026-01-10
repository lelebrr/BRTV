package androidx.leanback.widget.picker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.leanback.widget.VerticalGridView;
import com.p2elite.brtv2.R;
import ea.q;
import i1.a;
import i1.b;
import i1.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Picker extends FrameLayout {

    /* renamed from: a, reason: collision with root package name */
    public final ViewGroup f1889a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1890b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f1891c;
    public final float d;

    /* renamed from: e, reason: collision with root package name */
    public final float f1892e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1893g;

    /* renamed from: h, reason: collision with root package name */
    public final DecelerateInterpolator f1894h;

    /* renamed from: i, reason: collision with root package name */
    public float f1895i;

    /* renamed from: j, reason: collision with root package name */
    public float f1896j;

    /* renamed from: k, reason: collision with root package name */
    public int f1897k;

    /* renamed from: l, reason: collision with root package name */
    public final ArrayList f1898l;

    /* renamed from: m, reason: collision with root package name */
    public int f1899m;

    /* renamed from: n, reason: collision with root package name */
    public int f1900n;

    /* renamed from: o, reason: collision with root package name */
    public final a f1901o;

    public Picker(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.pickerStyle);
    }

    public void a(int i6, int i10) {
        d dVar = (d) this.f1891c.get(i6);
        if (dVar.f7295a != i10) {
            dVar.f7295a = i10;
        }
    }

    public final void b(int i6, d dVar) {
        this.f1891c.set(i6, dVar);
        VerticalGridView verticalGridView = (VerticalGridView) this.f1890b.get(i6);
        b bVar = (b) verticalGridView.getAdapter();
        if (bVar != null) {
            bVar.notifyDataSetChanged();
        }
        verticalGridView.setSelectedPosition(dVar.f7295a - dVar.f7296b);
    }

    public final void c(int i6, int i10) {
        d dVar = (d) this.f1891c.get(i6);
        if (dVar.f7295a != i10) {
            dVar.f7295a = i10;
            VerticalGridView verticalGridView = (VerticalGridView) this.f1890b.get(i6);
            if (verticalGridView != null) {
                verticalGridView.setSelectedPosition(i10 - ((d) this.f1891c.get(i6)).f7296b);
            }
        }
    }

    public final void d(View view, boolean z7, float f, DecelerateInterpolator decelerateInterpolator) {
        view.animate().cancel();
        if (z7) {
            view.animate().alpha(f).setDuration(this.f1893g).setInterpolator(decelerateInterpolator).start();
        } else {
            view.setAlpha(f);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!isActivated()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode != 23 && keyCode != 66) {
            return super.dispatchKeyEvent(keyEvent);
        }
        if (keyEvent.getAction() == 1) {
            performClick();
        }
        return true;
    }

    public final void e(View view, boolean z7, int i6, boolean z10) {
        boolean z11 = i6 == this.f1897k || !hasFocus();
        DecelerateInterpolator decelerateInterpolator = this.f1894h;
        if (z7) {
            if (z11) {
                d(view, z10, this.f1892e, decelerateInterpolator);
                return;
            } else {
                d(view, z10, this.d, decelerateInterpolator);
                return;
            }
        }
        if (z11) {
            d(view, z10, this.f, decelerateInterpolator);
        } else {
            d(view, z10, 0.0f, decelerateInterpolator);
        }
    }

    public final void f(int i6) {
        VerticalGridView verticalGridView = (VerticalGridView) this.f1890b.get(i6);
        int selectedPosition = verticalGridView.getSelectedPosition();
        int i10 = 0;
        while (i10 < verticalGridView.getAdapter().getItemCount()) {
            View viewFindViewByPosition = verticalGridView.getLayoutManager().findViewByPosition(i10);
            if (viewFindViewByPosition != null) {
                e(viewFindViewByPosition, selectedPosition == i10, i6, true);
            }
            i10++;
        }
    }

    public final void g() {
        for (int i6 = 0; i6 < getColumnsCount(); i6++) {
            h((VerticalGridView) this.f1890b.get(i6));
        }
    }

    public float getActivatedVisibleItemCount() {
        return this.f1895i;
    }

    public int getColumnsCount() {
        ArrayList arrayList = this.f1891c;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public int getPickerItemHeightPixels() {
        return getContext().getResources().getDimensionPixelSize(R.dimen.picker_item_height);
    }

    public final int getPickerItemLayoutId() {
        return this.f1899m;
    }

    public final int getPickerItemTextViewId() {
        return this.f1900n;
    }

    public int getSelectedColumn() {
        return this.f1897k;
    }

    @Deprecated
    public final CharSequence getSeparator() {
        return (CharSequence) this.f1898l.get(0);
    }

    public final List<CharSequence> getSeparators() {
        return this.f1898l;
    }

    public float getVisibleItemCount() {
        return 1.0f;
    }

    public final void h(VerticalGridView verticalGridView) {
        ViewGroup.LayoutParams layoutParams = verticalGridView.getLayoutParams();
        float activatedVisibleItemCount = isActivated() ? getActivatedVisibleItemCount() : getVisibleItemCount();
        layoutParams.height = (int) q.d(activatedVisibleItemCount, 1.0f, verticalGridView.getVerticalSpacing(), getPickerItemHeightPixels() * activatedVisibleItemCount);
        verticalGridView.setLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i6, Rect rect) {
        int selectedColumn = getSelectedColumn();
        if (selectedColumn < 0) {
            return false;
        }
        ArrayList arrayList = this.f1890b;
        if (selectedColumn < arrayList.size()) {
            return ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus(i6, rect);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        int i6 = 0;
        while (true) {
            ArrayList arrayList = this.f1890b;
            if (i6 >= arrayList.size()) {
                return;
            }
            if (((VerticalGridView) arrayList.get(i6)).hasFocus()) {
                setSelectedColumn(i6);
            }
            i6++;
        }
    }

    @Override // android.view.View
    public void setActivated(boolean z7) {
        ArrayList arrayList;
        if (z7 == isActivated()) {
            super.setActivated(z7);
            return;
        }
        super.setActivated(z7);
        boolean zHasFocus = hasFocus();
        int selectedColumn = getSelectedColumn();
        setDescendantFocusability(131072);
        if (!z7 && zHasFocus && isFocusable()) {
            requestFocus();
        }
        int i6 = 0;
        while (true) {
            int columnsCount = getColumnsCount();
            arrayList = this.f1890b;
            if (i6 >= columnsCount) {
                break;
            }
            ((VerticalGridView) arrayList.get(i6)).setFocusable(z7);
            i6++;
        }
        g();
        boolean zIsActivated = isActivated();
        for (int i10 = 0; i10 < getColumnsCount(); i10++) {
            VerticalGridView verticalGridView = (VerticalGridView) arrayList.get(i10);
            for (int i11 = 0; i11 < verticalGridView.getChildCount(); i11++) {
                verticalGridView.getChildAt(i11).setFocusable(zIsActivated);
            }
        }
        if (z7 && zHasFocus && selectedColumn >= 0) {
            ((VerticalGridView) arrayList.get(selectedColumn)).requestFocus();
        }
        setDescendantFocusability(262144);
    }

    public void setActivatedVisibleItemCount(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f1895i != f) {
            this.f1895i = f;
            if (isActivated()) {
                g();
            }
        }
    }

    public void setColumns(List<d> list) {
        ArrayList arrayList = this.f1898l;
        if (arrayList.size() == 0) {
            throw new IllegalStateException("Separators size is: " + arrayList.size() + ". At least one separator must be provided");
        }
        if (arrayList.size() == 1) {
            CharSequence charSequence = (CharSequence) arrayList.get(0);
            arrayList.clear();
            arrayList.add("");
            for (int i6 = 0; i6 < list.size() - 1; i6++) {
                arrayList.add(charSequence);
            }
            arrayList.add("");
        } else if (arrayList.size() != list.size() + 1) {
            throw new IllegalStateException("Separators size: " + arrayList.size() + " mustequal the size of columns: " + list.size() + " + 1");
        }
        ArrayList arrayList2 = this.f1890b;
        arrayList2.clear();
        ViewGroup viewGroup = this.f1889a;
        viewGroup.removeAllViews();
        ArrayList arrayList3 = new ArrayList(list);
        this.f1891c = arrayList3;
        if (this.f1897k > arrayList3.size() - 1) {
            this.f1897k = this.f1891c.size() - 1;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        int columnsCount = getColumnsCount();
        if (!TextUtils.isEmpty((CharSequence) arrayList.get(0))) {
            TextView textView = (TextView) layoutInflaterFrom.inflate(R.layout.lb_picker_separator, viewGroup, false);
            textView.setText((CharSequence) arrayList.get(0));
            viewGroup.addView(textView);
        }
        int i10 = 0;
        while (i10 < columnsCount) {
            VerticalGridView verticalGridView = (VerticalGridView) layoutInflaterFrom.inflate(R.layout.lb_picker_column, viewGroup, false);
            h(verticalGridView);
            verticalGridView.setWindowAlignment(0);
            verticalGridView.setHasFixedSize(false);
            verticalGridView.setFocusable(isActivated());
            verticalGridView.setItemViewCacheSize(0);
            arrayList2.add(verticalGridView);
            viewGroup.addView(verticalGridView);
            int i11 = i10 + 1;
            if (!TextUtils.isEmpty((CharSequence) arrayList.get(i11))) {
                TextView textView2 = (TextView) layoutInflaterFrom.inflate(R.layout.lb_picker_separator, viewGroup, false);
                textView2.setText((CharSequence) arrayList.get(i11));
                viewGroup.addView(textView2);
            }
            verticalGridView.setAdapter(new b(this, getPickerItemLayoutId(), getPickerItemTextViewId(), i10));
            verticalGridView.setOnChildViewHolderSelectedListener(this.f1901o);
            i10 = i11;
        }
    }

    public final void setPickerItemLayoutId(int i6) {
        this.f1899m = i6;
    }

    public final void setPickerItemTextViewId(int i6) {
        this.f1900n = i6;
    }

    public void setSelectedColumn(int i6) {
        int i10 = this.f1897k;
        ArrayList arrayList = this.f1890b;
        if (i10 != i6) {
            this.f1897k = i6;
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                f(i11);
            }
        }
        VerticalGridView verticalGridView = (VerticalGridView) arrayList.get(i6);
        if (!hasFocus() || verticalGridView.hasFocus()) {
            return;
        }
        verticalGridView.requestFocus();
    }

    public final void setSeparator(CharSequence charSequence) {
        setSeparators(Arrays.asList(charSequence));
    }

    public final void setSeparators(List<CharSequence> list) {
        ArrayList arrayList = this.f1898l;
        arrayList.clear();
        arrayList.addAll(list);
    }

    public void setVisibleItemCount(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException();
        }
        if (this.f1896j != f) {
            this.f1896j = f;
            if (isActivated()) {
                return;
            }
            g();
        }
    }

    @SuppressLint({"CustomViewStyleable"})
    public Picker(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1890b = new ArrayList();
        this.f1895i = 3.0f;
        this.f1896j = 1.0f;
        this.f1897k = 0;
        this.f1898l = new ArrayList();
        this.f1901o = new a(this);
        int[] iArr = h1.a.f7164g;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i6, 0);
        this.f1899m = typedArrayObtainStyledAttributes.getResourceId(0, R.layout.lb_picker_item);
        this.f1900n = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        setEnabled(true);
        setDescendantFocusability(262144);
        this.f1892e = 1.0f;
        this.d = 1.0f;
        this.f = 0.5f;
        this.f1893g = 200;
        this.f1894h = new DecelerateInterpolator(2.5f);
        this.f1889a = (ViewGroup) ((ViewGroup) LayoutInflater.from(getContext()).inflate(R.layout.lb_picker, (ViewGroup) this, true)).findViewById(R.id.picker);
    }
}
