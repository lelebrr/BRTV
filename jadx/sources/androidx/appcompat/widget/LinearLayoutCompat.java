package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class LinearLayoutCompat extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public boolean f547a;

    /* renamed from: b, reason: collision with root package name */
    public int f548b;

    /* renamed from: c, reason: collision with root package name */
    public int f549c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f550e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public float f551g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f552h;

    /* renamed from: i, reason: collision with root package name */
    public int[] f553i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f554j;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f555k;

    /* renamed from: l, reason: collision with root package name */
    public int f556l;

    /* renamed from: m, reason: collision with root package name */
    public int f557m;

    /* renamed from: n, reason: collision with root package name */
    public int f558n;

    /* renamed from: o, reason: collision with root package name */
    public int f559o;

    /* compiled from: MyApplication */
    public static class LayoutParams extends LinearLayout.LayoutParams {
        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final void f(Canvas canvas, int i6) {
        this.f555k.setBounds(getPaddingLeft() + this.f559o, i6, (getWidth() - getPaddingRight()) - this.f559o, this.f557m + i6);
        this.f555k.draw(canvas);
    }

    public final void g(Canvas canvas, int i6) {
        this.f555k.setBounds(i6, getPaddingTop() + this.f559o, this.f556l + i6, (getHeight() - getPaddingBottom()) - this.f559o);
        this.f555k.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i6;
        if (this.f548b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i10 = this.f548b;
        if (childCount <= i10) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i10);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f548b == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f549c;
        if (this.d == 1 && (i6 = this.f550e & 112) != 48) {
            if (i6 == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f) / 2;
            } else if (i6 == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f548b;
    }

    public Drawable getDividerDrawable() {
        return this.f555k;
    }

    public int getDividerPadding() {
        return this.f559o;
    }

    public int getDividerWidth() {
        return this.f556l;
    }

    public int getGravity() {
        return this.f550e;
    }

    public int getOrientation() {
        return this.d;
    }

    public int getShowDividers() {
        return this.f558n;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f551g;
    }

    @Override // android.view.ViewGroup
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateDefaultLayoutParams() {
        int i6 = this.d;
        if (i6 == 0) {
            return new LayoutParams(-2, -2);
        }
        if (i6 == 1) {
            return new LayoutParams(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public final boolean k(int i6) {
        if (i6 == 0) {
            return (this.f558n & 1) != 0;
        }
        if (i6 == getChildCount()) {
            return (this.f558n & 4) != 0;
        }
        if ((this.f558n & 2) == 0) {
            return false;
        }
        for (int i10 = i6 - 1; i10 >= 0; i10--) {
            if (getChildAt(i10).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int right;
        int left;
        int i6;
        if (this.f555k == null) {
            return;
        }
        int i10 = 0;
        if (this.d == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i10 < virtualChildCount) {
                View childAt = getChildAt(i10);
                if (childAt != null && childAt.getVisibility() != 8 && k(i10)) {
                    f(canvas, (childAt.getTop() - ((LinearLayout.LayoutParams) ((LayoutParams) childAt.getLayoutParams())).topMargin) - this.f557m);
                }
                i10++;
            }
            if (k(virtualChildCount)) {
                View childAt2 = getChildAt(virtualChildCount - 1);
                f(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.f557m : childAt2.getBottom() + ((LinearLayout.LayoutParams) ((LayoutParams) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean zA = c4.a(this);
        while (i10 < virtualChildCount2) {
            View childAt3 = getChildAt(i10);
            if (childAt3 != null && childAt3.getVisibility() != 8 && k(i10)) {
                LayoutParams layoutParams = (LayoutParams) childAt3.getLayoutParams();
                g(canvas, zA ? childAt3.getRight() + ((LinearLayout.LayoutParams) layoutParams).rightMargin : (childAt3.getLeft() - ((LinearLayout.LayoutParams) layoutParams).leftMargin) - this.f556l);
            }
            i10++;
        }
        if (k(virtualChildCount2)) {
            View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                LayoutParams layoutParams2 = (LayoutParams) childAt4.getLayoutParams();
                if (zA) {
                    left = childAt4.getLeft() - ((LinearLayout.LayoutParams) layoutParams2).leftMargin;
                    i6 = this.f556l;
                    right = left - i6;
                } else {
                    right = childAt4.getRight() + ((LinearLayout.LayoutParams) layoutParams2).rightMargin;
                }
            } else if (zA) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i6 = this.f556l;
                right = left - i6;
            }
            g(canvas, right);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x019e  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onLayout(boolean r24, int r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 458
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:153:0x02f2  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0483  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0488  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x04b0  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04b5  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x04bd  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04c9  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x04db  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x04ee  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0533  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0543  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0556  */
    /* JADX WARN: Removed duplicated region for block: B:280:0x05df  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x068c  */
    /* JADX WARN: Removed duplicated region for block: B:315:0x0693  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x06af  */
    /* JADX WARN: Removed duplicated region for block: B:368:0x07c5  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0800  */
    /* JADX WARN: Removed duplicated region for block: B:388:0x0837  */
    /* JADX WARN: Removed duplicated region for block: B:391:0x085a  */
    /* JADX WARN: Removed duplicated region for block: B:442:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMeasure(int r38, int r39) {
        /*
            Method dump skipped, instructions count: 2202
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.LinearLayoutCompat.onMeasure(int, int):void");
    }

    public void setBaselineAligned(boolean z7) {
        this.f547a = z7;
    }

    public void setBaselineAlignedChildIndex(int i6) {
        if (i6 >= 0 && i6 < getChildCount()) {
            this.f548b = i6;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f555k) {
            return;
        }
        this.f555k = drawable;
        if (drawable != null) {
            this.f556l = drawable.getIntrinsicWidth();
            this.f557m = drawable.getIntrinsicHeight();
        } else {
            this.f556l = 0;
            this.f557m = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i6) {
        this.f559o = i6;
    }

    public void setGravity(int i6) {
        if (this.f550e != i6) {
            if ((8388615 & i6) == 0) {
                i6 |= 8388611;
            }
            if ((i6 & 112) == 0) {
                i6 |= 48;
            }
            this.f550e = i6;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i6) {
        int i10 = i6 & 8388615;
        int i11 = this.f550e;
        if ((8388615 & i11) != i10) {
            this.f550e = i10 | ((-8388616) & i11);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z7) {
        this.f552h = z7;
    }

    public void setOrientation(int i6) {
        if (this.d != i6) {
            this.d = i6;
            requestLayout();
        }
    }

    public void setShowDividers(int i6) {
        if (i6 != this.f558n) {
            requestLayout();
        }
        this.f558n = i6;
    }

    public void setVerticalGravity(int i6) {
        int i10 = i6 & 112;
        int i11 = this.f550e;
        if ((i11 & 112) != i10) {
            this.f550e = i10 | (i11 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f551g = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    public LinearLayoutCompat(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f547a = true;
        this.f548b = -1;
        this.f549c = 0;
        this.f550e = 8388659;
        int[] iArr = e.a.f6359o;
        a1.b bVarC = a1.b.C(context, attributeSet, iArr, i6);
        n0.s0.p(this, context, iArr, attributeSet, (TypedArray) bVarC.f48c, i6, 0);
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        int i10 = typedArray.getInt(1, -1);
        if (i10 >= 0) {
            setOrientation(i10);
        }
        int i11 = typedArray.getInt(0, -1);
        if (i11 >= 0) {
            setGravity(i11);
        }
        boolean z7 = typedArray.getBoolean(2, true);
        if (!z7) {
            setBaselineAligned(z7);
        }
        this.f551g = typedArray.getFloat(4, -1.0f);
        this.f548b = typedArray.getInt(3, -1);
        this.f552h = typedArray.getBoolean(7, false);
        setDividerDrawable(bVarC.t(5));
        this.f558n = typedArray.getInt(8, 0);
        this.f559o = typedArray.getDimensionPixelSize(6, 0);
        bVarC.F();
    }
}
