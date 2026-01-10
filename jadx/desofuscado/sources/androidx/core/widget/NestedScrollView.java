package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import androidx.media3.extractor.ts.TsExtractor;
import java.util.WeakHashMap;
import n0.g0;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class NestedScrollView extends FrameLayout implements n0.q, n0.n {
    public static final float C = (float) (Math.log(0.78d) / Math.log(0.9d));
    public static final i D = new i(0);
    public static final int[] E = {R.attr.fillViewport};
    public k A;
    public final n0.h B;

    /* renamed from: a, reason: collision with root package name */
    public final float f1264a;

    /* renamed from: b, reason: collision with root package name */
    public long f1265b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f1266c;
    public final OverScroller d;

    /* renamed from: e, reason: collision with root package name */
    public final EdgeEffect f1267e;
    public final EdgeEffect f;

    /* renamed from: g, reason: collision with root package name */
    public int f1268g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1269h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1270i;

    /* renamed from: j, reason: collision with root package name */
    public View f1271j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f1272k;

    /* renamed from: l, reason: collision with root package name */
    public VelocityTracker f1273l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1274m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f1275n;

    /* renamed from: o, reason: collision with root package name */
    public final int f1276o;

    /* renamed from: p, reason: collision with root package name */
    public final int f1277p;

    /* renamed from: q, reason: collision with root package name */
    public final int f1278q;

    /* renamed from: r, reason: collision with root package name */
    public int f1279r;

    /* renamed from: s, reason: collision with root package name */
    public final int[] f1280s;

    /* renamed from: t, reason: collision with root package name */
    public final int[] f1281t;

    /* renamed from: u, reason: collision with root package name */
    public int f1282u;

    /* renamed from: v, reason: collision with root package name */
    public int f1283v;

    /* renamed from: w, reason: collision with root package name */
    public SavedState f1284w;

    /* renamed from: x, reason: collision with root package name */
    public final n0.r f1285x;

    /* renamed from: y, reason: collision with root package name */
    public final n0.o f1286y;

    /* renamed from: z, reason: collision with root package name */
    public float f1287z;

    /* compiled from: MyApplication */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new l();

        /* renamed from: a, reason: collision with root package name */
        public int f1288a;

        public final String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f1288a + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeInt(this.f1288a);
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.nestedScrollViewStyle);
    }

    public static boolean m(View view, NestedScrollView nestedScrollView) {
        if (view == nestedScrollView) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && m((View) parent, nestedScrollView);
    }

    @Override // n0.p
    public final void a(View view, View view2, int i6, int i10) {
        n0.r rVar = this.f1285x;
        if (i10 == 1) {
            rVar.f8347b = i6;
        } else {
            rVar.f8346a = i6;
        }
        w(2, i10);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // n0.p
    public final void b(View view, int i6, int i10, int[] iArr, int i11) {
        e(i6, i10, iArr, null, i11);
    }

    public final boolean c(int i6) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i6);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !n(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i6 == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i6 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i6 != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            t(maxScrollAmount, 0, 1, true);
        } else {
            Rect rect = this.f1266c;
            viewFindNextFocus.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(viewFindNextFocus, rect);
            t(d(rect), 0, 1, true);
            viewFindNextFocus.requestFocus(i6);
        }
        if (viewFindFocus != null && viewFindFocus.isFocused() && !n(viewFindFocus, 0, getHeight())) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e9  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void computeScroll() {
        /*
            Method dump skipped, instructions count: 237
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.computeScroll():void");
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    public final int d(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i6 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i10 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i6 - verticalFadingEdgeLength : i6;
        int i11 = rect.bottom;
        if (i11 > i10 && rect.top > scrollY) {
            return Math.min(rect.height() > height ? rect.top - scrollY : rect.bottom - i10, (childAt.getBottom() + layoutParams.bottomMargin) - i6);
        }
        if (rect.top >= scrollY || i11 >= i10) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i10 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || h(keyEvent);
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f3, boolean z7) {
        return this.f1286y.a(f, f3, z7);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f3) {
        return this.f1286y.b(f, f3);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i6, int i10, int[] iArr, int[] iArr2) {
        return this.f1286y.c(i6, i10, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i6, int i10, int i11, int i12, int[] iArr) {
        return this.f1286y.d(i6, i10, i11, i12, iArr, 0, null);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        int scrollY = getScrollY();
        EdgeEffect edgeEffect = this.f1267e;
        int paddingLeft2 = 0;
        if (!edgeEffect.isFinished()) {
            int iSave = canvas.save();
            int width = getWidth();
            int height = getHeight();
            int iMin = Math.min(0, scrollY);
            if (j.a(this)) {
                width -= getPaddingRight() + getPaddingLeft();
                paddingLeft = getPaddingLeft();
            } else {
                paddingLeft = 0;
            }
            if (j.a(this)) {
                height -= getPaddingBottom() + getPaddingTop();
                iMin += getPaddingTop();
            }
            canvas.translate(paddingLeft, iMin);
            edgeEffect.setSize(width, height);
            if (edgeEffect.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect2 = this.f;
        if (edgeEffect2.isFinished()) {
            return;
        }
        int iSave2 = canvas.save();
        int width2 = getWidth();
        int height2 = getHeight();
        int iMax = Math.max(getScrollRange(), scrollY) + height2;
        if (j.a(this)) {
            width2 -= getPaddingRight() + getPaddingLeft();
            paddingLeft2 = getPaddingLeft();
        }
        if (j.a(this)) {
            height2 -= getPaddingBottom() + getPaddingTop();
            iMax -= getPaddingBottom();
        }
        canvas.translate(paddingLeft2 - width2, iMax);
        canvas.rotate(180.0f, width2, 0.0f);
        edgeEffect2.setSize(width2, height2);
        if (edgeEffect2.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(iSave2);
    }

    public final boolean e(int i6, int i10, int[] iArr, int[] iArr2, int i11) {
        return this.f1286y.c(i6, i10, iArr, null, i11);
    }

    @Override // n0.p
    public final void f(int i6, View view) {
        n0.r rVar = this.f1285x;
        if (i6 == 1) {
            rVar.f8347b = 0;
        } else {
            rVar.f8346a = 0;
        }
        y(i6);
    }

    @Override // n0.q
    public final void g(View view, int i6, int i10, int i11, int i12, int i13, int[] iArr) {
        o(i12, i13, iArr);
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        n0.r rVar = this.f1285x;
        return rVar.f8347b | rVar.f8346a;
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public float getVerticalScrollFactorCompat() {
        if (this.f1287z == 0.0f) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f1287z = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f1287z;
    }

    public final boolean h(KeyEvent keyEvent) {
        this.f1266c.setEmpty();
        int childCount = getChildCount();
        int i6 = TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
        if (childCount > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            if (childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom()) {
                if (keyEvent.getAction() != 0) {
                    return false;
                }
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 19) {
                    return keyEvent.isAltPressed() ? l(33) : c(33);
                }
                if (keyCode == 20) {
                    return keyEvent.isAltPressed() ? l(TsExtractor.TS_STREAM_TYPE_HDMV_DTS) : c(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                }
                if (keyCode == 62) {
                    if (keyEvent.isShiftPressed()) {
                        i6 = 33;
                    }
                    r(i6);
                    return false;
                }
                if (keyCode == 92) {
                    return l(33);
                }
                if (keyCode == 93) {
                    return l(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                }
                if (keyCode == 122) {
                    r(33);
                    return false;
                }
                if (keyCode != 123) {
                    return false;
                }
                r(TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
                return false;
            }
        }
        if (!isFocused() || keyEvent.getKeyCode() == 4) {
            return false;
        }
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, TsExtractor.TS_STREAM_TYPE_HDMV_DTS);
        return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(TsExtractor.TS_STREAM_TYPE_HDMV_DTS)) ? false : true;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return this.f1286y.f(0);
    }

    @Override // n0.p
    public final void i(View view, int i6, int i10, int i11, int i12, int i13) {
        o(i12, i13, null);
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return this.f1286y.d;
    }

    @Override // n0.p
    public final boolean j(View view, View view2, int i6, int i10) {
        return (i6 & 2) != 0;
    }

    public final void k(int i6) {
        if (getChildCount() > 0) {
            this.d.fling(getScrollX(), getScrollY(), 0, i6, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            w(2, 1);
            this.f1283v = getScrollY();
            postInvalidateOnAnimation();
        }
    }

    public final boolean l(int i6) {
        int childCount;
        boolean z7 = i6 == 130;
        int height = getHeight();
        Rect rect = this.f1266c;
        rect.top = 0;
        rect.bottom = height;
        if (z7 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            rect.bottom = paddingBottom;
            rect.top = paddingBottom - height;
        }
        return s(i6, rect.top, rect.bottom);
    }

    @Override // android.view.ViewGroup
    public final void measureChild(View view, int i6, int i10) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public final void measureChildWithMargins(View view, int i6, int i10, int i11, int i12) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i10, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    public final boolean n(View view, int i6, int i10) {
        Rect rect = this.f1266c;
        view.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(view, rect);
        return rect.bottom + i6 >= getScrollY() && rect.top - i6 <= getScrollY() + i10;
    }

    public final void o(int i6, int i10, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i6);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f1286y.d(0, scrollY2, 0, i6 - scrollY2, null, i10, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1270i = false;
    }

    @Override // android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        int i6;
        float axisValue;
        int width;
        if (motionEvent.getAction() == 8 && !this.f1272k) {
            if (n5.d.z(motionEvent, 2)) {
                i6 = 9;
                axisValue = motionEvent.getAxisValue(9);
                width = (int) motionEvent.getX();
            } else if (n5.d.z(motionEvent, 4194304)) {
                axisValue = motionEvent.getAxisValue(26);
                width = getWidth() / 2;
                i6 = 26;
            } else {
                i6 = 0;
                axisValue = 0.0f;
                width = 0;
            }
            if (axisValue != 0.0f) {
                t(-((int) (getVerticalScrollFactorCompat() * axisValue)), width, 1, n5.d.z(motionEvent, 8194));
                if (i6 != 0) {
                    this.B.a(motionEvent, i6);
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0117  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r13) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        int measuredHeight;
        super.onLayout(z7, i6, i10, i11, i12);
        int i13 = 0;
        this.f1269h = false;
        View view = this.f1271j;
        if (view != null && m(view, this)) {
            View view2 = this.f1271j;
            Rect rect = this.f1266c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iD = d(rect);
            if (iD != 0) {
                scrollBy(0, iD);
            }
        }
        this.f1271j = null;
        if (!this.f1270i) {
            if (this.f1284w != null) {
                scrollTo(getScrollX(), this.f1284w.f1288a);
                this.f1284w = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            } else {
                measuredHeight = 0;
            }
            int paddingTop = ((i12 - i10) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            if (paddingTop < measuredHeight && scrollY >= 0) {
                i13 = paddingTop + scrollY > measuredHeight ? measuredHeight - paddingTop : scrollY;
            }
            if (i13 != scrollY) {
                scrollTo(getScrollX(), i13);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1270i = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
        if (this.f1274m && View.MeasureSpec.getMode(i10) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(ViewGroup.getChildMeasureSpec(i6, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f3, boolean z7) {
        if (z7) {
            return false;
        }
        dispatchNestedFling(0.0f, f3, true);
        k((int) f3);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f3) {
        return this.f1286y.b(f, f3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i6, int i10, int[] iArr) {
        e(i6, i10, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i6, int i10, int i11, int i12) {
        o(i12, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i6) {
        a(view, view2, i6, 0);
    }

    @Override // android.view.View
    public final void onOverScrolled(int i6, int i10, boolean z7, boolean z10) {
        super.scrollTo(i6, i10);
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i6, Rect rect) {
        if (i6 == 2) {
            i6 = TsExtractor.TS_STREAM_TYPE_HDMV_DTS;
        } else if (i6 == 1) {
            i6 = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i6) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i6);
        if (viewFindNextFocus != null && n(viewFindNextFocus, 0, getHeight())) {
            return viewFindNextFocus.requestFocus(i6, rect);
        }
        return false;
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.f1284w = savedState;
        requestLayout();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1288a = getScrollY();
        return savedState;
    }

    @Override // android.view.View
    public final void onScrollChanged(int i6, int i10, int i11, int i12) {
        super.onScrollChanged(i6, i10, i11, i12);
        k kVar = this.A;
        if (kVar != null) {
            kVar.k(this);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        super.onSizeChanged(i6, i10, i11, i12);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !n(viewFindFocus, 0, i12)) {
            return;
        }
        Rect rect = this.f1266c;
        viewFindFocus.getDrawingRect(rect);
        offsetDescendantRectToMyCoords(viewFindFocus, rect);
        int iD = d(rect);
        if (iD != 0) {
            if (this.f1275n) {
                v(0, iD, false);
            } else {
                scrollBy(0, iD);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i6) {
        return j(view, view2, i6, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        f(0, view);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (this.f1273l == null) {
            this.f1273l = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1282u = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        float f = 0.0f;
        motionEventObtain.offsetLocation(0.0f, this.f1282u);
        if (actionMasked != 0) {
            EdgeEffect edgeEffect = this.f;
            EdgeEffect edgeEffect2 = this.f1267e;
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f1273l;
                velocityTracker.computeCurrentVelocity(1000, this.f1278q);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f1279r);
                if (Math.abs(yVelocity) >= this.f1277p) {
                    if (com.bumptech.glide.d.m(edgeEffect2) != 0.0f) {
                        if (u(edgeEffect2, yVelocity)) {
                            edgeEffect2.onAbsorb(yVelocity);
                        } else {
                            k(-yVelocity);
                        }
                    } else if (com.bumptech.glide.d.m(edgeEffect) != 0.0f) {
                        int i6 = -yVelocity;
                        if (u(edgeEffect, i6)) {
                            edgeEffect.onAbsorb(i6);
                        } else {
                            k(i6);
                        }
                    } else {
                        int i10 = -yVelocity;
                        float f3 = i10;
                        if (!this.f1286y.b(0.0f, f3)) {
                            dispatchNestedFling(0.0f, f3, true);
                            k(i10);
                        }
                    }
                } else if (this.d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.f1279r = -1;
                this.f1272k = false;
                VelocityTracker velocityTracker2 = this.f1273l;
                if (velocityTracker2 != null) {
                    velocityTracker2.recycle();
                    this.f1273l = null;
                }
                y(0);
                this.f1267e.onRelease();
                this.f.onRelease();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f1279r);
                if (iFindPointerIndex == -1) {
                    Log.e("NestedScrollView", "Invalid pointerId=" + this.f1279r + " in onTouchEvent");
                } else {
                    int y7 = (int) motionEvent.getY(iFindPointerIndex);
                    int i11 = this.f1268g - y7;
                    float x10 = motionEvent.getX(iFindPointerIndex) / getWidth();
                    float height = i11 / getHeight();
                    if (com.bumptech.glide.d.m(edgeEffect2) != 0.0f) {
                        float f4 = -com.bumptech.glide.d.z(edgeEffect2, -height, x10);
                        if (com.bumptech.glide.d.m(edgeEffect2) == 0.0f) {
                            edgeEffect2.onRelease();
                        }
                        f = f4;
                    } else if (com.bumptech.glide.d.m(edgeEffect) != 0.0f) {
                        float fZ = com.bumptech.glide.d.z(edgeEffect, height, 1.0f - x10);
                        if (com.bumptech.glide.d.m(edgeEffect) == 0.0f) {
                            edgeEffect.onRelease();
                        }
                        f = fZ;
                    }
                    int iRound = Math.round(f * getHeight());
                    if (iRound != 0) {
                        invalidate();
                    }
                    int i12 = i11 - iRound;
                    if (!this.f1272k && Math.abs(i12) > this.f1276o) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f1272k = true;
                        i12 = i12 > 0 ? i12 - this.f1276o : i12 + this.f1276o;
                    }
                    if (this.f1272k) {
                        int iT = t(i12, (int) motionEvent.getX(iFindPointerIndex), 0, false);
                        this.f1268g = y7 - iT;
                        this.f1282u += iT;
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f1272k && getChildCount() > 0 && this.d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    postInvalidateOnAnimation();
                }
                this.f1279r = -1;
                this.f1272k = false;
                VelocityTracker velocityTracker3 = this.f1273l;
                if (velocityTracker3 != null) {
                    velocityTracker3.recycle();
                    this.f1273l = null;
                }
                y(0);
                this.f1267e.onRelease();
                this.f.onRelease();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f1268g = (int) motionEvent.getY(actionIndex);
                this.f1279r = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                p(motionEvent);
                this.f1268g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f1279r));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            if (this.f1272k && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.d.isFinished()) {
                this.d.abortAnimation();
                y(1);
            }
            int y9 = (int) motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            this.f1268g = y9;
            this.f1279r = pointerId;
            w(2, 0);
        }
        VelocityTracker velocityTracker4 = this.f1273l;
        if (velocityTracker4 != null) {
            velocityTracker4.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    public final void p(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1279r) {
            int i6 = actionIndex == 0 ? 1 : 0;
            this.f1268g = (int) motionEvent.getY(i6);
            this.f1279r = motionEvent.getPointerId(i6);
            VelocityTracker velocityTracker = this.f1273l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    public final boolean q(int i6, int i10, int i11, int i12) {
        boolean z7;
        boolean z10;
        getOverScrollMode();
        super.computeHorizontalScrollRange();
        super.computeHorizontalScrollExtent();
        computeVerticalScrollRange();
        super.computeVerticalScrollExtent();
        int i13 = i11 + i6;
        if (i10 <= 0 && i10 >= 0) {
            z7 = false;
        } else {
            i10 = 0;
            z7 = true;
        }
        if (i13 > i12) {
            z10 = true;
        } else if (i13 < 0) {
            z10 = true;
            i12 = 0;
        } else {
            i12 = i13;
            z10 = false;
        }
        if (z10 && !this.f1286y.f(1)) {
            this.d.springBack(i10, i12, 0, 0, 0, getScrollRange());
        }
        super.scrollTo(i10, i12);
        return z7 || z10;
    }

    public final void r(int i6) {
        boolean z7 = i6 == 130;
        int height = getHeight();
        Rect rect = this.f1266c;
        if (z7) {
            rect.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int paddingBottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
                if (rect.top + height > paddingBottom) {
                    rect.top = paddingBottom - height;
                }
            }
        } else {
            int scrollY = getScrollY() - height;
            rect.top = scrollY;
            if (scrollY < 0) {
                rect.top = 0;
            }
        }
        int i10 = rect.top;
        int i11 = height + i10;
        rect.bottom = i11;
        s(i6, i10, i11);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        if (this.f1269h) {
            this.f1271j = view2;
        } else {
            Rect rect = this.f1266c;
            view2.getDrawingRect(rect);
            offsetDescendantRectToMyCoords(view2, rect);
            int iD = d(rect);
            if (iD != 0) {
                scrollBy(0, iD);
            }
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z7) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iD = d(rect);
        boolean z10 = iD != 0;
        if (z10) {
            if (z7) {
                scrollBy(0, iD);
            } else {
                v(0, iD, false);
            }
        }
        return z10;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z7) {
        VelocityTracker velocityTracker;
        if (z7 && (velocityTracker = this.f1273l) != null) {
            velocityTracker.recycle();
            this.f1273l = null;
        }
        super.requestDisallowInterceptTouchEvent(z7);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        this.f1269h = true;
        super.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean s(int r18, int r19, int r20) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r20
            int r4 = r17.getHeight()
            int r5 = r17.getScrollY()
            int r4 = r4 + r5
            r6 = 33
            if (r1 != r6) goto L17
            r6 = 1
            goto L18
        L17:
            r6 = 0
        L18:
            r9 = 2
            java.util.ArrayList r9 = r0.getFocusables(r9)
            int r10 = r9.size()
            r11 = 0
            r12 = 0
            r13 = 0
        L24:
            if (r12 >= r10) goto L6c
            java.lang.Object r14 = r9.get(r12)
            android.view.View r14 = (android.view.View) r14
            int r15 = r14.getTop()
            int r7 = r14.getBottom()
            if (r2 >= r7) goto L69
            if (r15 >= r3) goto L69
            if (r2 >= r15) goto L3f
            if (r7 >= r3) goto L3f
            r16 = 1
            goto L41
        L3f:
            r16 = 0
        L41:
            if (r11 != 0) goto L47
            r11 = r14
            r13 = r16
            goto L69
        L47:
            if (r6 == 0) goto L4f
            int r8 = r11.getTop()
            if (r15 < r8) goto L57
        L4f:
            if (r6 != 0) goto L59
            int r8 = r11.getBottom()
            if (r7 <= r8) goto L59
        L57:
            r7 = 1
            goto L5a
        L59:
            r7 = 0
        L5a:
            if (r13 == 0) goto L61
            if (r16 == 0) goto L69
            if (r7 == 0) goto L69
            goto L68
        L61:
            if (r16 == 0) goto L66
            r11 = r14
            r13 = 1
            goto L69
        L66:
            if (r7 == 0) goto L69
        L68:
            r11 = r14
        L69:
            int r12 = r12 + 1
            goto L24
        L6c:
            if (r11 != 0) goto L6f
            r11 = r0
        L6f:
            if (r2 < r5) goto L75
            if (r3 > r4) goto L75
            r7 = 0
            goto L82
        L75:
            if (r6 == 0) goto L7b
            int r2 = r2 - r5
        L78:
            r3 = 0
            r4 = 1
            goto L7e
        L7b:
            int r2 = r3 - r4
            goto L78
        L7e:
            r0.t(r2, r3, r4, r4)
            r7 = 1
        L82:
            android.view.View r2 = r17.findFocus()
            if (r11 == r2) goto L8b
            r11.requestFocus(r1)
        L8b:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.s(int, int, int):boolean");
    }

    @Override // android.view.View
    public final void scrollTo(int i6, int i10) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            if (width >= width2 || i6 < 0) {
                i6 = 0;
            } else if (width + i6 > width2) {
                i6 = width2 - width;
            }
            if (height >= height2 || i10 < 0) {
                i10 = 0;
            } else if (height + i10 > height2) {
                i10 = height2 - height;
            }
            if (i6 == getScrollX() && i10 == getScrollY()) {
                return;
            }
            super.scrollTo(i6, i10);
        }
    }

    public void setFillViewport(boolean z7) {
        if (z7 != this.f1274m) {
            this.f1274m = z7;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z7) {
        n0.o oVar = this.f1286y;
        if (oVar.d) {
            WeakHashMap weakHashMap = s0.f8353a;
            g0.z(oVar.f8341c);
        }
        oVar.d = z7;
    }

    public void setOnScrollChangeListener(k kVar) {
        this.A = kVar;
    }

    public void setSmoothScrollingEnabled(boolean z7) {
        this.f1275n = z7;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i6) {
        return this.f1286y.g(i6, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        y(0);
    }

    public final int t(int i6, int i10, int i11, boolean z7) {
        int i12;
        int i13;
        boolean z10;
        VelocityTracker velocityTracker;
        if (i11 == 1) {
            w(2, i11);
        }
        boolean zC = this.f1286y.c(0, i6, this.f1281t, this.f1280s, i11);
        int[] iArr = this.f1281t;
        int[] iArr2 = this.f1280s;
        if (zC) {
            i12 = i6 - iArr[1];
            i13 = iArr2[1];
        } else {
            i12 = i6;
            i13 = 0;
        }
        int scrollY = getScrollY();
        int scrollRange = getScrollRange();
        int overScrollMode = getOverScrollMode();
        boolean z11 = (overScrollMode == 0 || (overScrollMode == 1 && getScrollRange() > 0)) && !z7;
        boolean z12 = q(i12, 0, scrollY, scrollRange) && !this.f1286y.f(i11);
        int scrollY2 = getScrollY() - scrollY;
        iArr[1] = 0;
        this.f1286y.d(0, scrollY2, 0, i12 - scrollY2, this.f1280s, i11, iArr);
        int i14 = i13 + iArr2[1];
        int i15 = i12 - iArr[1];
        int i16 = scrollY + i15;
        EdgeEffect edgeEffect = this.f;
        EdgeEffect edgeEffect2 = this.f1267e;
        if (i16 < 0) {
            if (z11) {
                com.bumptech.glide.d.z(edgeEffect2, (-i15) / getHeight(), i10 / getWidth());
                if (!edgeEffect.isFinished()) {
                    edgeEffect.onRelease();
                }
            }
        } else if (i16 > scrollRange && z11) {
            com.bumptech.glide.d.z(edgeEffect, i15 / getHeight(), 1.0f - (i10 / getWidth()));
            if (!edgeEffect2.isFinished()) {
                edgeEffect2.onRelease();
            }
        }
        if (edgeEffect2.isFinished() && edgeEffect.isFinished()) {
            z10 = z12;
        } else {
            postInvalidateOnAnimation();
            z10 = false;
        }
        if (z10 && i11 == 0 && (velocityTracker = this.f1273l) != null) {
            velocityTracker.clear();
        }
        if (i11 == 1) {
            y(i11);
            edgeEffect2.onRelease();
            edgeEffect.onRelease();
        }
        return i14;
    }

    public final boolean u(EdgeEffect edgeEffect, int i6) {
        if (i6 > 0) {
            return true;
        }
        float fM = com.bumptech.glide.d.m(edgeEffect) * getHeight();
        float fAbs = Math.abs(-i6) * 0.35f;
        float f = this.f1264a * 0.015f;
        double dLog = Math.log(fAbs / f);
        double d = C;
        return ((float) (Math.exp((d / (d - 1.0d)) * dLog) * ((double) f))) < fM;
    }

    public final void v(int i6, int i10, boolean z7) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f1265b > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.d.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i10 + scrollY, Math.max(0, height - height2))) - scrollY, 250);
            if (z7) {
                w(2, 1);
            } else {
                y(1);
            }
            this.f1283v = getScrollY();
            postInvalidateOnAnimation();
        } else {
            if (!this.d.isFinished()) {
                this.d.abortAnimation();
                y(1);
            }
            scrollBy(i6, i10);
        }
        this.f1265b = AnimationUtils.currentAnimationTimeMillis();
    }

    public final boolean w(int i6, int i10) {
        return this.f1286y.g(2, i10);
    }

    public final boolean x(MotionEvent motionEvent) {
        boolean z7;
        EdgeEffect edgeEffect = this.f1267e;
        if (com.bumptech.glide.d.m(edgeEffect) != 0.0f) {
            com.bumptech.glide.d.z(edgeEffect, 0.0f, motionEvent.getX() / getWidth());
            z7 = true;
        } else {
            z7 = false;
        }
        EdgeEffect edgeEffect2 = this.f;
        if (com.bumptech.glide.d.m(edgeEffect2) == 0.0f) {
            return z7;
        }
        com.bumptech.glide.d.z(edgeEffect2, 0.0f, 1.0f - (motionEvent.getX() / getWidth()));
        return true;
    }

    public final void y(int i6) {
        this.f1286y.h(i6);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1266c = new Rect();
        this.f1269h = true;
        this.f1270i = false;
        this.f1271j = null;
        this.f1272k = false;
        this.f1275n = true;
        this.f1279r = -1;
        this.f1280s = new int[2];
        this.f1281t = new int[2];
        this.B = new n0.h(getContext(), new a0.b(7, this));
        int i10 = Build.VERSION.SDK_INT;
        this.f1267e = i10 >= 31 ? f.a(context, attributeSet) : new EdgeEffect(context);
        this.f = i10 >= 31 ? f.a(context, attributeSet) : new EdgeEffect(context);
        this.f1264a = context.getResources().getDisplayMetrics().density * 160.0f * 386.0878f * 0.84f;
        this.d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f1276o = viewConfiguration.getScaledTouchSlop();
        this.f1277p = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1278q = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, E, i6, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.f1285x = new n0.r();
        this.f1286y = new n0.o(this);
        setNestedScrollingEnabled(true);
        s0.q(this, D);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6) {
        if (getChildCount() <= 0) {
            super.addView(view, i6);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i6, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
