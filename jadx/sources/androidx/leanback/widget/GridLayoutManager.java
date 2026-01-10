package androidx.leanback.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Rect;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.FocusFinder;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import androidx.leanback.widget.picker.Picker;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.l1;
import androidx.recyclerview.widget.p1;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class GridLayoutManager extends androidx.recyclerview.widget.x0 {
    public static final Rect R = new Rect();
    public static final int[] S = new int[2];
    public int A;
    public int B;
    public int C;
    public int D;
    public int E;
    public int F;
    public p G;
    public int H;
    public final a0.f I;
    public final a1.b J;
    public int K;
    public int L;
    public final int[] M;
    public final j1 N;
    public d0 O;
    public final a P;
    public final q Q;

    /* renamed from: a, reason: collision with root package name */
    public float f1626a;

    /* renamed from: b, reason: collision with root package name */
    public int f1627b;

    /* renamed from: c, reason: collision with root package name */
    public j f1628c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public androidx.recyclerview.widget.d0 f1629e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public l1 f1630g;

    /* renamed from: h, reason: collision with root package name */
    public int f1631h;

    /* renamed from: i, reason: collision with root package name */
    public int f1632i;

    /* renamed from: j, reason: collision with root package name */
    public final SparseIntArray f1633j;

    /* renamed from: k, reason: collision with root package name */
    public int[] f1634k;

    /* renamed from: l, reason: collision with root package name */
    public AudioManager f1635l;

    /* renamed from: m, reason: collision with root package name */
    public androidx.recyclerview.widget.e1 f1636m;

    /* renamed from: n, reason: collision with root package name */
    public int f1637n;

    /* renamed from: o, reason: collision with root package name */
    public ArrayList f1638o;

    /* renamed from: p, reason: collision with root package name */
    public int f1639p;

    /* renamed from: q, reason: collision with root package name */
    public s f1640q;

    /* renamed from: r, reason: collision with root package name */
    public u f1641r;

    /* renamed from: s, reason: collision with root package name */
    public int f1642s;

    /* renamed from: t, reason: collision with root package name */
    public int f1643t;

    /* renamed from: u, reason: collision with root package name */
    public int f1644u;

    /* renamed from: v, reason: collision with root package name */
    public int f1645v;

    /* renamed from: w, reason: collision with root package name */
    public int f1646w;

    /* renamed from: x, reason: collision with root package name */
    public int[] f1647x;

    /* renamed from: y, reason: collision with root package name */
    public int f1648y;

    /* renamed from: z, reason: collision with root package name */
    public int f1649z;

    /* compiled from: MyApplication */
    @SuppressLint({"BanParcelableUsage"})
    public static final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new v();

        /* renamed from: a, reason: collision with root package name */
        public int f1650a;

        /* renamed from: b, reason: collision with root package name */
        public Bundle f1651b;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            parcel.writeInt(this.f1650a);
            parcel.writeBundle(this.f1651b);
        }
    }

    public GridLayoutManager() {
        this(null);
    }

    public static int h(View view) {
        t tVar;
        if (view == null || (tVar = (t) view.getLayoutParams()) == null || tVar.f2760a.isRemoved()) {
            return -1;
        }
        return tVar.f2760a.getAbsoluteAdapterPosition();
    }

    public final void A() {
        int i6 = this.f1637n;
        if ((65600 & i6) == 65536) {
            p pVar = this.G;
            int i10 = this.f1639p;
            int i11 = (i6 & 262144) != 0 ? -this.L : this.K + this.L;
            while (true) {
                int i12 = pVar.f1873g;
                if (i12 >= pVar.f && i12 > i10) {
                    if (!pVar.f1871c) {
                        if (pVar.f1870b.d(i12) < i11) {
                            break;
                        }
                        pVar.f1870b.f(pVar.f1873g);
                        pVar.f1873g--;
                    } else {
                        if (pVar.f1870b.d(i12) > i11) {
                            break;
                        }
                        pVar.f1870b.f(pVar.f1873g);
                        pVar.f1873g--;
                    }
                } else {
                    break;
                }
            }
            if (pVar.f1873g < pVar.f) {
                pVar.f1873g = -1;
                pVar.f = -1;
            }
        }
    }

    public final void B() {
        int i6 = this.f1637n;
        if ((65600 & i6) == 65536) {
            p pVar = this.G;
            int i10 = this.f1639p;
            int i11 = (i6 & 262144) != 0 ? this.K + this.L : -this.L;
            while (true) {
                int i12 = pVar.f1873g;
                int i13 = pVar.f;
                if (i12 >= i13 && i13 < i10) {
                    int iE = pVar.f1870b.e(i13);
                    if (!pVar.f1871c) {
                        if (pVar.f1870b.d(pVar.f) + iE > i11) {
                            break;
                        }
                        pVar.f1870b.f(pVar.f);
                        pVar.f++;
                    } else {
                        if (pVar.f1870b.d(pVar.f) - iE < i11) {
                            break;
                        }
                        pVar.f1870b.f(pVar.f);
                        pVar.f++;
                    }
                } else {
                    break;
                }
            }
            if (pVar.f1873g < pVar.f) {
                pVar.f1873g = -1;
                pVar.f = -1;
            }
        }
    }

    public final void C(androidx.recyclerview.widget.e1 e1Var, l1 l1Var) {
        int i6 = this.f;
        if (i6 == 0) {
            this.f1636m = e1Var;
            this.f1630g = l1Var;
            this.f1631h = 0;
            this.f1632i = 0;
        }
        this.f = i6 + 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0031 A[PHI: r0
  0x0031: PHI (r0v9 int) = (r0v8 int), (r0v12 int) binds: [B:19:0x002f, B:12:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int D(int r7) {
        /*
            r6 = this;
            int r0 = r6.f1637n
            r1 = r0 & 64
            r2 = 1
            if (r1 != 0) goto L32
            r0 = r0 & 3
            if (r0 == r2) goto L32
            a0.f r0 = r6.I
            if (r7 <= 0) goto L20
            java.lang.Object r0 = r0.d
            androidx.leanback.widget.k1 r0 = (androidx.leanback.widget.k1) r0
            int r1 = r0.f1848a
            r3 = 2147483647(0x7fffffff, float:NaN)
            if (r1 != r3) goto L1b
            goto L32
        L1b:
            int r0 = r0.f1850c
            if (r7 <= r0) goto L32
            goto L31
        L20:
            if (r7 >= 0) goto L32
            java.lang.Object r0 = r0.d
            androidx.leanback.widget.k1 r0 = (androidx.leanback.widget.k1) r0
            int r1 = r0.f1849b
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 != r3) goto L2d
            goto L32
        L2d:
            int r0 = r0.d
            if (r7 >= r0) goto L32
        L31:
            r7 = r0
        L32:
            r0 = 0
            if (r7 != 0) goto L36
            return r0
        L36:
            int r1 = -r7
            int r3 = r6.getChildCount()
            int r4 = r6.d
            if (r4 != r2) goto L4c
            r4 = 0
        L40:
            if (r4 >= r3) goto L59
            android.view.View r5 = r6.getChildAt(r4)
            r5.offsetTopAndBottom(r1)
            int r4 = r4 + 1
            goto L40
        L4c:
            r4 = 0
        L4d:
            if (r4 >= r3) goto L59
            android.view.View r5 = r6.getChildAt(r4)
            r5.offsetLeftAndRight(r1)
            int r4 = r4 + 1
            goto L4d
        L59:
            int r1 = r6.f1637n
            r1 = r1 & 3
            if (r1 != r2) goto L63
            r6.O()
            return r7
        L63:
            int r1 = r6.getChildCount()
            int r3 = r6.f1637n
            r4 = 262144(0x40000, float:3.67342E-40)
            r3 = r3 & r4
            if (r3 == 0) goto L71
            if (r7 <= 0) goto L77
            goto L73
        L71:
            if (r7 >= 0) goto L77
        L73:
            r6.w()
            goto L7a
        L77:
            r6.d()
        L7a:
            int r3 = r6.getChildCount()
            if (r3 <= r1) goto L82
            r1 = 1
            goto L83
        L82:
            r1 = 0
        L83:
            int r3 = r6.getChildCount()
            int r5 = r6.f1637n
            r4 = r4 & r5
            if (r4 == 0) goto L8f
            if (r7 <= 0) goto L95
            goto L91
        L8f:
            if (r7 >= 0) goto L95
        L91:
            r6.A()
            goto L98
        L95:
            r6.B()
        L98:
            int r4 = r6.getChildCount()
            if (r4 >= r3) goto L9f
            goto La0
        L9f:
            r2 = 0
        La0:
            r0 = r1 | r2
            if (r0 == 0) goto La7
            r6.N()
        La7:
            androidx.leanback.widget.j r0 = r6.f1628c
            r0.invalidate()
            r6.O()
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.D(int):int");
    }

    public final int E(int i6) {
        int i10 = 0;
        if (i6 == 0) {
            return 0;
        }
        int i11 = -i6;
        int childCount = getChildCount();
        if (this.d == 0) {
            while (i10 < childCount) {
                getChildAt(i10).offsetTopAndBottom(i11);
                i10++;
            }
        } else {
            while (i10 < childCount) {
                getChildAt(i10).offsetLeftAndRight(i11);
                i10++;
            }
        }
        this.f1644u += i6;
        P();
        this.f1628c.invalidate();
        return i6;
    }

    public final void F(int i6, boolean z7) {
        View viewFindViewByPosition = findViewByPosition(i6);
        boolean zIsSmoothScrolling = isSmoothScrolling();
        if (!zIsSmoothScrolling && !this.f1628c.isLayoutRequested() && viewFindViewByPosition != null && h(viewFindViewByPosition) == i6) {
            this.f1637n |= 32;
            H(viewFindViewByPosition, z7);
            this.f1637n &= -33;
            return;
        }
        int i10 = this.f1637n;
        if ((i10 & 512) == 0 || (i10 & 64) != 0) {
            this.f1639p = i6;
            this.f1642s = Integer.MIN_VALUE;
            return;
        }
        if (z7 && !this.f1628c.isLayoutRequested()) {
            this.f1639p = i6;
            this.f1642s = Integer.MIN_VALUE;
            if (this.G == null) {
                Log.w("GridLayoutManager:" + this.f1628c.getId(), "setSelectionSmooth should not be called before first layout pass");
                return;
            }
            r rVar = new r(this);
            rVar.setTargetPosition(i6);
            startSmoothScroll(rVar);
            int targetPosition = rVar.getTargetPosition();
            if (targetPosition != this.f1639p) {
                this.f1639p = targetPosition;
                return;
            }
            return;
        }
        if (zIsSmoothScrolling) {
            s sVar = this.f1640q;
            if (sVar != null) {
                sVar.f1918a = true;
            }
            this.f1628c.stopScroll();
        }
        if (!this.f1628c.isLayoutRequested() && viewFindViewByPosition != null && h(viewFindViewByPosition) == i6) {
            this.f1637n |= 32;
            H(viewFindViewByPosition, z7);
            this.f1637n &= -33;
        } else {
            this.f1639p = i6;
            this.f1642s = Integer.MIN_VALUE;
            this.f1637n |= 256;
            requestLayout();
        }
    }

    public final void G(View view, View view2, boolean z7, int i6, int i10) {
        if ((this.f1637n & 64) != 0) {
            return;
        }
        int iH = h(view);
        if (view != null && view2 != null) {
            ((t) view.getLayoutParams()).getClass();
        }
        if (iH != this.f1639p) {
            this.f1639p = iH;
            this.f1642s = 0;
            if ((this.f1637n & 3) != 1) {
                e();
            }
            if (this.f1628c.a()) {
                this.f1628c.invalidate();
            }
        }
        if (view == null) {
            return;
        }
        if (!view.hasFocus() && this.f1628c.hasFocus()) {
            view.requestFocus();
        }
        if ((this.f1637n & 131072) == 0 && z7) {
            return;
        }
        int[] iArr = S;
        if (!n(view, view2, iArr) && i6 == 0 && i10 == 0) {
            return;
        }
        int i11 = iArr[0] + i6;
        int i12 = iArr[1] + i10;
        if ((this.f1637n & 3) == 1) {
            D(i11);
            E(i12);
            return;
        }
        if (this.d != 0) {
            i12 = i11;
            i11 = i12;
        }
        if (z7) {
            this.f1628c.smoothScrollBy(i11, i12);
        } else {
            this.f1628c.scrollBy(i11, i12);
            f();
        }
    }

    public final void H(View view, boolean z7) {
        G(view, view.findFocus(), z7, 0, 0);
    }

    public final void I(int i6) {
        if (i6 < 0 && i6 != -2) {
            throw new IllegalArgumentException(a.e.n(i6, "Invalid row height: "));
        }
        this.f1645v = i6;
    }

    public final void J(int i6, boolean z7) {
        if (this.f1639p == i6 || i6 == -1) {
            return;
        }
        F(i6, z7);
    }

    public final void K() {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            L(getChildAt(i6));
        }
    }

    public final void L(View view) {
        t tVar = (t) view.getLayoutParams();
        tVar.getClass();
        a1.b bVar = this.J;
        z zVar = (z) bVar.f48c;
        tVar.f1924i = a0.a(view, zVar, zVar.f1937e);
        z zVar2 = (z) bVar.f47b;
        tVar.f1925j = a0.a(view, zVar2, zVar2.f1937e);
    }

    public final void M() {
        if (getChildCount() <= 0) {
            this.f1631h = 0;
        } else {
            this.f1631h = this.G.f - ((t) getChildAt(0).getLayoutParams()).f2760a.getLayoutPosition();
        }
    }

    public final void N() {
        int i6 = (this.f1637n & (-1025)) | (y(false) ? 1024 : 0);
        this.f1637n = i6;
        if ((i6 & 1024) != 0) {
            j jVar = this.f1628c;
            WeakHashMap weakHashMap = n0.s0.f8353a;
            jVar.postOnAnimation(this.P);
        }
    }

    public final void O() {
        int i6;
        int i10;
        int iB;
        int i11;
        int i12;
        int i13;
        int top;
        int i14;
        int top2;
        int i15;
        if (this.f1630g.b() == 0) {
            return;
        }
        if ((this.f1637n & 262144) == 0) {
            i11 = this.G.f1873g;
            int iB2 = this.f1630g.b() - 1;
            i6 = this.G.f;
            i10 = iB2;
            iB = 0;
        } else {
            p pVar = this.G;
            int i16 = pVar.f;
            i6 = pVar.f1873g;
            i10 = 0;
            iB = this.f1630g.b() - 1;
            i11 = i16;
        }
        if (i11 < 0 || i6 < 0) {
            return;
        }
        boolean z7 = i11 == i10;
        boolean z10 = i6 == iB;
        int i17 = Integer.MIN_VALUE;
        int iG = Integer.MAX_VALUE;
        a0.f fVar = this.I;
        if (!z7) {
            k1 k1Var = (k1) fVar.d;
            if (k1Var.f1848a == Integer.MAX_VALUE && !z10 && k1Var.f1849b == Integer.MIN_VALUE) {
                return;
            }
        }
        int[] iArr = S;
        if (z7) {
            iG = this.G.g(true, iArr);
            View viewFindViewByPosition = findViewByPosition(iArr[1]);
            if (this.d == 0) {
                t tVar = (t) viewFindViewByPosition.getLayoutParams();
                tVar.getClass();
                top2 = viewFindViewByPosition.getLeft() + tVar.f1921e;
                i15 = tVar.f1924i;
            } else {
                t tVar2 = (t) viewFindViewByPosition.getLayoutParams();
                tVar2.getClass();
                top2 = viewFindViewByPosition.getTop() + tVar2.f;
                i15 = tVar2.f1925j;
            }
            i12 = top2 + i15;
            ((t) viewFindViewByPosition.getLayoutParams()).getClass();
        } else {
            i12 = Integer.MAX_VALUE;
        }
        if (z10) {
            i17 = this.G.i(false, iArr);
            View viewFindViewByPosition2 = findViewByPosition(iArr[1]);
            if (this.d == 0) {
                t tVar3 = (t) viewFindViewByPosition2.getLayoutParams();
                tVar3.getClass();
                top = viewFindViewByPosition2.getLeft() + tVar3.f1921e;
                i14 = tVar3.f1924i;
            } else {
                t tVar4 = (t) viewFindViewByPosition2.getLayoutParams();
                tVar4.getClass();
                top = viewFindViewByPosition2.getTop() + tVar4.f;
                i14 = tVar4.f1925j;
            }
            i13 = top + i14;
        } else {
            i13 = Integer.MIN_VALUE;
        }
        ((k1) fVar.d).c(i17, iG, i13, i12);
    }

    public final void P() {
        k1 k1Var = (k1) this.I.f40e;
        int i6 = k1Var.f1855j - this.f1644u;
        int iO = o() + i6;
        k1Var.c(i6, iO, i6, iO);
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean canScrollHorizontally() {
        return this.d == 0 || this.E > 1;
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean canScrollVertically() {
        return this.d == 1 || this.E > 1;
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof t;
    }

    @Override // androidx.recyclerview.widget.x0
    public final void collectAdjacentPrefetchPositions(int i6, int i10, l1 l1Var, androidx.recyclerview.widget.w0 w0Var) {
        try {
            C(null, l1Var);
            if (this.d != 0) {
                i6 = i10;
            }
            if (getChildCount() != 0 && i6 != 0) {
                this.G.e(i6 < 0 ? -this.L : this.K + this.L, i6, (androidx.recyclerview.widget.r) w0Var);
                u();
            }
        } finally {
            u();
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void collectInitialPrefetchPositions(int i6, androidx.recyclerview.widget.w0 w0Var) {
        int i10 = this.f1628c.f1844e;
        if (i6 == 0 || i10 == 0) {
            return;
        }
        int iMax = Math.max(0, Math.min(this.f1639p - ((i10 - 1) / 2), i6 - i10));
        for (int i11 = iMax; i11 < i6 && i11 < iMax + i10; i11++) {
            ((androidx.recyclerview.widget.r) w0Var).a(i11, 0);
        }
    }

    public final void d() {
        this.G.b((this.f1637n & 262144) != 0 ? (-this.L) - this.f1632i : this.K + this.L + this.f1632i, false);
    }

    public final void e() {
        ArrayList arrayList = this.f1638o;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int i6 = this.f1639p;
        View viewFindViewByPosition = i6 == -1 ? null : findViewByPosition(i6);
        if (viewFindViewByPosition != null) {
            g(this.f1628c, this.f1628c.getChildViewHolder(viewFindViewByPosition), this.f1639p);
        } else {
            g(this.f1628c, null, -1);
        }
        if ((this.f1637n & 3) == 1 || this.f1628c.isLayoutRequested()) {
            return;
        }
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (getChildAt(i10).isLayoutRequested()) {
                j jVar = this.f1628c;
                WeakHashMap weakHashMap = n0.s0.f8353a;
                jVar.postOnAnimation(this.P);
                return;
            }
        }
    }

    public final void f() {
        ArrayList arrayList = this.f1638o;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int i6 = this.f1639p;
        View viewFindViewByPosition = i6 == -1 ? null : findViewByPosition(i6);
        if (viewFindViewByPosition == null) {
            ArrayList arrayList2 = this.f1638o;
            if (arrayList2 == null) {
                return;
            }
            for (int size = arrayList2.size() - 1; size >= 0; size--) {
                ((h0) this.f1638o.get(size)).getClass();
            }
            return;
        }
        this.f1628c.getChildViewHolder(viewFindViewByPosition);
        ArrayList arrayList3 = this.f1638o;
        if (arrayList3 == null) {
            return;
        }
        for (int size2 = arrayList3.size() - 1; size2 >= 0; size2--) {
            ((h0) this.f1638o.get(size2)).getClass();
        }
    }

    public final void g(RecyclerView recyclerView, p1 p1Var, int i6) {
        ArrayList arrayList = this.f1638o;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            i1.a aVar = (i1.a) ((h0) this.f1638o.get(size));
            aVar.getClass();
            Picker picker = aVar.f7289a;
            int iIndexOf = picker.f1890b.indexOf((VerticalGridView) recyclerView);
            picker.f(iIndexOf);
            if (p1Var != null) {
                picker.a(iIndexOf, ((i1.d) picker.f1891c.get(iIndexOf)).f7296b + i6);
            }
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return new t(-2, -2);
    }

    @Override // androidx.recyclerview.widget.x0
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new t(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getColumnCountForAccessibility(androidx.recyclerview.widget.e1 e1Var, l1 l1Var) {
        p pVar;
        return (this.d != 1 || (pVar = this.G) == null) ? super.getColumnCountForAccessibility(e1Var, l1Var) : pVar.f1872e;
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getDecoratedBottom(View view) {
        return super.getDecoratedBottom(view) - ((t) view.getLayoutParams()).f1923h;
    }

    @Override // androidx.recyclerview.widget.x0
    public final void getDecoratedBoundsWithMargins(View view, Rect rect) {
        super.getDecoratedBoundsWithMargins(view, rect);
        t tVar = (t) view.getLayoutParams();
        rect.left += tVar.f1921e;
        rect.top += tVar.f;
        rect.right -= tVar.f1922g;
        rect.bottom -= tVar.f1923h;
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getDecoratedLeft(View view) {
        return super.getDecoratedLeft(view) + ((t) view.getLayoutParams()).f1921e;
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getDecoratedRight(View view) {
        return super.getDecoratedRight(view) - ((t) view.getLayoutParams()).f1922g;
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getDecoratedTop(View view) {
        return super.getDecoratedTop(view) + ((t) view.getLayoutParams()).f;
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getRowCountForAccessibility(androidx.recyclerview.widget.e1 e1Var, l1 l1Var) {
        p pVar;
        return (this.d != 0 || (pVar = this.G) == null) ? super.getRowCountForAccessibility(e1Var, l1Var) : pVar.f1872e;
    }

    public final int i(View view) {
        t tVar = (t) view.getLayoutParams();
        return getDecoratedMeasuredHeight(view) + ((ViewGroup.MarginLayoutParams) tVar).topMargin + ((ViewGroup.MarginLayoutParams) tVar).bottomMargin;
    }

    public final int j(View view) {
        t tVar = (t) view.getLayoutParams();
        return getDecoratedMeasuredWidth(view) + ((ViewGroup.MarginLayoutParams) tVar).leftMargin + ((ViewGroup.MarginLayoutParams) tVar).rightMargin;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int k(int r10) {
        /*
            r9 = this;
            int r0 = r9.d
            r1 = 130(0x82, float:1.82E-43)
            r2 = 66
            r3 = 33
            r4 = 2
            r5 = 0
            r6 = 3
            r7 = 1
            r8 = 17
            if (r0 != 0) goto L30
            r0 = 262144(0x40000, float:3.67342E-40)
            if (r10 == r8) goto L28
            if (r10 == r3) goto L2e
            if (r10 == r2) goto L1f
            if (r10 == r1) goto L1d
            r4 = 17
            goto L2e
        L1d:
            r4 = 3
            goto L2e
        L1f:
            int r10 = r9.f1637n
            r10 = r10 & r0
            if (r10 != 0) goto L26
        L24:
            r4 = 1
            goto L2e
        L26:
            r4 = 0
            goto L2e
        L28:
            int r10 = r9.f1637n
            r10 = r10 & r0
            if (r10 != 0) goto L24
            goto L26
        L2e:
            r5 = r4
            goto L4d
        L30:
            if (r0 != r7) goto L4b
            r0 = 524288(0x80000, float:7.34684E-40)
            if (r10 == r8) goto L45
            if (r10 == r3) goto L4d
            if (r10 == r2) goto L3f
            if (r10 == r1) goto L3d
            goto L4b
        L3d:
            r5 = 1
            goto L4d
        L3f:
            int r10 = r9.f1637n
            r10 = r10 & r0
            if (r10 != 0) goto L2e
            goto L1d
        L45:
            int r10 = r9.f1637n
            r10 = r10 & r0
            if (r10 != 0) goto L1d
            goto L2e
        L4b:
            r5 = 17
        L4d:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.k(int):int");
    }

    public final int l(int i6) {
        int i10 = this.f1646w;
        if (i10 != 0) {
            return i10;
        }
        int[] iArr = this.f1647x;
        if (iArr == null) {
            return 0;
        }
        return iArr[i6];
    }

    public final int m(int i6) {
        int iL = 0;
        if ((this.f1637n & 524288) != 0) {
            for (int i10 = this.E - 1; i10 > i6; i10--) {
                iL += l(i10) + this.C;
            }
            return iL;
        }
        int iL2 = 0;
        while (iL < i6) {
            iL2 += l(iL) + this.C;
            iL++;
        }
        return iL2;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0155  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0172  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean n(android.view.View r13, android.view.View r14, int[] r15) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.n(android.view.View, android.view.View, int[]):boolean");
    }

    public final int o() {
        int i6 = (this.f1637n & 524288) != 0 ? 0 : this.E - 1;
        return l(i6) + m(i6);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onAdapterChanged(androidx.recyclerview.widget.k0 k0Var, androidx.recyclerview.widget.k0 k0Var2) {
        if (k0Var != null) {
            this.G = null;
            this.f1647x = null;
            this.f1637n &= -1025;
            this.f1639p = -1;
            this.f1642s = 0;
            p.k kVar = (p.k) this.N.f1847c;
            if (kVar != null) {
                kVar.i(-1);
            }
        }
        if (k0Var2 instanceof d0) {
            this.O = (d0) k0Var2;
        } else {
            this.O = null;
        }
        super.onAdapterChanged(k0Var, k0Var2);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00b4  */
    @Override // androidx.recyclerview.widget.x0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onAddFocusables(androidx.recyclerview.widget.RecyclerView r18, java.util.ArrayList r19, int r20, int r21) {
        /*
            Method dump skipped, instructions count: 416
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.onAddFocusables(androidx.recyclerview.widget.RecyclerView, java.util.ArrayList, int, int):boolean");
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onInitializeAccessibilityNodeInfo(androidx.recyclerview.widget.e1 e1Var, l1 l1Var, o0.h hVar) {
        C(e1Var, l1Var);
        int iB = l1Var.b();
        int i6 = this.f1637n;
        boolean z7 = (262144 & i6) != 0;
        if ((i6 & 2048) == 0 || (iB > 1 && !s(0))) {
            if (Build.VERSION.SDK_INT < 23) {
                hVar.a(8192);
            } else if (this.d == 0) {
                hVar.b(z7 ? o0.c.f8533q : o0.c.f8531o);
            } else {
                hVar.b(o0.c.f8530n);
            }
            hVar.n(true);
        }
        if ((this.f1637n & 4096) == 0 || (iB > 1 && !s(iB - 1))) {
            if (Build.VERSION.SDK_INT < 23) {
                hVar.a(4096);
            } else if (this.d == 0) {
                hVar.b(z7 ? o0.c.f8531o : o0.c.f8533q);
            } else {
                hVar.b(o0.c.f8532p);
            }
            hVar.n(true);
        }
        hVar.j(j7.c.z(getRowCountForAccessibility(e1Var, l1Var), getColumnCountForAccessibility(e1Var, l1Var), getSelectionModeForAccessibility(e1Var, l1Var), isLayoutHierarchical(e1Var, l1Var)));
        hVar.i(GridView.class.getName());
        u();
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onInitializeAccessibilityNodeInfoForItem(androidx.recyclerview.widget.e1 e1Var, l1 l1Var, View view, o0.h hVar) {
        o oVarK;
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (this.G == null || !(layoutParams instanceof t)) {
            return;
        }
        int absoluteAdapterPosition = ((t) layoutParams).f2760a.getAbsoluteAdapterPosition();
        int i6 = -1;
        if (absoluteAdapterPosition >= 0 && (oVarK = this.G.k(absoluteAdapterPosition)) != null) {
            i6 = oVarK.f1866a;
        }
        if (i6 < 0) {
            return;
        }
        int i10 = absoluteAdapterPosition / this.G.f1872e;
        if (this.d == 0) {
            hVar.k(o0.g.a(i6, 1, i10, 1, false));
        } else {
            hVar.k(o0.g.a(i10, 1, i6, 1, false));
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final View onInterceptFocusSearch(View view, int i6) {
        View viewFindNextFocus;
        View viewFindNextFocus2;
        if ((this.f1637n & 32768) != 0) {
            return view;
        }
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (i6 == 2 || i6 == 1) {
            if (canScrollVertically()) {
                viewFindNextFocus = focusFinder.findNextFocus(this.f1628c, view, i6 == 2 ? TsExtractor.TS_STREAM_TYPE_HDMV_DTS : 33);
            } else {
                viewFindNextFocus = null;
            }
            if (canScrollHorizontally()) {
                viewFindNextFocus2 = focusFinder.findNextFocus(this.f1628c, view, (getLayoutDirection() == 1) ^ (i6 == 2) ? 66 : 17);
            } else {
                viewFindNextFocus2 = viewFindNextFocus;
            }
        } else {
            viewFindNextFocus2 = focusFinder.findNextFocus(this.f1628c, view, i6);
        }
        if (viewFindNextFocus2 != null) {
            return viewFindNextFocus2;
        }
        if (this.f1628c.getDescendantFocusability() == 393216) {
            return this.f1628c.getParent().focusSearch(view, i6);
        }
        int iK = k(i6);
        boolean z7 = this.f1628c.getScrollState() != 0;
        if (iK == 1) {
            if (z7 || (this.f1637n & 4096) == 0) {
                viewFindNextFocus2 = view;
            }
            if ((this.f1637n & 131072) != 0 && !r()) {
                x(true);
                viewFindNextFocus2 = view;
            }
        } else if (iK == 0) {
            if (z7 || (this.f1637n & 2048) == 0) {
                viewFindNextFocus2 = view;
            }
            if ((this.f1637n & 131072) != 0 && !q()) {
                x(false);
                viewFindNextFocus2 = view;
            }
        } else if (iK == 3) {
        }
        if (viewFindNextFocus2 != null) {
            return viewFindNextFocus2;
        }
        View viewFocusSearch = this.f1628c.getParent().focusSearch(view, i6);
        return viewFocusSearch != null ? viewFocusSearch : view != null ? view : this.f1628c;
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsAdded(RecyclerView recyclerView, int i6, int i10) {
        p pVar;
        int i11;
        int i12 = this.f1639p;
        if (i12 != -1 && (pVar = this.G) != null && pVar.f >= 0 && (i11 = this.f1642s) != Integer.MIN_VALUE && i6 <= i12 + i11) {
            this.f1642s = i11 + i10;
        }
        p.k kVar = (p.k) this.N.f1847c;
        if (kVar != null) {
            kVar.i(-1);
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsChanged(RecyclerView recyclerView) {
        this.f1642s = 0;
        p.k kVar = (p.k) this.N.f1847c;
        if (kVar != null) {
            kVar.i(-1);
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsMoved(RecyclerView recyclerView, int i6, int i10, int i11) {
        int i12;
        int i13 = this.f1639p;
        if (i13 != -1 && (i12 = this.f1642s) != Integer.MIN_VALUE) {
            int i14 = i13 + i12;
            if (i6 <= i14 && i14 < i6 + i11) {
                this.f1642s = (i10 - i6) + i12;
            } else if (i6 < i14 && i10 > i14 - i11) {
                this.f1642s = i12 - i11;
            } else if (i6 > i14 && i10 < i14) {
                this.f1642s = i12 + i11;
            }
        }
        p.k kVar = (p.k) this.N.f1847c;
        if (kVar != null) {
            kVar.i(-1);
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsRemoved(RecyclerView recyclerView, int i6, int i10) {
        p pVar;
        int i11;
        int i12;
        int i13 = this.f1639p;
        if (i13 != -1 && (pVar = this.G) != null && pVar.f >= 0 && (i11 = this.f1642s) != Integer.MIN_VALUE && i6 <= (i12 = i13 + i11)) {
            if (i6 + i10 > i12) {
                this.f1639p = (i6 - i12) + i11 + i13;
                this.f1642s = Integer.MIN_VALUE;
            } else {
                this.f1642s = i11 - i10;
            }
        }
        p.k kVar = (p.k) this.N.f1847c;
        if (kVar != null) {
            kVar.i(-1);
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsUpdated(RecyclerView recyclerView, int i6, int i10) {
        int i11 = i10 + i6;
        while (i6 < i11) {
            j1 j1Var = this.N;
            p.k kVar = (p.k) j1Var.f1847c;
            if (kVar != null && kVar.g() != 0) {
                ((p.k) j1Var.f1847c).e(Integer.toString(i6));
            }
            i6++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x02a9 A[LOOP:3: B:124:0x02a7->B:125:0x02a9, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:128:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02d6 A[LOOP:11: B:134:0x02d6->B:356:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0405 A[LOOP:12: B:177:0x0405->B:357:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:316:0x0642 A[PHI: r0 r1
  0x0642: PHI (r0v47 int) = (r0v43 int), (r0v50 int) binds: [B:315:0x0640, B:303:0x060e] A[DONT_GENERATE, DONT_INLINE]
  0x0642: PHI (r1v43 int) = (r1v39 int), (r1v47 int) binds: [B:315:0x0640, B:303:0x060e] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.recyclerview.widget.x0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void onLayoutChildren(androidx.recyclerview.widget.e1 r26, androidx.recyclerview.widget.l1 r27) {
        /*
            Method dump skipped, instructions count: 1622
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.onLayoutChildren(androidx.recyclerview.widget.e1, androidx.recyclerview.widget.l1):void");
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onMeasure(androidx.recyclerview.widget.e1 e1Var, l1 l1Var, int i6, int i10) {
        int size;
        int size2;
        int mode;
        int paddingLeft;
        int paddingRight;
        int iO;
        C(e1Var, l1Var);
        if (this.d == 0) {
            size2 = View.MeasureSpec.getSize(i6);
            size = View.MeasureSpec.getSize(i10);
            mode = View.MeasureSpec.getMode(i10);
            paddingLeft = getPaddingTop();
            paddingRight = getPaddingBottom();
        } else {
            size = View.MeasureSpec.getSize(i6);
            size2 = View.MeasureSpec.getSize(i10);
            mode = View.MeasureSpec.getMode(i6);
            paddingLeft = getPaddingLeft();
            paddingRight = getPaddingRight();
        }
        int i11 = paddingRight + paddingLeft;
        this.f1648y = size;
        int i12 = this.f1645v;
        if (i12 == -2) {
            int i13 = this.F;
            if (i13 == 0) {
                i13 = 1;
            }
            this.E = i13;
            this.f1646w = 0;
            int[] iArr = this.f1647x;
            if (iArr == null || iArr.length != i13) {
                this.f1647x = new int[i13];
            }
            if (this.f1630g.f2890g) {
                M();
            }
            y(true);
            if (mode == Integer.MIN_VALUE) {
                size = Math.min(o() + i11, this.f1648y);
            } else if (mode == 0) {
                iO = o();
                size = iO + i11;
            } else {
                if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
                size = this.f1648y;
            }
        } else {
            if (mode != Integer.MIN_VALUE) {
                if (mode == 0) {
                    if (i12 == 0) {
                        i12 = size - i11;
                    }
                    this.f1646w = i12;
                    int i14 = this.F;
                    if (i14 == 0) {
                        i14 = 1;
                    }
                    this.E = i14;
                    iO = ((i14 - 1) * this.C) + (i12 * i14);
                    size = iO + i11;
                } else if (mode != 1073741824) {
                    throw new IllegalStateException("wrong spec");
                }
            }
            int i15 = this.F;
            if (i15 == 0 && i12 == 0) {
                this.E = 1;
                this.f1646w = size - i11;
            } else if (i15 == 0) {
                this.f1646w = i12;
                int i16 = this.C;
                this.E = (size + i16) / (i12 + i16);
            } else if (i12 == 0) {
                this.E = i15;
                this.f1646w = ((size - i11) - ((i15 - 1) * this.C)) / i15;
            } else {
                this.E = i15;
                this.f1646w = i12;
            }
            if (mode == Integer.MIN_VALUE) {
                int i17 = this.f1646w;
                int i18 = this.E;
                int i19 = ((i18 - 1) * this.C) + (i17 * i18) + i11;
                if (i19 < size) {
                    size = i19;
                }
            }
        }
        if (this.d == 0) {
            setMeasuredDimension(size2, size);
        } else {
            setMeasuredDimension(size, size2);
        }
        u();
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean onRequestChildFocus(RecyclerView recyclerView, l1 l1Var, View view, View view2) {
        if ((this.f1637n & 32768) == 0 && h(view) != -1 && (this.f1637n & 35) == 0) {
            G(view, view2, true, 0, 0);
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f1639p = savedState.f1650a;
            this.f1642s = 0;
            Bundle bundle = savedState.f1651b;
            j1 j1Var = this.N;
            p.k kVar = (p.k) j1Var.f1847c;
            if (kVar != null && bundle != null) {
                kVar.i(-1);
                for (String str : bundle.keySet()) {
                    ((p.k) j1Var.f1847c).d(str, bundle.getSparseParcelableArray(str));
                }
            }
            this.f1637n |= 256;
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final Parcelable onSaveInstanceState() {
        Bundle bundle;
        SavedState savedState = new SavedState();
        savedState.f1651b = Bundle.EMPTY;
        savedState.f1650a = this.f1639p;
        j1 j1Var = this.N;
        p.k kVar = (p.k) j1Var.f1847c;
        if (kVar == null || kVar.g() == 0) {
            bundle = null;
        } else {
            p.k kVar2 = (p.k) j1Var.f1847c;
            kVar2.getClass();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            synchronized (kVar2.f8854c) {
                Set<Map.Entry> setEntrySet = kVar2.f8853b.f8242a.entrySet();
                j9.i.e(setEntrySet, "map.entries");
                for (Map.Entry entry : setEntrySet) {
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
            }
            bundle = new Bundle();
            for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                bundle.putSparseParcelableArray((String) entry2.getKey(), (SparseArray) entry2.getValue());
            }
        }
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            int iH = h(childAt);
            if (iH != -1 && this.N.f1845a != 0) {
                String string = Integer.toString(iH);
                SparseArray<Parcelable> sparseArray = new SparseArray<>();
                childAt.saveHierarchyState(sparseArray);
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putSparseParcelableArray(string, sparseArray);
            }
        }
        savedState.f1651b = bundle;
        return savedState;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View p(int i6) {
        View view = this.f1636m.l(i6, Long.MAX_VALUE).itemView;
        t tVar = (t) view.getLayoutParams();
        p1 childViewHolder = this.f1628c.getChildViewHolder(view);
        if (childViewHolder instanceof n) {
            ((n) childViewHolder).a();
        }
        d0 d0Var = this.O;
        if (d0Var != null) {
            n nVar = (n) d0Var.f1822b.get(childViewHolder.getItemViewType());
            if (nVar != null) {
                nVar.a();
            }
        }
        tVar.getClass();
        return view;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x004d  */
    @Override // androidx.recyclerview.widget.x0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean performAccessibilityAction(androidx.recyclerview.widget.e1 r6, androidx.recyclerview.widget.l1 r7, int r8, android.os.Bundle r9) {
        /*
            r5 = this;
            int r9 = r5.f1637n
            r0 = 131072(0x20000, float:1.83671E-40)
            r9 = r9 & r0
            r0 = 1
            if (r9 == 0) goto L8e
            r5.C(r6, r7)
            int r6 = r5.f1637n
            r9 = 262144(0x40000, float:3.67342E-40)
            r6 = r6 & r9
            r9 = 0
            if (r6 == 0) goto L15
            r6 = 1
            goto L16
        L15:
            r6 = 0
        L16:
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 23
            r3 = 8192(0x2000, float:1.148E-41)
            r4 = 4096(0x1000, float:5.74E-42)
            if (r1 < r2) goto L4f
            int r1 = r5.d
            if (r1 != 0) goto L3a
            o0.c r1 = o0.c.f8531o
            int r1 = r1.a()
            if (r8 != r1) goto L2f
            if (r6 == 0) goto L42
            goto L4d
        L2f:
            o0.c r1 = o0.c.f8533q
            int r1 = r1.a()
            if (r8 != r1) goto L4f
            if (r6 == 0) goto L4d
            goto L42
        L3a:
            o0.c r6 = o0.c.f8530n
            int r6 = r6.a()
            if (r8 != r6) goto L45
        L42:
            r8 = 8192(0x2000, float:1.148E-41)
            goto L4f
        L45:
            o0.c r6 = o0.c.f8532p
            int r6 = r6.a()
            if (r8 != r6) goto L4f
        L4d:
            r8 = 4096(0x1000, float:5.74E-42)
        L4f:
            int r6 = r5.f1639p
            if (r6 != 0) goto L57
            if (r8 != r3) goto L57
            r1 = 1
            goto L58
        L57:
            r1 = 0
        L58:
            int r7 = r7.b()
            int r7 = r7 - r0
            if (r6 != r7) goto L63
            if (r8 != r4) goto L63
            r6 = 1
            goto L64
        L63:
            r6 = 0
        L64:
            if (r1 != 0) goto L7d
            if (r6 == 0) goto L69
            goto L7d
        L69:
            if (r8 == r4) goto L76
            if (r8 == r3) goto L6e
            goto L8b
        L6e:
            r5.x(r9)
            r6 = -1
            r5.z(r6, r9)
            goto L8b
        L76:
            r5.x(r0)
            r5.z(r0, r9)
            goto L8b
        L7d:
            android.view.accessibility.AccessibilityEvent r6 = android.view.accessibility.AccessibilityEvent.obtain(r4)
            androidx.leanback.widget.j r7 = r5.f1628c
            r7.onInitializeAccessibilityEvent(r6)
            androidx.leanback.widget.j r7 = r5.f1628c
            r7.requestSendAccessibilityEvent(r7, r6)
        L8b:
            r5.u()
        L8e:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.leanback.widget.GridLayoutManager.performAccessibilityAction(androidx.recyclerview.widget.e1, androidx.recyclerview.widget.l1, int, android.os.Bundle):boolean");
    }

    public final boolean q() {
        return getItemCount() == 0 || this.f1628c.findViewHolderForAdapterPosition(0) != null;
    }

    public final boolean r() {
        int itemCount = getItemCount();
        return itemCount == 0 || this.f1628c.findViewHolderForAdapterPosition(itemCount - 1) != null;
    }

    @Override // androidx.recyclerview.widget.x0
    public final void removeAndRecycleAllViews(androidx.recyclerview.widget.e1 e1Var) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            removeAndRecycleViewAt(childCount, e1Var);
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z7) {
        return false;
    }

    public final boolean s(int i6) {
        p1 p1VarFindViewHolderForAdapterPosition = this.f1628c.findViewHolderForAdapterPosition(i6);
        return p1VarFindViewHolderForAdapterPosition != null && p1VarFindViewHolderForAdapterPosition.itemView.getLeft() >= 0 && p1VarFindViewHolderForAdapterPosition.itemView.getRight() <= this.f1628c.getWidth() && p1VarFindViewHolderForAdapterPosition.itemView.getTop() >= 0 && p1VarFindViewHolderForAdapterPosition.itemView.getBottom() <= this.f1628c.getHeight();
    }

    @Override // androidx.recyclerview.widget.x0
    public final int scrollHorizontallyBy(int i6, androidx.recyclerview.widget.e1 e1Var, l1 l1Var) {
        if ((this.f1637n & 512) == 0 || this.G == null) {
            return 0;
        }
        C(e1Var, l1Var);
        this.f1637n = (this.f1637n & (-4)) | 2;
        int iD = this.d == 0 ? D(i6) : E(i6);
        u();
        this.f1637n &= -4;
        return iD;
    }

    @Override // androidx.recyclerview.widget.x0
    public final void scrollToPosition(int i6) {
        J(i6, false);
    }

    @Override // androidx.recyclerview.widget.x0
    public final int scrollVerticallyBy(int i6, androidx.recyclerview.widget.e1 e1Var, l1 l1Var) {
        int i10 = this.f1637n;
        if ((i10 & 512) == 0 || this.G == null) {
            return 0;
        }
        this.f1637n = (i10 & (-4)) | 2;
        C(e1Var, l1Var);
        int iD = this.d == 1 ? D(i6) : E(i6);
        u();
        this.f1637n &= -4;
        return iD;
    }

    public final void setOrientation(int i6) {
        if (i6 == 0 || i6 == 1) {
            this.d = i6;
            this.f1629e = androidx.recyclerview.widget.d0.a(this, i6);
            a0.f fVar = this.I;
            fVar.getClass();
            k1 k1Var = (k1) fVar.f38b;
            k1 k1Var2 = (k1) fVar.f39c;
            if (i6 == 0) {
                fVar.d = k1Var2;
                fVar.f40e = k1Var;
            } else {
                fVar.d = k1Var;
                fVar.f40e = k1Var2;
            }
            a1.b bVar = this.J;
            bVar.getClass();
            if (i6 == 0) {
                bVar.d = (z) bVar.f48c;
            } else {
                bVar.d = (z) bVar.f47b;
            }
            this.f1637n |= 256;
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void smoothScrollToPosition(RecyclerView recyclerView, l1 l1Var, int i6) {
        J(i6, true);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void startSmoothScroll(androidx.recyclerview.widget.k1 k1Var) {
        s sVar = this.f1640q;
        if (sVar != null) {
            sVar.f1918a = true;
        }
        super.startSmoothScroll(k1Var);
        if (!k1Var.isRunning() || !(k1Var instanceof s)) {
            this.f1640q = null;
            this.f1641r = null;
            return;
        }
        s sVar2 = (s) k1Var;
        this.f1640q = sVar2;
        if (sVar2 instanceof u) {
            this.f1641r = (u) sVar2;
        } else {
            this.f1641r = null;
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean supportsPredictiveItemAnimations() {
        return true;
    }

    public final void t(View view, int i6, int i10, int i11, int i12) {
        int iL;
        int i13;
        int i14 = this.d == 0 ? i(view) : j(view);
        int i15 = this.f1646w;
        if (i15 > 0) {
            i14 = Math.min(i14, i15);
        }
        int i16 = this.D;
        int i17 = i16 & 112;
        int absoluteGravity = (this.f1637n & 786432) != 0 ? Gravity.getAbsoluteGravity(i16 & 8388615, 1) : i16 & 7;
        int i18 = this.d;
        if ((i18 != 0 || i17 != 48) && (i18 != 1 || absoluteGravity != 3)) {
            if ((i18 == 0 && i17 == 80) || (i18 == 1 && absoluteGravity == 5)) {
                iL = l(i6) - i14;
            } else if ((i18 == 0 && i17 == 16) || (i18 == 1 && absoluteGravity == 1)) {
                iL = (l(i6) - i14) / 2;
            }
            i12 += iL;
        }
        if (this.d == 0) {
            i13 = i14 + i12;
        } else {
            int i19 = i14 + i12;
            int i20 = i12;
            i12 = i10;
            i10 = i20;
            i13 = i11;
            i11 = i19;
        }
        t tVar = (t) view.getLayoutParams();
        layoutDecoratedWithMargins(view, i10, i12, i11, i13);
        Rect rect = R;
        super.getDecoratedBoundsWithMargins(view, rect);
        int i21 = i10 - rect.left;
        int i22 = i12 - rect.top;
        int i23 = rect.right - i11;
        int i24 = rect.bottom - i13;
        tVar.f1921e = i21;
        tVar.f = i22;
        tVar.f1922g = i23;
        tVar.f1923h = i24;
        L(view);
    }

    public final void u() {
        int i6 = this.f - 1;
        this.f = i6;
        if (i6 == 0) {
            this.f1636m = null;
            this.f1630g = null;
            this.f1631h = 0;
            this.f1632i = 0;
        }
    }

    public final void v(View view) {
        int childMeasureSpec;
        int childMeasureSpec2;
        t tVar = (t) view.getLayoutParams();
        Rect rect = R;
        calculateItemDecorationsForChild(view, rect);
        int i6 = ((ViewGroup.MarginLayoutParams) tVar).leftMargin + ((ViewGroup.MarginLayoutParams) tVar).rightMargin + rect.left + rect.right;
        int i10 = ((ViewGroup.MarginLayoutParams) tVar).topMargin + ((ViewGroup.MarginLayoutParams) tVar).bottomMargin + rect.top + rect.bottom;
        int iMakeMeasureSpec = this.f1645v == -2 ? View.MeasureSpec.makeMeasureSpec(0, 0) : View.MeasureSpec.makeMeasureSpec(this.f1646w, 1073741824);
        if (this.d == 0) {
            childMeasureSpec = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i6, ((ViewGroup.MarginLayoutParams) tVar).width);
            childMeasureSpec2 = ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, i10, ((ViewGroup.MarginLayoutParams) tVar).height);
        } else {
            int childMeasureSpec3 = ViewGroup.getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), i10, ((ViewGroup.MarginLayoutParams) tVar).height);
            childMeasureSpec = ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, i6, ((ViewGroup.MarginLayoutParams) tVar).width);
            childMeasureSpec2 = childMeasureSpec3;
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final void w() {
        this.G.m((this.f1637n & 262144) != 0 ? this.K + this.L + this.f1632i : (-this.L) - this.f1632i, false);
    }

    public final void x(boolean z7) {
        int i6;
        if (z7) {
            if (r()) {
                return;
            }
        } else if (q()) {
            return;
        }
        u uVar = this.f1641r;
        if (uVar == null) {
            u uVar2 = new u(this, z7 ? 1 : -1, this.E > 1);
            this.f1642s = 0;
            startSmoothScroll(uVar2);
        } else {
            GridLayoutManager gridLayoutManager = uVar.f1928e;
            if (z7) {
                int i10 = uVar.d;
                if (i10 < gridLayoutManager.f1627b) {
                    uVar.d = i10 + 1;
                }
            } else {
                int i11 = uVar.d;
                if (i11 > (-gridLayoutManager.f1627b)) {
                    uVar.d = i11 - 1;
                }
            }
        }
        if (this.d == 0) {
            i6 = 4;
            if (getLayoutDirection() != 1 ? !z7 : z7) {
                i6 = 3;
            }
        } else {
            i6 = z7 ? 2 : 1;
        }
        if (this.f1635l == null) {
            this.f1635l = (AudioManager) this.f1628c.getContext().getSystemService("audio");
        }
        this.f1635l.playSoundEffect(i6);
    }

    public final boolean y(boolean z7) {
        if (this.f1646w != 0 || this.f1647x == null) {
            return false;
        }
        p pVar = this.G;
        p.h[] hVarArrJ = pVar == null ? null : pVar.j(pVar.f, pVar.f1873g);
        boolean z10 = false;
        int i6 = -1;
        for (int i10 = 0; i10 < this.E; i10++) {
            p.h hVar = hVarArrJ == null ? null : hVarArrJ[i10];
            int iC = hVar == null ? 0 : hVar.c();
            int i11 = -1;
            for (int i12 = 0; i12 < iC; i12 += 2) {
                int iB = hVar.b(i12 + 1);
                for (int iB2 = hVar.b(i12); iB2 <= iB; iB2++) {
                    View viewFindViewByPosition = findViewByPosition(iB2 - this.f1631h);
                    if (viewFindViewByPosition != null) {
                        if (z7) {
                            v(viewFindViewByPosition);
                        }
                        int i13 = this.d == 0 ? i(viewFindViewByPosition) : j(viewFindViewByPosition);
                        if (i13 > i11) {
                            i11 = i13;
                        }
                    }
                }
            }
            int iB3 = this.f1630g.b();
            if (!this.f1628c.hasFixedSize() && z7 && i11 < 0 && iB3 > 0) {
                if (i6 < 0) {
                    int i14 = this.f1639p;
                    if (i14 < 0) {
                        i14 = 0;
                    } else if (i14 >= iB3) {
                        i14 = iB3 - 1;
                    }
                    if (getChildCount() > 0) {
                        int layoutPosition = this.f1628c.getChildViewHolder(getChildAt(0)).getLayoutPosition();
                        int layoutPosition2 = this.f1628c.getChildViewHolder(getChildAt(getChildCount() - 1)).getLayoutPosition();
                        if (i14 >= layoutPosition && i14 <= layoutPosition2) {
                            i14 = i14 - layoutPosition <= layoutPosition2 - i14 ? layoutPosition - 1 : layoutPosition2 + 1;
                            if (i14 < 0 && layoutPosition2 < iB3 - 1) {
                                i14 = layoutPosition2 + 1;
                            } else if (i14 >= iB3 && layoutPosition > 0) {
                                i14 = layoutPosition - 1;
                            }
                        }
                    }
                    if (i14 >= 0 && i14 < iB3) {
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
                        View view = this.f1636m.l(i14, Long.MAX_VALUE).itemView;
                        int[] iArr = this.M;
                        if (view != null) {
                            t tVar = (t) view.getLayoutParams();
                            Rect rect = R;
                            calculateItemDecorationsForChild(view, rect);
                            view.measure(ViewGroup.getChildMeasureSpec(iMakeMeasureSpec, getPaddingRight() + getPaddingLeft() + ((ViewGroup.MarginLayoutParams) tVar).leftMargin + ((ViewGroup.MarginLayoutParams) tVar).rightMargin + rect.left + rect.right, ((ViewGroup.MarginLayoutParams) tVar).width), ViewGroup.getChildMeasureSpec(iMakeMeasureSpec2, getPaddingBottom() + getPaddingTop() + ((ViewGroup.MarginLayoutParams) tVar).topMargin + ((ViewGroup.MarginLayoutParams) tVar).bottomMargin + rect.top + rect.bottom, ((ViewGroup.MarginLayoutParams) tVar).height));
                            iArr[0] = j(view);
                            iArr[1] = i(view);
                            this.f1636m.i(view);
                        }
                        i6 = this.d == 0 ? iArr[1] : iArr[0];
                    }
                }
                if (i6 >= 0) {
                    i11 = i6;
                }
            }
            if (i11 < 0) {
                i11 = 0;
            }
            int[] iArr2 = this.f1647x;
            if (iArr2[i10] != i11) {
                iArr2[i10] = i11;
                z10 = true;
            }
        }
        return z10;
    }

    public final int z(int i6, boolean z7) {
        o oVarK;
        p pVar = this.G;
        if (pVar == null) {
            return i6;
        }
        int i10 = this.f1639p;
        int i11 = (i10 == -1 || (oVarK = pVar.k(i10)) == null) ? -1 : oVarK.f1866a;
        int childCount = getChildCount();
        View view = null;
        for (int i12 = 0; i12 < childCount && i6 != 0; i12++) {
            int i13 = i6 > 0 ? i12 : (childCount - 1) - i12;
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() == 0 && (!hasFocus() || childAt.hasFocusable())) {
                int iH = h(getChildAt(i13));
                o oVarK2 = this.G.k(iH);
                int i14 = oVarK2 == null ? -1 : oVarK2.f1866a;
                if (i11 == -1) {
                    i10 = iH;
                    view = childAt;
                    i11 = i14;
                } else if (i14 == i11 && ((i6 > 0 && iH > i10) || (i6 < 0 && iH < i10))) {
                    i6 = i6 > 0 ? i6 - 1 : i6 + 1;
                    i10 = iH;
                    view = childAt;
                }
            }
        }
        if (view != null) {
            if (z7) {
                if (hasFocus()) {
                    this.f1637n |= 32;
                    view.requestFocus();
                    this.f1637n &= -33;
                }
                this.f1639p = i10;
            } else {
                H(view, true);
            }
        }
        return i6;
    }

    public GridLayoutManager(j jVar) {
        this.f1626a = 1.0f;
        this.f1627b = 10;
        this.d = 0;
        this.f1629e = new androidx.recyclerview.widget.b0(this);
        this.f1633j = new SparseIntArray();
        this.f1637n = 221696;
        this.f1638o = null;
        this.f1639p = -1;
        this.f1642s = 0;
        this.D = 8388659;
        this.F = 1;
        this.H = 0;
        this.I = new a0.f(1);
        this.J = new a1.b(9);
        this.M = new int[2];
        j1 j1Var = new j1();
        j1Var.f1845a = 0;
        j1Var.f1846b = 100;
        this.N = j1Var;
        this.P = new a(1, this);
        this.Q = new q(this);
        this.f1628c = jVar;
        this.f1643t = -1;
        setItemPrefetchEnabled(false);
    }

    @Override // androidx.recyclerview.widget.x0
    public final RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof t) {
            return new t((t) layoutParams);
        }
        if (layoutParams instanceof RecyclerView.LayoutParams) {
            return new t((RecyclerView.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new t((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new t(layoutParams);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onLayoutCompleted(l1 l1Var) {
    }
}
