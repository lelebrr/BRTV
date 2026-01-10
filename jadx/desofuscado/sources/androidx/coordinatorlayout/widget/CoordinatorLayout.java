package androidx.coordinatorlayout.widget;

import a0.e;
import a0.f;
import a0.g;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.customview.view.AbsSavedState;
import com.p2elite.brtv2.R;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import n0.e0;
import n0.g0;
import n0.p;
import n0.q;
import n0.r;
import n0.r1;
import n0.s0;
import p.l;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CoordinatorLayout extends ViewGroup implements p, q {

    /* renamed from: t, reason: collision with root package name */
    public static final String f1099t;

    /* renamed from: u, reason: collision with root package name */
    public static final Class[] f1100u;

    /* renamed from: v, reason: collision with root package name */
    public static final ThreadLocal f1101v;

    /* renamed from: w, reason: collision with root package name */
    public static final e f1102w;

    /* renamed from: x, reason: collision with root package name */
    public static final m0.d f1103x;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f1104a;

    /* renamed from: b, reason: collision with root package name */
    public final f f1105b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f1106c;
    public final ArrayList d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f1107e;
    public final int[] f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1108g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1109h;

    /* renamed from: i, reason: collision with root package name */
    public final int[] f1110i;

    /* renamed from: j, reason: collision with root package name */
    public View f1111j;

    /* renamed from: k, reason: collision with root package name */
    public View f1112k;

    /* renamed from: l, reason: collision with root package name */
    public a0.d f1113l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1114m;

    /* renamed from: n, reason: collision with root package name */
    public r1 f1115n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1116o;

    /* renamed from: p, reason: collision with root package name */
    public Drawable f1117p;

    /* renamed from: q, reason: collision with root package name */
    public ViewGroup.OnHierarchyChangeListener f1118q;

    /* renamed from: r, reason: collision with root package name */
    public a0.b f1119r;

    /* renamed from: s, reason: collision with root package name */
    public final r f1120s;

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new d();

        /* renamed from: c, reason: collision with root package name */
        public SparseArray f1121c;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i6 = parcel.readInt();
            int[] iArr = new int[i6];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.f1121c = new SparseArray(i6);
            for (int i10 = 0; i10 < i6; i10++) {
                this.f1121c.append(iArr[i10], parcelableArray[i10]);
            }
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            SparseArray sparseArray = this.f1121c;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i10 = 0; i10 < size; i10++) {
                iArr[i10] = this.f1121c.keyAt(i10);
                parcelableArr[i10] = (Parcelable) this.f1121c.valueAt(i10);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i6);
        }
    }

    static {
        int i6 = 0;
        Package r12 = CoordinatorLayout.class.getPackage();
        f1099t = r12 != null ? r12.getName() : null;
        f1102w = new e(i6);
        f1100u = new Class[]{Context.class, AttributeSet.class};
        f1101v = new ThreadLocal();
        f1103x = new m0.d(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.coordinatorLayoutStyle);
    }

    public static void A(int i6, View view) {
        c cVar = (c) view.getLayoutParams();
        int i10 = cVar.f1128i;
        if (i10 != i6) {
            s0.i(i6 - i10, view);
            cVar.f1128i = i6;
        }
    }

    public static void B(int i6, View view) {
        c cVar = (c) view.getLayoutParams();
        int i10 = cVar.f1129j;
        if (i10 != i6) {
            s0.j(i6 - i10, view);
            cVar.f1129j = i6;
        }
    }

    public static Rect k() {
        Rect rect = (Rect) f1103x.a();
        return rect == null ? new Rect() : rect;
    }

    public static void q(int i6, Rect rect, Rect rect2, c cVar, int i10, int i11) {
        int i12 = cVar.f1124c;
        if (i12 == 0) {
            i12 = 17;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i12, i6);
        int i13 = cVar.d;
        if ((i13 & 7) == 0) {
            i13 |= 8388611;
        }
        if ((i13 & 112) == 0) {
            i13 |= 48;
        }
        int absoluteGravity2 = Gravity.getAbsoluteGravity(i13, i6);
        int i14 = absoluteGravity & 7;
        int i15 = absoluteGravity & 112;
        int i16 = absoluteGravity2 & 7;
        int i17 = absoluteGravity2 & 112;
        int iWidth = i16 != 1 ? i16 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int iHeight = i17 != 16 ? i17 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i14 == 1) {
            iWidth -= i10 / 2;
        } else if (i14 != 5) {
            iWidth -= i10;
        }
        if (i15 == 16) {
            iHeight -= i11 / 2;
        } else if (i15 != 80) {
            iHeight -= i11;
        }
        rect2.set(iWidth, iHeight, i10 + iWidth, i11 + iHeight);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static c s(View view) {
        c cVar = (c) view.getLayoutParams();
        if (!cVar.f1123b) {
            if (view instanceof a) {
                Behavior behavior = ((a) view).getBehavior();
                if (behavior == null) {
                    Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                Behavior behavior2 = cVar.f1122a;
                if (behavior2 != behavior) {
                    if (behavior2 != null) {
                        behavior2.f();
                    }
                    cVar.f1122a = behavior;
                    cVar.f1123b = true;
                    if (behavior != null) {
                        behavior.c(cVar);
                    }
                }
                cVar.f1123b = true;
            } else {
                b bVar = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    bVar = (b) superclass.getAnnotation(b.class);
                    if (bVar != null) {
                        break;
                    }
                }
                if (bVar != null) {
                    try {
                        Behavior behavior3 = (Behavior) bVar.value().getDeclaredConstructor(null).newInstance(null);
                        Behavior behavior4 = cVar.f1122a;
                        if (behavior4 != behavior3) {
                            if (behavior4 != null) {
                                behavior4.f();
                            }
                            cVar.f1122a = behavior3;
                            cVar.f1123b = true;
                            if (behavior3 != null) {
                                behavior3.c(cVar);
                            }
                        }
                    } catch (Exception e5) {
                        Log.e("CoordinatorLayout", "Default behavior class " + bVar.value().getName() + " could not be instantiated. Did you forget a default constructor?", e5);
                    }
                }
                cVar.f1123b = true;
            }
        }
        return cVar;
    }

    public final void C() {
        WeakHashMap weakHashMap = s0.f8353a;
        if (!getFitsSystemWindows()) {
            g0.u(this, null);
            return;
        }
        if (this.f1119r == null) {
            this.f1119r = new a0.b(0, this);
        }
        g0.u(this, this.f1119r);
        setSystemUiVisibility(1280);
    }

    @Override // n0.p
    public final void a(View view, View view2, int i6, int i10) {
        r rVar = this.f1120s;
        if (i10 == 1) {
            rVar.f8347b = i6;
        } else {
            rVar.f8346a = i6;
        }
        this.f1112k = view2;
        int childCount = getChildCount();
        for (int i11 = 0; i11 < childCount; i11++) {
            ((c) getChildAt(i11).getLayoutParams()).getClass();
        }
    }

    @Override // n0.p
    public final void b(View view, int i6, int i10, int[] iArr, int i11) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z7 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.a(i11) && (behavior = cVar.f1122a) != null) {
                    int[] iArr2 = this.f1107e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.k(this, childAt, view, i6, i10, iArr2, i11);
                    iMax = i6 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i10 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z7 = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z7) {
            u(1);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof c) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j10) {
        Behavior behavior = ((c) view.getLayoutParams()).f1122a;
        if (behavior != null) {
            behavior.getClass();
        }
        return super.drawChild(canvas, view, j10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1117p;
        if ((drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState)) {
            invalidate();
        }
    }

    @Override // n0.p
    public final void f(int i6, View view) {
        r rVar = this.f1120s;
        if (i6 == 1) {
            rVar.f8347b = 0;
        } else {
            rVar.f8346a = 0;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            c cVar = (c) childAt.getLayoutParams();
            if (cVar.a(i6)) {
                Behavior behavior = cVar.f1122a;
                if (behavior != null) {
                    behavior.q(this, childAt, view, i6);
                }
                if (i6 == 0) {
                    cVar.f1132m = false;
                } else if (i6 == 1) {
                    cVar.f1133n = false;
                }
                cVar.f1134o = false;
            }
        }
        this.f1112k = null;
    }

    @Override // n0.q
    public final void g(View view, int i6, int i10, int i11, int i12, int i13, int[] iArr) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean z7 = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.a(i13) && (behavior = cVar.f1122a) != null) {
                    int[] iArr2 = this.f1107e;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    behavior.l(this, childAt, i10, i11, i12, iArr2);
                    iMax = i11 > 0 ? Math.max(iMax, iArr2[0]) : Math.min(iMax, iArr2[0]);
                    iMax2 = i12 > 0 ? Math.max(iMax2, iArr2[1]) : Math.min(iMax2, iArr2[1]);
                    z7 = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + iMax2;
        if (z7) {
            u(1);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new c();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    public final List<View> getDependencySortedChildren() {
        y();
        return Collections.unmodifiableList(this.f1104a);
    }

    public final r1 getLastWindowInsets() {
        return this.f1115n;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        r rVar = this.f1120s;
        return rVar.f8347b | rVar.f8346a;
    }

    public Drawable getStatusBarBackground() {
        return this.f1117p;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    @Override // n0.p
    public final void i(View view, int i6, int i10, int i11, int i12, int i13) {
        g(view, i6, i10, i11, i12, 0, this.f);
    }

    @Override // n0.p
    public final boolean j(View view, View view2, int i6, int i10) {
        int childCount = getChildCount();
        boolean z7 = false;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                Behavior behavior = cVar.f1122a;
                if (behavior != null) {
                    boolean zP = behavior.p(this, childAt, view, view2, i6, i10);
                    z7 |= zP;
                    if (i10 == 0) {
                        cVar.f1132m = zP;
                    } else if (i10 == 1) {
                        cVar.f1133n = zP;
                    }
                } else if (i10 == 0) {
                    cVar.f1132m = false;
                } else if (i10 == 1) {
                    cVar.f1133n = false;
                }
            }
        }
        return z7;
    }

    public final void l(c cVar, Rect rect, int i6, int i10) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) cVar).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i6) - ((ViewGroup.MarginLayoutParams) cVar).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) cVar).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i10) - ((ViewGroup.MarginLayoutParams) cVar).bottomMargin));
        rect.set(iMax, iMax2, i6 + iMax, i10 + iMax2);
    }

    public final void m(View view) {
        List list = (List) ((l) this.f1105b.f39c).get(view);
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i6 = 0; i6 < list.size(); i6++) {
            View view2 = (View) list.get(i6);
            Behavior behavior = ((c) view2.getLayoutParams()).f1122a;
            if (behavior != null) {
                behavior.d(this, view2, view);
            }
        }
    }

    public final void n(View view, Rect rect, boolean z7) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z7) {
            p(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public final ArrayList o(View view) {
        l lVar = (l) this.f1105b.f39c;
        int i6 = lVar.f8858c;
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < i6; i10++) {
            ArrayList arrayList2 = (ArrayList) lVar.j(i10);
            if (arrayList2 != null && arrayList2.contains(view)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lVar.f(i10));
            }
        }
        ArrayList arrayList3 = this.d;
        arrayList3.clear();
        if (arrayList != null) {
            arrayList3.addAll(arrayList);
        }
        return arrayList3;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i6 = 0;
        z(false);
        if (this.f1114m) {
            if (this.f1113l == null) {
                this.f1113l = new a0.d(i6, this);
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1113l);
        }
        if (this.f1115n == null) {
            WeakHashMap weakHashMap = s0.f8353a;
            if (getFitsSystemWindows()) {
                e0.c(this);
            }
        }
        this.f1109h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        z(false);
        if (this.f1114m && this.f1113l != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1113l);
        }
        View view = this.f1112k;
        if (view != null) {
            f(0, view);
        }
        this.f1109h = false;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1116o || this.f1117p == null) {
            return;
        }
        r1 r1Var = this.f1115n;
        int iD = r1Var != null ? r1Var.d() : 0;
        if (iD > 0) {
            this.f1117p.setBounds(0, 0, getWidth(), iD);
            this.f1117p.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z(true);
        }
        boolean zX = x(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            z(true);
        }
        return zX;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        Behavior behavior;
        WeakHashMap weakHashMap = s0.f8353a;
        int layoutDirection = getLayoutDirection();
        ArrayList arrayList = this.f1104a;
        int size = arrayList.size();
        for (int i13 = 0; i13 < size; i13++) {
            View view = (View) arrayList.get(i13);
            if (view.getVisibility() != 8 && ((behavior = ((c) view.getLayoutParams()).f1122a) == null || !behavior.h(this, view, layoutDirection))) {
                v(layoutDirection, view);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x0159  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0189  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r32, int r33) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f3, boolean z7) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.a(0)) {
                    Behavior behavior = cVar.f1122a;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f3) {
        Behavior behavior;
        int childCount = getChildCount();
        boolean zJ = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.a(0) && (behavior = cVar.f1122a) != null) {
                    zJ |= behavior.j(view);
                }
            }
        }
        return zJ;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i6, int i10, int[] iArr) {
        b(view, i6, i10, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i6, int i10, int i11, int i12) {
        i(view, i6, i10, i11, i12, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i6) {
        a(view, view2, i6, 0);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f1319a);
        SparseArray sparseArray = savedState.f1121c;
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            int id = childAt.getId();
            Behavior behavior = s(childAt).f1122a;
            if (id != -1 && behavior != null && (parcelable2 = (Parcelable) sparseArray.get(id)) != null) {
                behavior.n(childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableO;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        SparseArray sparseArray = new SparseArray();
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            int id = childAt.getId();
            Behavior behavior = ((c) childAt.getLayoutParams()).f1122a;
            if (id != -1 && behavior != null && (parcelableO = behavior.o(childAt)) != null) {
                sparseArray.append(id, parcelableO);
            }
        }
        savedState.f1121c = sparseArray;
        return savedState;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i6) {
        return j(view, view2, i6, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        f(0, view);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0015 A[PHI: r3
  0x0015: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:10:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.f1111j
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L17
            boolean r3 = r0.x(r1, r4)
            if (r3 == 0) goto L15
            goto L18
        L15:
            r6 = 0
            goto L2a
        L17:
            r3 = 0
        L18:
            android.view.View r6 = r0.f1111j
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.c r6 = (androidx.coordinatorlayout.widget.c) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior r6 = r6.f1122a
            if (r6 == 0) goto L15
            android.view.View r7 = r0.f1111j
            boolean r6 = r6.r(r0, r7, r1)
        L2a:
            android.view.View r7 = r0.f1111j
            r8 = 0
            if (r7 != 0) goto L35
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L48
        L35:
            if (r3 == 0) goto L48
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L48:
            if (r8 == 0) goto L4d
            r8.recycle()
        L4d:
            if (r2 == r4) goto L52
            r1 = 3
            if (r2 != r1) goto L55
        L52:
            r0.z(r5)
        L55:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p(View view, Rect rect) {
        ThreadLocal threadLocal = g.f41a;
        rect.set(0, 0, view.getWidth(), view.getHeight());
        ThreadLocal threadLocal2 = g.f41a;
        Matrix matrix = (Matrix) threadLocal2.get();
        if (matrix == null) {
            matrix = new Matrix();
            threadLocal2.set(matrix);
        } else {
            matrix.reset();
        }
        g.a(this, view, matrix);
        ThreadLocal threadLocal3 = g.f42b;
        RectF rectF = (RectF) threadLocal3.get();
        if (rectF == null) {
            rectF = new RectF();
            threadLocal3.set(rectF);
        }
        rectF.set(rect);
        matrix.mapRect(rectF);
        rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
    }

    public final int r(int i6) {
        int[] iArr = this.f1110i;
        if (iArr == null) {
            Log.e("CoordinatorLayout", "No keylines defined for " + this + " - attempted index lookup " + i6);
            return 0;
        }
        if (i6 >= 0 && i6 < iArr.length) {
            return iArr[i6];
        }
        Log.e("CoordinatorLayout", "Keyline index " + i6 + " out of range for " + this);
        return 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z7) {
        Behavior behavior = ((c) view.getLayoutParams()).f1122a;
        if (behavior == null || !behavior.m(this, view, rect, z7)) {
            return super.requestChildRectangleOnScreen(view, rect, z7);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z7) {
        super.requestDisallowInterceptTouchEvent(z7);
        if (!z7 || this.f1108g) {
            return;
        }
        z(false);
        this.f1108g = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z7) {
        super.setFitsSystemWindows(z7);
        C();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1118q = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Drawable drawable2 = this.f1117p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f1117p = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f1117p.setState(getDrawableState());
                }
                Drawable drawable3 = this.f1117p;
                WeakHashMap weakHashMap = s0.f8353a;
                n5.d.Q(drawable3, getLayoutDirection());
                this.f1117p.setVisible(getVisibility() == 0, false);
                this.f1117p.setCallback(this);
            }
            WeakHashMap weakHashMap2 = s0.f8353a;
            postInvalidateOnAnimation();
        }
    }

    public void setStatusBarBackgroundColor(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarBackground(new ColorDrawable(i6));
    }

    public void setStatusBarBackgroundResource(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        setStatusBarBackground(i6 != 0 ? d0.a.b(getContext(), i6) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i6) {
        super.setVisibility(i6);
        boolean z7 = i6 == 0;
        Drawable drawable = this.f1117p;
        if (drawable == null || drawable.isVisible() == z7) {
            return;
        }
        this.f1117p.setVisible(z7, false);
    }

    public final boolean t(View view, int i6, int i10) {
        m0.d dVar = f1103x;
        Rect rectK = k();
        p(view, rectK);
        try {
            return rectK.contains(i6, i10);
        } finally {
            rectK.setEmpty();
            dVar.c(rectK);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0044 A[EDGE_INSN: B:146:0x0044->B:10:0x0044 BREAK  A[LOOP:2: B:122:0x02d0->B:139:0x0309], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void u(int r26) {
        /*
            Method dump skipped, instructions count: 820
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.u(int):void");
    }

    public final void v(int i6, View view) {
        Rect rectK;
        Rect rectK2;
        c cVar = (c) view.getLayoutParams();
        View view2 = cVar.f1130k;
        if (view2 == null && cVar.f != -1) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        m0.d dVar = f1103x;
        if (view2 != null) {
            rectK = k();
            rectK2 = k();
            try {
                p(view2, rectK);
                c cVar2 = (c) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                q(i6, rectK, rectK2, cVar2, measuredWidth, measuredHeight);
                l(cVar2, rectK2, measuredWidth, measuredHeight);
                view.layout(rectK2.left, rectK2.top, rectK2.right, rectK2.bottom);
                return;
            } finally {
                rectK.setEmpty();
                dVar.c(rectK);
                rectK2.setEmpty();
                dVar.c(rectK2);
            }
        }
        int i10 = cVar.f1125e;
        if (i10 < 0) {
            c cVar3 = (c) view.getLayoutParams();
            rectK = k();
            rectK.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) cVar3).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) cVar3).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) cVar3).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) cVar3).bottomMargin);
            if (this.f1115n != null) {
                WeakHashMap weakHashMap = s0.f8353a;
                if (getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    rectK.left = this.f1115n.b() + rectK.left;
                    rectK.top = this.f1115n.d() + rectK.top;
                    rectK.right -= this.f1115n.c();
                    rectK.bottom -= this.f1115n.a();
                }
            }
            rectK2 = k();
            int i11 = cVar3.f1124c;
            if ((i11 & 7) == 0) {
                i11 |= 8388611;
            }
            if ((i11 & 112) == 0) {
                i11 |= 48;
            }
            Gravity.apply(i11, view.getMeasuredWidth(), view.getMeasuredHeight(), rectK, rectK2, i6);
            view.layout(rectK2.left, rectK2.top, rectK2.right, rectK2.bottom);
            return;
        }
        c cVar4 = (c) view.getLayoutParams();
        int i12 = cVar4.f1124c;
        if (i12 == 0) {
            i12 = 8388661;
        }
        int absoluteGravity = Gravity.getAbsoluteGravity(i12, i6);
        int i13 = absoluteGravity & 7;
        int i14 = absoluteGravity & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth2 = view.getMeasuredWidth();
        int measuredHeight2 = view.getMeasuredHeight();
        if (i6 == 1) {
            i10 = width - i10;
        }
        int iR = r(i10) - measuredWidth2;
        if (i13 == 1) {
            iR += measuredWidth2 / 2;
        } else if (i13 == 5) {
            iR += measuredWidth2;
        }
        int i15 = i14 != 16 ? i14 != 80 ? 0 : measuredHeight2 : measuredHeight2 / 2;
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) cVar4).leftMargin, Math.min(iR, ((width - getPaddingRight()) - measuredWidth2) - ((ViewGroup.MarginLayoutParams) cVar4).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) cVar4).topMargin, Math.min(i15, ((height - getPaddingBottom()) - measuredHeight2) - ((ViewGroup.MarginLayoutParams) cVar4).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth2 + iMax, measuredHeight2 + iMax2);
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1117p;
    }

    public final void w(int i6, int i10, int i11, View view) {
        measureChildWithMargins(view, i6, i10, i11, 0);
    }

    public final boolean x(MotionEvent motionEvent, int i6) {
        int actionMasked = motionEvent.getActionMasked();
        ArrayList arrayList = this.f1106c;
        arrayList.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i10 = childCount - 1; i10 >= 0; i10--) {
            arrayList.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i10) : i10));
        }
        e eVar = f1102w;
        if (eVar != null) {
            Collections.sort(arrayList, eVar);
        }
        int size = arrayList.size();
        MotionEvent motionEventObtain = null;
        boolean zG = false;
        for (int i11 = 0; i11 < size; i11++) {
            View view = (View) arrayList.get(i11);
            Behavior behavior = ((c) view.getLayoutParams()).f1122a;
            if (zG && actionMasked != 0) {
                if (behavior != null) {
                    if (motionEventObtain == null) {
                        long jUptimeMillis = SystemClock.uptimeMillis();
                        motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    }
                    if (i6 == 0) {
                        behavior.g(this, view, motionEventObtain);
                    } else if (i6 == 1) {
                        behavior.r(this, view, motionEventObtain);
                    }
                }
            } else if (!zG && behavior != null) {
                if (i6 == 0) {
                    zG = behavior.g(this, view, motionEvent);
                } else if (i6 == 1) {
                    zG = behavior.r(this, view, motionEvent);
                }
                if (zG) {
                    this.f1111j = view;
                }
            }
        }
        arrayList.clear();
        return zG;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void y() {
        /*
            Method dump skipped, instructions count: 402
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.y():void");
    }

    public final void z(boolean z7) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            Behavior behavior = ((c) childAt.getLayoutParams()).f1122a;
            if (behavior != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z7) {
                    behavior.g(this, childAt, motionEventObtain);
                } else {
                    behavior.r(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i10 = 0; i10 < childCount; i10++) {
            ((c) getChildAt(i10).getLayoutParams()).getClass();
        }
        this.f1111j = null;
        this.f1108g = false;
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(context, attributeSet, i6);
        this.f1104a = new ArrayList();
        this.f1105b = new f(0);
        this.f1106c = new ArrayList();
        this.d = new ArrayList();
        this.f1107e = new int[2];
        this.f = new int[2];
        this.f1120s = new r();
        int[] iArr = z.a.f11438a;
        TypedArray typedArrayObtainStyledAttributes = i6 == 0 ? context.obtainStyledAttributes(attributeSet, iArr, 0, R.style.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i6 == 0) {
                saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, R.style.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, i6, 0);
            }
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            int[] intArray = resources.getIntArray(resourceId);
            this.f1110i = intArray;
            float f = resources.getDisplayMetrics().density;
            int length = intArray.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.f1110i[i10] = (int) (r12[i10] * f);
            }
        }
        this.f1117p = typedArrayObtainStyledAttributes.getDrawable(1);
        typedArrayObtainStyledAttributes.recycle();
        C();
        super.setOnHierarchyChangeListener(new a0.c(this));
        WeakHashMap weakHashMap = s0.f8353a;
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c ? new c((c) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams);
    }

    /* compiled from: MyApplication */
    public static abstract class Behavior<V extends View> {
        public Behavior(Context context, AttributeSet attributeSet) {
        }

        public boolean a(View view, Rect rect) {
            return false;
        }

        public boolean b(View view, View view2) {
            return false;
        }

        public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return false;
        }

        public boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public boolean h(CoordinatorLayout coordinatorLayout, View view, int i6) {
            return false;
        }

        public boolean i(CoordinatorLayout coordinatorLayout, View view, int i6, int i10, int i11) {
            return false;
        }

        public boolean j(View view) {
            return false;
        }

        public void l(CoordinatorLayout coordinatorLayout, View view, int i6, int i10, int i11, int[] iArr) {
            iArr[0] = iArr[0] + i10;
            iArr[1] = iArr[1] + i11;
        }

        public boolean m(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z7) {
            return false;
        }

        public Parcelable o(View view) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        public boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i6, int i10) {
            return false;
        }

        public boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
            return false;
        }

        public void f() {
        }

        public void c(c cVar) {
        }

        public void e(CoordinatorLayout coordinatorLayout, View view) {
        }

        public void n(View view, Parcelable parcelable) {
        }

        public void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i6) {
        }

        public void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i6, int i10, int[] iArr, int i11) {
        }
    }
}
