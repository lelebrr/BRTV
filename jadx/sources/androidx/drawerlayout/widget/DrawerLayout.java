package androidx.drawerlayout.widget;

import a.e;
import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import androidx.core.widget.i;
import androidx.customview.view.AbsSavedState;
import java.util.ArrayList;
import java.util.WeakHashMap;
import n0.g0;
import n0.r1;
import n0.s0;
import s2.c;
import v0.d;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class DrawerLayout extends ViewGroup {
    public static final int[] C = {R.attr.colorPrimaryDark};
    public static final int[] D = {R.attr.layout_gravity};
    public static final boolean E;
    public static final boolean F;
    public static final boolean G;
    public Matrix A;
    public final c B;

    /* renamed from: a, reason: collision with root package name */
    public final i f1334a;

    /* renamed from: b, reason: collision with root package name */
    public float f1335b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1336c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public float f1337e;
    public final Paint f;

    /* renamed from: g, reason: collision with root package name */
    public final d f1338g;

    /* renamed from: h, reason: collision with root package name */
    public final d f1339h;

    /* renamed from: i, reason: collision with root package name */
    public final b f1340i;

    /* renamed from: j, reason: collision with root package name */
    public final b f1341j;

    /* renamed from: k, reason: collision with root package name */
    public int f1342k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f1343l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f1344m;

    /* renamed from: n, reason: collision with root package name */
    public int f1345n;

    /* renamed from: o, reason: collision with root package name */
    public int f1346o;

    /* renamed from: p, reason: collision with root package name */
    public int f1347p;

    /* renamed from: q, reason: collision with root package name */
    public int f1348q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f1349r;

    /* renamed from: s, reason: collision with root package name */
    public ArrayList f1350s;

    /* renamed from: t, reason: collision with root package name */
    public float f1351t;

    /* renamed from: u, reason: collision with root package name */
    public float f1352u;

    /* renamed from: v, reason: collision with root package name */
    public Drawable f1353v;

    /* renamed from: w, reason: collision with root package name */
    public WindowInsets f1354w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f1355x;

    /* renamed from: y, reason: collision with root package name */
    public final ArrayList f1356y;

    /* renamed from: z, reason: collision with root package name */
    public Rect f1357z;

    /* compiled from: MyApplication */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a, reason: collision with root package name */
        public int f1358a;

        /* renamed from: b, reason: collision with root package name */
        public float f1359b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1360c;
        public int d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1358a = 0;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.D);
            this.f1358a = typedArrayObtainStyledAttributes.getInt(0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* compiled from: MyApplication */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();

        /* renamed from: c, reason: collision with root package name */
        public int f1361c;
        public int d;

        /* renamed from: e, reason: collision with root package name */
        public int f1362e;
        public int f;

        /* renamed from: g, reason: collision with root package name */
        public int f1363g;

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1361c = 0;
            this.f1361c = parcel.readInt();
            this.d = parcel.readInt();
            this.f1362e = parcel.readInt();
            this.f = parcel.readInt();
            this.f1363g = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            super.writeToParcel(parcel, i6);
            parcel.writeInt(this.f1361c);
            parcel.writeInt(this.d);
            parcel.writeInt(this.f1362e);
            parcel.writeInt(this.f);
            parcel.writeInt(this.f1363g);
        }
    }

    static {
        int i6 = Build.VERSION.SDK_INT;
        E = true;
        F = true;
        G = i6 >= 29;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.drawerLayoutStyle);
    }

    public static boolean i(View view) {
        WeakHashMap weakHashMap = s0.f8353a;
        return (view.getImportantForAccessibility() == 4 || view.getImportantForAccessibility() == 2) ? false : true;
    }

    public static boolean j(View view) {
        return ((LayoutParams) view.getLayoutParams()).f1358a == 0;
    }

    public static boolean k(View view) {
        if (l(view)) {
            return (((LayoutParams) view.getLayoutParams()).d & 1) == 1;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    public static boolean l(View view) {
        int i6 = ((LayoutParams) view.getLayoutParams()).f1358a;
        WeakHashMap weakHashMap = s0.f8353a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i6, view.getLayoutDirection());
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    public final boolean a(int i6, View view) {
        return (h(view) & i6) == i6;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i6, int i10) {
        ArrayList arrayList2;
        if (getDescendantFocusability() == 393216) {
            return;
        }
        int childCount = getChildCount();
        int i11 = 0;
        boolean z7 = false;
        while (true) {
            arrayList2 = this.f1356y;
            if (i11 >= childCount) {
                break;
            }
            View childAt = getChildAt(i11);
            if (!l(childAt)) {
                arrayList2.add(childAt);
            } else if (k(childAt)) {
                childAt.addFocusables(arrayList, i6, i10);
                z7 = true;
            }
            i11++;
        }
        if (!z7) {
            int size = arrayList2.size();
            for (int i12 = 0; i12 < size; i12++) {
                View view = (View) arrayList2.get(i12);
                if (view.getVisibility() == 0) {
                    view.addFocusables(arrayList, i6, i10);
                }
            }
        }
        arrayList2.clear();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i6, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i6, layoutParams);
        if (e() != null || l(view)) {
            WeakHashMap weakHashMap = s0.f8353a;
            view.setImportantForAccessibility(4);
        } else {
            WeakHashMap weakHashMap2 = s0.f8353a;
            view.setImportantForAccessibility(1);
        }
        if (E) {
            return;
        }
        s0.q(view, this.f1334a);
    }

    public final void b(View view) {
        if (!l(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f1344m) {
            layoutParams.f1359b = 0.0f;
            layoutParams.d = 0;
        } else {
            layoutParams.d |= 4;
            if (a(3, view)) {
                this.f1338g.s(view, -view.getWidth(), view.getTop());
            } else {
                this.f1339h.s(view, getWidth(), view.getTop());
            }
        }
        invalidate();
    }

    public final void c(boolean z7) {
        boolean zS;
        int childCount = getChildCount();
        boolean z10 = false;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (l(childAt) && (!z7 || layoutParams.f1360c)) {
                int width = childAt.getWidth();
                if (a(3, childAt)) {
                    int top = childAt.getTop();
                    zS = this.f1338g.s(childAt, -width, top);
                } else {
                    zS = this.f1339h.s(childAt, getWidth(), childAt.getTop());
                }
                z10 |= zS;
                layoutParams.f1360c = false;
            }
        }
        b bVar = this.f1340i;
        bVar.f.removeCallbacks(bVar.f1365e);
        b bVar2 = this.f1341j;
        bVar2.f.removeCallbacks(bVar2.f1365e);
        if (z10) {
            invalidate();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void computeScroll() {
        int childCount = getChildCount();
        float fMax = 0.0f;
        for (int i6 = 0; i6 < childCount; i6++) {
            fMax = Math.max(fMax, ((LayoutParams) getChildAt(i6).getLayoutParams()).f1359b);
        }
        this.f1337e = fMax;
        boolean zG = this.f1338g.g();
        boolean zG2 = this.f1339h.g();
        if (zG || zG2) {
            WeakHashMap weakHashMap = s0.f8353a;
            postInvalidateOnAnimation();
        }
    }

    public final View d(int i6) {
        WeakHashMap weakHashMap = s0.f8353a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i6, getLayoutDirection()) & 7;
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if ((h(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    @Override // android.view.View
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean zDispatchGenericMotionEvent;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f1337e <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x10 = motionEvent.getX();
        float y7 = motionEvent.getY();
        for (int i6 = childCount - 1; i6 >= 0; i6--) {
            View childAt = getChildAt(i6);
            if (this.f1357z == null) {
                this.f1357z = new Rect();
            }
            childAt.getHitRect(this.f1357z);
            if (this.f1357z.contains((int) x10, (int) y7) && !j(childAt)) {
                if (childAt.getMatrix().isIdentity()) {
                    float scrollX = getScrollX() - childAt.getLeft();
                    float scrollY = getScrollY() - childAt.getTop();
                    motionEvent.offsetLocation(scrollX, scrollY);
                    zDispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX, -scrollY);
                } else {
                    float scrollX2 = getScrollX() - childAt.getLeft();
                    float scrollY2 = getScrollY() - childAt.getTop();
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.offsetLocation(scrollX2, scrollY2);
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.A == null) {
                            this.A = new Matrix();
                        }
                        matrix.invert(this.A);
                        motionEventObtain.transform(this.A);
                    }
                    zDispatchGenericMotionEvent = childAt.dispatchGenericMotionEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                if (zDispatchGenericMotionEvent) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j10) {
        Drawable background;
        int height = getHeight();
        boolean zJ = j(view);
        int width = getWidth();
        int iSave = canvas.save();
        int i6 = 0;
        if (zJ) {
            int childCount = getChildCount();
            int i10 = 0;
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt != view && childAt.getVisibility() == 0 && (background = childAt.getBackground()) != null && background.getOpacity() == -1 && l(childAt) && childAt.getHeight() >= height) {
                    if (a(3, childAt)) {
                        int right = childAt.getRight();
                        if (right > i10) {
                            i10 = right;
                        }
                    } else {
                        int left = childAt.getLeft();
                        if (left < width) {
                            width = left;
                        }
                    }
                }
            }
            canvas.clipRect(i10, 0, width, getHeight());
            i6 = i10;
        }
        boolean zDrawChild = super.drawChild(canvas, view, j10);
        canvas.restoreToCount(iSave);
        float f = this.f1337e;
        if (f > 0.0f && zJ) {
            int i12 = this.d;
            Paint paint = this.f;
            paint.setColor((((int) ((((-16777216) & i12) >>> 24) * f)) << 24) | (i12 & 16777215));
            canvas.drawRect(i6, 0.0f, width, getHeight(), paint);
        }
        return zDrawChild;
    }

    public final View e() {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if ((((LayoutParams) childAt.getLayoutParams()).d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    public final View f() {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (l(childAt)) {
                if (!l(childAt)) {
                    throw new IllegalArgumentException("View " + childAt + " is not a drawer");
                }
                if (((LayoutParams) childAt.getLayoutParams()).f1359b > 0.0f) {
                    return childAt;
                }
            }
        }
        return null;
    }

    public final int g(View view) {
        if (!l(view)) {
            throw new IllegalArgumentException("View " + view + " is not a drawer");
        }
        int i6 = ((LayoutParams) view.getLayoutParams()).f1358a;
        WeakHashMap weakHashMap = s0.f8353a;
        int layoutDirection = getLayoutDirection();
        if (i6 == 3) {
            int i10 = this.f1345n;
            if (i10 != 3) {
                return i10;
            }
            int i11 = layoutDirection == 0 ? this.f1347p : this.f1348q;
            if (i11 != 3) {
                return i11;
            }
        } else if (i6 == 5) {
            int i12 = this.f1346o;
            if (i12 != 3) {
                return i12;
            }
            int i13 = layoutDirection == 0 ? this.f1348q : this.f1347p;
            if (i13 != 3) {
                return i13;
            }
        } else if (i6 == 8388611) {
            int i14 = this.f1347p;
            if (i14 != 3) {
                return i14;
            }
            int i15 = layoutDirection == 0 ? this.f1345n : this.f1346o;
            if (i15 != 3) {
                return i15;
            }
        } else if (i6 == 8388613) {
            int i16 = this.f1348q;
            if (i16 != 3) {
                return i16;
            }
            int i17 = layoutDirection == 0 ? this.f1346o : this.f1345n;
            if (i17 != 3) {
                return i17;
            }
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        LayoutParams layoutParams = new LayoutParams(-1, -1);
        layoutParams.f1358a = 0;
        return layoutParams;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            LayoutParams layoutParams2 = (LayoutParams) layoutParams;
            LayoutParams layoutParams3 = new LayoutParams(layoutParams2);
            layoutParams3.f1358a = 0;
            layoutParams3.f1358a = layoutParams2.f1358a;
            return layoutParams3;
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            LayoutParams layoutParams4 = new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
            layoutParams4.f1358a = 0;
            return layoutParams4;
        }
        LayoutParams layoutParams5 = new LayoutParams(layoutParams);
        layoutParams5.f1358a = 0;
        return layoutParams5;
    }

    public float getDrawerElevation() {
        if (F) {
            return this.f1335b;
        }
        return 0.0f;
    }

    public Drawable getStatusBarBackgroundDrawable() {
        return this.f1353v;
    }

    public final int h(View view) {
        int i6 = ((LayoutParams) view.getLayoutParams()).f1358a;
        WeakHashMap weakHashMap = s0.f8353a;
        return Gravity.getAbsoluteGravity(i6, getLayoutDirection());
    }

    public final void m(View view) {
        if (!l(view)) {
            throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (this.f1344m) {
            layoutParams.f1359b = 1.0f;
            layoutParams.d = 1;
            q(view, true);
            p(view);
        } else {
            layoutParams.d |= 2;
            if (a(3, view)) {
                this.f1338g.s(view, 0, view.getTop());
            } else {
                this.f1339h.s(view, getWidth() - view.getWidth(), view.getTop());
            }
        }
        invalidate();
    }

    public final void n(int i6, int i10) {
        View viewD;
        WeakHashMap weakHashMap = s0.f8353a;
        int absoluteGravity = Gravity.getAbsoluteGravity(i10, getLayoutDirection());
        if (i10 == 3) {
            this.f1345n = i6;
        } else if (i10 == 5) {
            this.f1346o = i6;
        } else if (i10 == 8388611) {
            this.f1347p = i6;
        } else if (i10 == 8388613) {
            this.f1348q = i6;
        }
        if (i6 != 0) {
            (absoluteGravity == 3 ? this.f1338g : this.f1339h).a();
        }
        if (i6 != 1) {
            if (i6 == 2 && (viewD = d(absoluteGravity)) != null) {
                m(viewD);
                return;
            }
            return;
        }
        View viewD2 = d(absoluteGravity);
        if (viewD2 != null) {
            b(viewD2);
        }
    }

    public final void o(View view, float f) {
        int size;
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f == layoutParams.f1359b) {
            return;
        }
        layoutParams.f1359b = f;
        if (this.f1350s != null && r2.size() - 1 >= 0) {
            throw e.k(size, this.f1350s);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1344m = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1344m = true;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1355x || this.f1353v == null) {
            return;
        }
        WindowInsets windowInsets = this.f1354w;
        int systemWindowInsetTop = windowInsets != null ? windowInsets.getSystemWindowInsetTop() : 0;
        if (systemWindowInsetTop > 0) {
            this.f1353v.setBounds(0, 0, getWidth(), systemWindowInsetTop);
            this.f1353v.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0061  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onInterceptTouchEvent(android.view.MotionEvent r9) {
        /*
            r8 = this;
            int r0 = r9.getActionMasked()
            v0.d r1 = r8.f1338g
            boolean r2 = r1.r(r9)
            v0.d r3 = r8.f1339h
            boolean r3 = r3.r(r9)
            r2 = r2 | r3
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L68
            if (r0 == r3) goto L61
            r9 = 2
            if (r0 == r9) goto L1e
            r9 = 3
            if (r0 == r9) goto L61
            goto L66
        L1e:
            float[] r9 = r1.d
            int r9 = r9.length
            r0 = 0
        L22:
            if (r0 >= r9) goto L66
            int r5 = r1.f10640k
            int r6 = r3 << r0
            r5 = r5 & r6
            if (r5 == 0) goto L5e
            float[] r5 = r1.f
            r5 = r5[r0]
            float[] r6 = r1.d
            r6 = r6[r0]
            float r5 = r5 - r6
            float[] r6 = r1.f10636g
            r6 = r6[r0]
            float[] r7 = r1.f10635e
            r7 = r7[r0]
            float r6 = r6 - r7
            float r5 = r5 * r5
            float r6 = r6 * r6
            float r6 = r6 + r5
            int r5 = r1.f10633b
            int r5 = r5 * r5
            float r5 = (float) r5
            int r5 = (r6 > r5 ? 1 : (r6 == r5 ? 0 : -1))
            if (r5 <= 0) goto L5e
            androidx.drawerlayout.widget.b r9 = r8.f1340i
            s4.h r0 = r9.f1365e
            androidx.drawerlayout.widget.DrawerLayout r9 = r9.f
            r9.removeCallbacks(r0)
            androidx.drawerlayout.widget.b r9 = r8.f1341j
            s4.h r0 = r9.f1365e
            androidx.drawerlayout.widget.DrawerLayout r9 = r9.f
            r9.removeCallbacks(r0)
            goto L66
        L5e:
            int r0 = r0 + 1
            goto L22
        L61:
            r8.c(r3)
            r8.f1349r = r4
        L66:
            r9 = 0
            goto L8e
        L68:
            float r0 = r9.getX()
            float r9 = r9.getY()
            r8.f1351t = r0
            r8.f1352u = r9
            float r5 = r8.f1337e
            r6 = 0
            int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
            if (r5 <= 0) goto L8b
            int r0 = (int) r0
            int r9 = (int) r9
            android.view.View r9 = r1.h(r0, r9)
            if (r9 == 0) goto L8b
            boolean r9 = j(r9)
            if (r9 == 0) goto L8b
            r9 = 1
            goto L8c
        L8b:
            r9 = 0
        L8c:
            r8.f1349r = r4
        L8e:
            if (r2 != 0) goto Lb1
            if (r9 != 0) goto Lb1
            int r9 = r8.getChildCount()
            r0 = 0
        L97:
            if (r0 >= r9) goto Lab
            android.view.View r1 = r8.getChildAt(r0)
            android.view.ViewGroup$LayoutParams r1 = r1.getLayoutParams()
            androidx.drawerlayout.widget.DrawerLayout$LayoutParams r1 = (androidx.drawerlayout.widget.DrawerLayout.LayoutParams) r1
            boolean r1 = r1.f1360c
            if (r1 == 0) goto La8
            goto Lb1
        La8:
            int r0 = r0 + 1
            goto L97
        Lab:
            boolean r9 = r8.f1349r
            if (r9 == 0) goto Lb0
            goto Lb1
        Lb0:
            r3 = 0
        Lb1:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i6, KeyEvent keyEvent) {
        if (i6 != 4 || f() == null) {
            return super.onKeyDown(i6, keyEvent);
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i6, KeyEvent keyEvent) {
        if (i6 != 4) {
            return super.onKeyUp(i6, keyEvent);
        }
        View viewF = f();
        if (viewF != null && g(viewF) == 0) {
            c(false);
        }
        return viewF != null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        WindowInsets rootWindowInsets;
        float f;
        int i13;
        this.f1343l = true;
        int i14 = i11 - i6;
        int childCount = getChildCount();
        for (int i15 = 0; i15 < childCount; i15++) {
            View childAt = getChildAt(i15);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (j(childAt)) {
                    int i16 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i16, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i16, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (a(3, childAt)) {
                        float f3 = measuredWidth;
                        i13 = (-measuredWidth) + ((int) (layoutParams.f1359b * f3));
                        f = (measuredWidth + i13) / f3;
                    } else {
                        float f4 = measuredWidth;
                        f = (i14 - r11) / f4;
                        i13 = i14 - ((int) (layoutParams.f1359b * f4));
                    }
                    boolean z10 = f != layoutParams.f1359b;
                    int i17 = layoutParams.f1358a & 112;
                    if (i17 == 16) {
                        int i18 = i12 - i10;
                        int i19 = (i18 - measuredHeight) / 2;
                        int i20 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i19 < i20) {
                            i19 = i20;
                        } else {
                            int i21 = i19 + measuredHeight;
                            int i22 = i18 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i21 > i22) {
                                i19 = i22 - measuredHeight;
                            }
                        }
                        childAt.layout(i13, i19, measuredWidth + i13, measuredHeight + i19);
                    } else if (i17 != 80) {
                        int i23 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i13, i23, measuredWidth + i13, measuredHeight + i23);
                    } else {
                        int i24 = i12 - i10;
                        childAt.layout(i13, (i24 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i13, i24 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z10) {
                        o(childAt, f);
                    }
                    int i25 = layoutParams.f1359b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i25) {
                        childAt.setVisibility(i25);
                    }
                }
            }
        }
        if (G && (rootWindowInsets = getRootWindowInsets()) != null) {
            f0.c cVarJ = r1.h(rootWindowInsets, null).f8352a.j();
            d dVar = this.f1338g;
            dVar.f10644o = Math.max(dVar.f10645p, cVarJ.f6754a);
            d dVar2 = this.f1339h;
            dVar2.f10644o = Math.max(dVar2.f10645p, cVarJ.f6756c);
        }
        this.f1343l = false;
        this.f1344m = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onMeasure(int r18, int r19) {
        /*
            Method dump skipped, instructions count: 430
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        View viewD;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f1319a);
        int i6 = savedState.f1361c;
        if (i6 != 0 && (viewD = d(i6)) != null) {
            m(viewD);
        }
        int i10 = savedState.d;
        if (i10 != 3) {
            n(i10, 3);
        }
        int i11 = savedState.f1362e;
        if (i11 != 3) {
            n(i11, 5);
        }
        int i12 = savedState.f;
        if (i12 != 3) {
            n(i12, 8388611);
        }
        int i13 = savedState.f1363g;
        if (i13 != 3) {
            n(i13, 8388613);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i6) {
        if (F) {
            return;
        }
        WeakHashMap weakHashMap = s0.f8353a;
        getLayoutDirection();
        getLayoutDirection();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.f1361c = 0;
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            LayoutParams layoutParams = (LayoutParams) getChildAt(i6).getLayoutParams();
            int i10 = layoutParams.d;
            boolean z7 = i10 == 1;
            boolean z10 = i10 == 2;
            if (z7 || z10) {
                savedState.f1361c = layoutParams.f1358a;
                break;
            }
        }
        savedState.d = this.f1345n;
        savedState.f1362e = this.f1346o;
        savedState.f = this.f1347p;
        savedState.f1363g = this.f1348q;
        return savedState;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0057  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            v0.d r0 = r6.f1338g
            r0.k(r7)
            v0.d r1 = r6.f1339h
            r1.k(r7)
            int r1 = r7.getAction()
            r1 = r1 & 255(0xff, float:3.57E-43)
            r2 = 0
            r3 = 1
            if (r1 == 0) goto L5c
            if (r1 == r3) goto L20
            r7 = 3
            if (r1 == r7) goto L1a
            goto L6a
        L1a:
            r6.c(r3)
            r6.f1349r = r2
            goto L6a
        L20:
            float r1 = r7.getX()
            float r7 = r7.getY()
            int r4 = (int) r1
            int r5 = (int) r7
            android.view.View r4 = r0.h(r4, r5)
            if (r4 == 0) goto L57
            boolean r4 = j(r4)
            if (r4 == 0) goto L57
            float r4 = r6.f1351t
            float r1 = r1 - r4
            float r4 = r6.f1352u
            float r7 = r7 - r4
            int r0 = r0.f10633b
            float r1 = r1 * r1
            float r7 = r7 * r7
            float r7 = r7 + r1
            int r0 = r0 * r0
            float r0 = (float) r0
            int r7 = (r7 > r0 ? 1 : (r7 == r0 ? 0 : -1))
            if (r7 >= 0) goto L57
            android.view.View r7 = r6.e()
            if (r7 == 0) goto L57
            int r7 = r6.g(r7)
            r0 = 2
            if (r7 != r0) goto L58
        L57:
            r2 = 1
        L58:
            r6.c(r2)
            goto L6a
        L5c:
            float r0 = r7.getX()
            float r7 = r7.getY()
            r6.f1351t = r0
            r6.f1352u = r7
            r6.f1349r = r2
        L6a:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void p(View view) {
        o0.c cVar = o0.c.f8528l;
        s0.m(cVar.a(), view);
        if (!k(view) || g(view) == 2) {
            return;
        }
        s0.o(view, cVar, this.B);
    }

    public final void q(View view, boolean z7) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if ((z7 || l(childAt)) && !(z7 && childAt == view)) {
                WeakHashMap weakHashMap = s0.f8353a;
                childAt.setImportantForAccessibility(4);
            } else {
                WeakHashMap weakHashMap2 = s0.f8353a;
                childAt.setImportantForAccessibility(1);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z7) {
        super.requestDisallowInterceptTouchEvent(z7);
        if (z7) {
            c(true);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.f1343l) {
            return;
        }
        super.requestLayout();
    }

    public void setDrawerElevation(float f) {
        this.f1335b = f;
        for (int i6 = 0; i6 < getChildCount(); i6++) {
            View childAt = getChildAt(i6);
            if (l(childAt)) {
                float f3 = this.f1335b;
                WeakHashMap weakHashMap = s0.f8353a;
                g0.s(childAt, f3);
            }
        }
    }

    @Deprecated
    public void setDrawerListener(z0.c cVar) {
        if (cVar != null) {
            if (this.f1350s == null) {
                this.f1350s = new ArrayList();
            }
            this.f1350s.add(cVar);
        }
    }

    public void setDrawerLockMode(int i6) {
        n(i6, 3);
        n(i6, 5);
    }

    public void setScrimColor(int i6) {
        this.d = i6;
        invalidate();
    }

    public void setStatusBarBackground(Drawable drawable) {
        this.f1353v = drawable;
        invalidate();
    }

    public void setStatusBarBackgroundColor(int i6) {
        this.f1353v = new ColorDrawable(i6);
        invalidate();
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1334a = new i(3);
        this.d = -1728053248;
        this.f = new Paint();
        this.f1344m = true;
        this.f1345n = 3;
        this.f1346o = 3;
        this.f1347p = 3;
        this.f1348q = 3;
        this.B = new c(9, this);
        setDescendantFocusability(262144);
        float f = getResources().getDisplayMetrics().density;
        this.f1336c = (int) ((64.0f * f) + 0.5f);
        float f3 = f * 400.0f;
        b bVar = new b(this, 3);
        this.f1340i = bVar;
        b bVar2 = new b(this, 5);
        this.f1341j = bVar2;
        d dVar = new d(getContext(), this, bVar);
        dVar.f10633b = (int) (dVar.f10633b * 1.0f);
        this.f1338g = dVar;
        dVar.f10646q = 1;
        dVar.f10643n = f3;
        bVar.d = dVar;
        d dVar2 = new d(getContext(), this, bVar2);
        dVar2.f10633b = (int) (1.0f * dVar2.f10633b);
        this.f1339h = dVar2;
        dVar2.f10646q = 2;
        dVar2.f10643n = f3;
        bVar2.d = dVar2;
        setFocusableInTouchMode(true);
        WeakHashMap weakHashMap = s0.f8353a;
        setImportantForAccessibility(1);
        s0.q(this, new z0.b(this));
        setMotionEventSplittingEnabled(false);
        if (getFitsSystemWindows()) {
            setOnApplyWindowInsetsListener(new z0.a());
            setSystemUiVisibility(1280);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(C);
            try {
                this.f1353v = typedArrayObtainStyledAttributes.getDrawable(0);
            } finally {
                typedArrayObtainStyledAttributes.recycle();
            }
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, y0.a.f11235a, i6, 0);
        try {
            if (typedArrayObtainStyledAttributes2.hasValue(0)) {
                this.f1335b = typedArrayObtainStyledAttributes2.getDimension(0, 0.0f);
            } else {
                this.f1335b = getResources().getDimension(com.p2elite.brtv2.R.dimen.def_drawer_elevation);
            }
            typedArrayObtainStyledAttributes2.recycle();
            this.f1356y = new ArrayList();
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes2.recycle();
            throw th;
        }
    }

    public void setStatusBarBackground(int i6) {
        this.f1353v = i6 != 0 ? d0.a.b(getContext(), i6) : null;
        invalidate();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
