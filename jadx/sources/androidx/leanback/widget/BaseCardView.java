package androidx.leanback.widget;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class BaseCardView extends FrameLayout {

    /* renamed from: r, reason: collision with root package name */
    public static final int[] f1604r = {R.attr.state_pressed};

    /* renamed from: a, reason: collision with root package name */
    public int f1605a;

    /* renamed from: b, reason: collision with root package name */
    public int f1606b;

    /* renamed from: c, reason: collision with root package name */
    public int f1607c;
    public final ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f1608e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public int f1609g;

    /* renamed from: h, reason: collision with root package name */
    public int f1610h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1611i;

    /* renamed from: j, reason: collision with root package name */
    public final int f1612j;

    /* renamed from: k, reason: collision with root package name */
    public final int f1613k;

    /* renamed from: l, reason: collision with root package name */
    public final int f1614l;

    /* renamed from: m, reason: collision with root package name */
    public float f1615m;

    /* renamed from: n, reason: collision with root package name */
    public float f1616n;

    /* renamed from: o, reason: collision with root package name */
    public float f1617o;

    /* renamed from: p, reason: collision with root package name */
    public c f1618p;

    /* renamed from: q, reason: collision with root package name */
    public final a f1619q;

    /* compiled from: MyApplication */
    public static class LayoutParams extends FrameLayout.LayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f1620a;

        @SuppressLint({"CustomViewStyleable"})
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1620a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h1.a.d);
            this.f1620a = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public BaseCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.baseCardViewStyle);
    }

    private void setInfoViewVisibility(boolean z7) {
        int i6 = this.f1605a;
        ArrayList arrayList = this.f1608e;
        int i10 = 0;
        if (i6 != 3) {
            if (i6 != 2) {
                if (i6 == 1) {
                    b();
                    if (z7) {
                        for (int i11 = 0; i11 < arrayList.size(); i11++) {
                            ((View) arrayList.get(i11)).setVisibility(0);
                        }
                    }
                    if ((z7 ? 1.0f : 0.0f) == this.f1617o) {
                        return;
                    }
                    c cVar = new c(this, this.f1617o, z7 ? 1.0f : 0.0f, 0);
                    this.f1618p = cVar;
                    cVar.setDuration(this.f1613k);
                    this.f1618p.setInterpolator(new DecelerateInterpolator());
                    this.f1618p.setAnimationListener(new b(this, 2));
                    startAnimation(this.f1618p);
                    return;
                }
                return;
            }
            if (this.f1606b != 2) {
                for (int i12 = 0; i12 < arrayList.size(); i12++) {
                    ((View) arrayList.get(i12)).setVisibility(z7 ? 0 : 8);
                }
                return;
            }
            b();
            if (z7) {
                for (int i13 = 0; i13 < arrayList.size(); i13++) {
                    ((View) arrayList.get(i13)).setVisibility(0);
                }
            }
            float f = z7 ? 1.0f : 0.0f;
            if (this.f1616n == f) {
                return;
            }
            c cVar2 = new c(this, this.f1616n, f, 1);
            this.f1618p = cVar2;
            cVar2.setDuration(this.f1614l);
            this.f1618p.setInterpolator(new AccelerateDecelerateInterpolator());
            this.f1618p.setAnimationListener(new b(this, 1));
            startAnimation(this.f1618p);
            return;
        }
        if (z7) {
            for (int i14 = 0; i14 < arrayList.size(); i14++) {
                ((View) arrayList.get(i14)).setVisibility(0);
            }
            return;
        }
        for (int i15 = 0; i15 < arrayList.size(); i15++) {
            ((View) arrayList.get(i15)).setVisibility(8);
        }
        while (true) {
            ArrayList arrayList2 = this.f;
            if (i10 >= arrayList2.size()) {
                this.f1615m = 0.0f;
                return;
            } else {
                ((View) arrayList2.get(i10)).setVisibility(8);
                i10++;
            }
        }
    }

    public final void a(boolean z7) {
        b();
        int i6 = 0;
        if (z7) {
            int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.f1609g, 1073741824);
            int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
            int i10 = 0;
            int iMax = 0;
            while (true) {
                ArrayList arrayList = this.f;
                if (i10 >= arrayList.size()) {
                    break;
                }
                View view = (View) arrayList.get(i10);
                view.setVisibility(0);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                iMax = Math.max(iMax, view.getMeasuredHeight());
                i10++;
            }
            i6 = iMax;
        }
        c cVar = new c(this, this.f1615m, z7 ? i6 : 0.0f, 2);
        this.f1618p = cVar;
        cVar.setDuration(this.f1614l);
        this.f1618p.setInterpolator(new AccelerateDecelerateInterpolator());
        this.f1618p.setAnimationListener(new b(this, 0));
        startAnimation(this.f1618p);
    }

    public final void b() {
        c cVar = this.f1618p;
        if (cVar != null) {
            cVar.cancel();
            this.f1618p = null;
            clearAnimation();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.f1620a = 0;
        return layoutParams;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getCardType() {
        return this.f1605a;
    }

    @Deprecated
    public int getExtraVisibility() {
        return this.f1607c;
    }

    public final float getFinalInfoAlpha() {
        return (this.f1605a == 1 && this.f1606b == 2 && !isSelected()) ? 0.0f : 1.0f;
    }

    public final float getFinalInfoVisFraction() {
        return (this.f1605a == 2 && this.f1606b == 2 && !isSelected()) ? 0.0f : 1.0f;
    }

    public int getInfoVisibility() {
        return this.f1606b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i6) {
        boolean z7 = false;
        boolean z10 = false;
        for (int i10 : super.onCreateDrawableState(i6)) {
            if (i10 == 16842919) {
                z7 = true;
            }
            if (i10 == 16842910) {
                z10 = true;
            }
        }
        return (z7 && z10) ? View.PRESSED_ENABLED_STATE_SET : z7 ? f1604r : z10 ? View.ENABLED_STATE_SET : View.EMPTY_STATE_SET;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f1619q);
        b();
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        ArrayList arrayList;
        float paddingTop = getPaddingTop();
        int i13 = 0;
        while (true) {
            ArrayList arrayList2 = this.d;
            if (i13 >= arrayList2.size()) {
                break;
            }
            View view = (View) arrayList2.get(i13);
            if (view.getVisibility() != 8) {
                view.layout(getPaddingLeft(), (int) paddingTop, getPaddingLeft() + this.f1609g, (int) (view.getMeasuredHeight() + paddingTop));
                paddingTop += view.getMeasuredHeight();
            }
            i13++;
        }
        if (this.f1605a != 0) {
            int i14 = 0;
            float measuredHeight = 0.0f;
            while (true) {
                arrayList = this.f1608e;
                if (i14 >= arrayList.size()) {
                    break;
                }
                measuredHeight += ((View) arrayList.get(i14)).getMeasuredHeight();
                i14++;
            }
            int i15 = this.f1605a;
            if (i15 == 1) {
                paddingTop -= measuredHeight;
                if (paddingTop < 0.0f) {
                    paddingTop = 0.0f;
                }
            } else if (i15 != 2) {
                paddingTop -= this.f1615m;
            } else if (this.f1606b == 2) {
                measuredHeight *= this.f1616n;
            }
            for (int i16 = 0; i16 < arrayList.size(); i16++) {
                View view2 = (View) arrayList.get(i16);
                if (view2.getVisibility() != 8) {
                    int measuredHeight2 = view2.getMeasuredHeight();
                    if (measuredHeight2 > measuredHeight) {
                        measuredHeight2 = (int) measuredHeight;
                    }
                    float f = measuredHeight2;
                    paddingTop += f;
                    view2.layout(getPaddingLeft(), (int) paddingTop, getPaddingLeft() + this.f1609g, (int) paddingTop);
                    measuredHeight -= f;
                    if (measuredHeight <= 0.0f) {
                        break;
                    }
                }
            }
            if (this.f1605a == 3) {
                int i17 = 0;
                while (true) {
                    ArrayList arrayList3 = this.f;
                    if (i17 >= arrayList3.size()) {
                        break;
                    }
                    View view3 = (View) arrayList3.get(i17);
                    if (view3.getVisibility() != 8) {
                        view3.layout(getPaddingLeft(), (int) paddingTop, getPaddingLeft() + this.f1609g, (int) (view3.getMeasuredHeight() + paddingTop));
                        paddingTop += view3.getMeasuredHeight();
                    }
                    i17++;
                }
            }
        }
        onSizeChanged(0, 0, i11 - i6, i12 - i10);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0048  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r17, int r18) {
        /*
            Method dump skipped, instructions count: 410
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.BaseCardView.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public void setActivated(boolean z7) {
        if (z7 != isActivated()) {
            super.setActivated(z7);
            if (this.f1605a != 0) {
                int i6 = this.f1606b;
                if (i6 == 1) {
                    setInfoViewVisibility(i6 != 0 ? i6 != 1 ? i6 != 2 ? false : isSelected() : isActivated() : true);
                }
            }
        }
    }

    public void setCardType(int i6) {
        if (this.f1605a != i6) {
            if (i6 < 0 || i6 >= 4) {
                Log.e("BaseCardView", "Invalid card type specified: " + i6 + ". Defaulting to type CARD_TYPE_MAIN_ONLY.");
                this.f1605a = 0;
            } else {
                this.f1605a = i6;
            }
            requestLayout();
        }
    }

    @Deprecated
    public void setExtraVisibility(int i6) {
        if (this.f1607c != i6) {
            this.f1607c = i6;
        }
    }

    public void setInfoVisibility(int i6) {
        if (this.f1606b == i6) {
            return;
        }
        b();
        this.f1606b = i6;
        this.f1616n = getFinalInfoVisFraction();
        requestLayout();
        float finalInfoAlpha = getFinalInfoAlpha();
        if (finalInfoAlpha == this.f1617o) {
            return;
        }
        this.f1617o = finalInfoAlpha;
        int i10 = 0;
        while (true) {
            ArrayList arrayList = this.f1608e;
            if (i10 >= arrayList.size()) {
                return;
            }
            ((View) arrayList.get(i10)).setAlpha(this.f1617o);
            i10++;
        }
    }

    @Override // android.view.View
    public void setSelected(boolean z7) {
        if (z7 != isSelected()) {
            super.setSelected(z7);
            boolean zIsSelected = isSelected();
            a aVar = this.f1619q;
            removeCallbacks(aVar);
            if (this.f1605a != 3) {
                if (this.f1606b == 2) {
                    setInfoViewVisibility(zIsSelected);
                }
            } else if (!zIsSelected) {
                a(false);
            } else if (this.f1611i) {
                postDelayed(aVar, this.f1612j);
            } else {
                post(aVar);
                this.f1611i = true;
            }
        }
    }

    public void setSelectedAnimationDelayed(boolean z7) {
        this.f1611i = z7;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @SuppressLint({"CustomViewStyleable"})
    public BaseCardView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1619q = new a(0, this);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h1.a.f7162c, i6, 0);
        try {
            this.f1605a = typedArrayObtainStyledAttributes.getInteger(3, 0);
            Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(2);
            if (drawable != null) {
                setForeground(drawable);
            }
            Drawable drawable2 = typedArrayObtainStyledAttributes.getDrawable(1);
            if (drawable2 != null) {
                setBackground(drawable2);
            }
            this.f1606b = typedArrayObtainStyledAttributes.getInteger(5, 1);
            int integer = typedArrayObtainStyledAttributes.getInteger(4, 2);
            this.f1607c = integer;
            int i10 = this.f1606b;
            if (integer < i10) {
                this.f1607c = i10;
            }
            this.f1612j = typedArrayObtainStyledAttributes.getInteger(6, getResources().getInteger(com.p2elite.brtv2.R.integer.lb_card_selected_animation_delay));
            this.f1614l = typedArrayObtainStyledAttributes.getInteger(7, getResources().getInteger(com.p2elite.brtv2.R.integer.lb_card_selected_animation_duration));
            this.f1613k = typedArrayObtainStyledAttributes.getInteger(0, getResources().getInteger(com.p2elite.brtv2.R.integer.lb_card_activated_animation_duration));
            typedArrayObtainStyledAttributes.recycle();
            this.f1611i = true;
            this.d = new ArrayList();
            this.f1608e = new ArrayList();
            this.f = new ArrayList();
            this.f1615m = 0.0f;
            this.f1616n = getFinalInfoVisFraction();
            this.f1617o = getFinalInfoAlpha();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            LayoutParams layoutParams3 = new LayoutParams(layoutParams2);
            layoutParams3.f1620a = 0;
            layoutParams3.f1620a = layoutParams2.f1620a;
            return layoutParams3;
        }
        LayoutParams layoutParams4 = new LayoutParams(layoutParams);
        layoutParams4.f1620a = 0;
        return layoutParams4;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final FrameLayout.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.f1620a = 0;
        return layoutParams;
    }
}
