package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class StaggeredGridLayoutManager extends x0 implements j1 {

    /* renamed from: a, reason: collision with root package name */
    public final int f2764a;

    /* renamed from: b, reason: collision with root package name */
    public final y1[] f2765b;

    /* renamed from: c, reason: collision with root package name */
    public final d0 f2766c;
    public final d0 d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2767e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final v f2768g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f2769h;

    /* renamed from: j, reason: collision with root package name */
    public final BitSet f2771j;

    /* renamed from: m, reason: collision with root package name */
    public final w1 f2774m;

    /* renamed from: n, reason: collision with root package name */
    public final int f2775n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f2776o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f2777p;

    /* renamed from: q, reason: collision with root package name */
    public SavedState f2778q;

    /* renamed from: r, reason: collision with root package name */
    public int f2779r;

    /* renamed from: s, reason: collision with root package name */
    public final Rect f2780s;

    /* renamed from: t, reason: collision with root package name */
    public final u1 f2781t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f2782u;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f2783v;

    /* renamed from: w, reason: collision with root package name */
    public int[] f2784w;

    /* renamed from: x, reason: collision with root package name */
    public final m f2785x;

    /* renamed from: i, reason: collision with root package name */
    public boolean f2770i = false;

    /* renamed from: k, reason: collision with root package name */
    public int f2772k = -1;

    /* renamed from: l, reason: collision with root package name */
    public int f2773l = Integer.MIN_VALUE;

    /* compiled from: MyApplication */
    public static class LayoutParams extends RecyclerView.LayoutParams {

        /* renamed from: e, reason: collision with root package name */
        public y1 f2786e;
        public boolean f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* compiled from: MyApplication */
    @SuppressLint({"BanParcelableUsage"})
    public static class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new x1();

        /* renamed from: a, reason: collision with root package name */
        public int f2790a;

        /* renamed from: b, reason: collision with root package name */
        public int f2791b;

        /* renamed from: c, reason: collision with root package name */
        public int f2792c;
        public int[] d;

        /* renamed from: e, reason: collision with root package name */
        public int f2793e;
        public int[] f;

        /* renamed from: g, reason: collision with root package name */
        public ArrayList f2794g;

        /* renamed from: h, reason: collision with root package name */
        public boolean f2795h;

        /* renamed from: i, reason: collision with root package name */
        public boolean f2796i;

        /* renamed from: j, reason: collision with root package name */
        public boolean f2797j;

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i6) {
            parcel.writeInt(this.f2790a);
            parcel.writeInt(this.f2791b);
            parcel.writeInt(this.f2792c);
            if (this.f2792c > 0) {
                parcel.writeIntArray(this.d);
            }
            parcel.writeInt(this.f2793e);
            if (this.f2793e > 0) {
                parcel.writeIntArray(this.f);
            }
            parcel.writeInt(this.f2795h ? 1 : 0);
            parcel.writeInt(this.f2796i ? 1 : 0);
            parcel.writeInt(this.f2797j ? 1 : 0);
            parcel.writeList(this.f2794g);
        }
    }

    public StaggeredGridLayoutManager(Context context, AttributeSet attributeSet, int i6, int i10) {
        this.f2764a = -1;
        this.f2769h = false;
        w1 w1Var = new w1();
        this.f2774m = w1Var;
        this.f2775n = 2;
        this.f2780s = new Rect();
        this.f2781t = new u1(this);
        this.f2782u = false;
        this.f2783v = true;
        this.f2785x = new m(1, this);
        RecyclerView$LayoutManager$Properties properties = x0.getProperties(context, attributeSet, i6, i10);
        int i11 = properties.f2757a;
        if (i11 != 0 && i11 != 1) {
            throw new IllegalArgumentException("invalid orientation.");
        }
        assertNotInLayoutOrScroll(null);
        if (i11 != this.f2767e) {
            this.f2767e = i11;
            d0 d0Var = this.f2766c;
            this.f2766c = this.d;
            this.d = d0Var;
            requestLayout();
        }
        int i12 = properties.f2758b;
        assertNotInLayoutOrScroll(null);
        if (i12 != this.f2764a) {
            w1Var.b();
            requestLayout();
            this.f2764a = i12;
            this.f2771j = new BitSet(this.f2764a);
            this.f2765b = new y1[this.f2764a];
            for (int i13 = 0; i13 < this.f2764a; i13++) {
                this.f2765b[i13] = new y1(this, i13);
            }
            requestLayout();
        }
        boolean z7 = properties.f2759c;
        assertNotInLayoutOrScroll(null);
        SavedState savedState = this.f2778q;
        if (savedState != null && savedState.f2795h != z7) {
            savedState.f2795h = z7;
        }
        this.f2769h = z7;
        requestLayout();
        v vVar = new v();
        vVar.f2960a = true;
        vVar.f = 0;
        vVar.f2964g = 0;
        this.f2768g = vVar;
        this.f2766c = d0.a(this, this.f2767e);
        this.d = d0.a(this, 1 - this.f2767e);
    }

    public static int F(int i6, int i10, int i11) {
        if (i10 == 0 && i11 == 0) {
            return i6;
        }
        int mode = View.MeasureSpec.getMode(i6);
        return (mode == Integer.MIN_VALUE || mode == 1073741824) ? View.MeasureSpec.makeMeasureSpec(Math.max(0, (View.MeasureSpec.getSize(i6) - i10) - i11), mode) : i6;
    }

    public final void A() {
        if (this.f2767e == 1 || !isLayoutRTL()) {
            this.f2770i = this.f2769h;
        } else {
            this.f2770i = !this.f2769h;
        }
    }

    public final void B(int i6) {
        v vVar = this.f2768g;
        vVar.f2963e = i6;
        vVar.d = this.f2770i != (i6 == -1) ? -1 : 1;
    }

    public final void C(int i6, int i10) {
        for (int i11 = 0; i11 < this.f2764a; i11++) {
            if (!this.f2765b[i11].f2987a.isEmpty()) {
                E(this.f2765b[i11], i6, i10);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0048  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void D(int r5, androidx.recyclerview.widget.l1 r6) {
        /*
            r4 = this;
            androidx.recyclerview.widget.v r0 = r4.f2768g
            r1 = 0
            r0.f2961b = r1
            r0.f2962c = r5
            boolean r2 = r4.isSmoothScrolling()
            r3 = 1
            if (r2 == 0) goto L2d
            int r6 = r6.f2886a
            r2 = -1
            if (r6 == r2) goto L2d
            boolean r2 = r4.f2770i
            if (r6 >= r5) goto L19
            r5 = 1
            goto L1a
        L19:
            r5 = 0
        L1a:
            if (r2 != r5) goto L24
            androidx.recyclerview.widget.d0 r5 = r4.f2766c
            int r5 = r5.l()
        L22:
            r6 = 0
            goto L2f
        L24:
            androidx.recyclerview.widget.d0 r5 = r4.f2766c
            int r5 = r5.l()
            r6 = r5
            r5 = 0
            goto L2f
        L2d:
            r5 = 0
            goto L22
        L2f:
            boolean r2 = r4.getClipToPadding()
            if (r2 == 0) goto L48
            androidx.recyclerview.widget.d0 r2 = r4.f2766c
            int r2 = r2.k()
            int r2 = r2 - r6
            r0.f = r2
            androidx.recyclerview.widget.d0 r6 = r4.f2766c
            int r6 = r6.g()
            int r6 = r6 + r5
            r0.f2964g = r6
            goto L54
        L48:
            androidx.recyclerview.widget.d0 r2 = r4.f2766c
            int r2 = r2.f()
            int r2 = r2 + r5
            r0.f2964g = r2
            int r5 = -r6
            r0.f = r5
        L54:
            r0.f2965h = r1
            r0.f2960a = r3
            androidx.recyclerview.widget.d0 r5 = r4.f2766c
            int r5 = r5.i()
            if (r5 != 0) goto L69
            androidx.recyclerview.widget.d0 r5 = r4.f2766c
            int r5 = r5.f()
            if (r5 != 0) goto L69
            r1 = 1
        L69:
            r0.f2966i = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.D(int, androidx.recyclerview.widget.l1):void");
    }

    public final void E(y1 y1Var, int i6, int i10) {
        int i11 = y1Var.d;
        int i12 = y1Var.f2990e;
        if (i6 == -1) {
            int i13 = y1Var.f2988b;
            if (i13 == Integer.MIN_VALUE) {
                y1Var.c();
                i13 = y1Var.f2988b;
            }
            if (i13 + i11 <= i10) {
                this.f2771j.set(i12, false);
                return;
            }
            return;
        }
        int i14 = y1Var.f2989c;
        if (i14 == Integer.MIN_VALUE) {
            y1Var.b();
            i14 = y1Var.f2989c;
        }
        if (i14 - i11 >= i10) {
            this.f2771j.set(i12, false);
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void assertNotInLayoutOrScroll(String str) {
        if (this.f2778q == null) {
            super.assertNotInLayoutOrScroll(str);
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean canScrollHorizontally() {
        return this.f2767e == 0;
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean canScrollVertically() {
        return this.f2767e == 1;
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean checkLayoutParams(RecyclerView.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // androidx.recyclerview.widget.x0
    public final void collectAdjacentPrefetchPositions(int i6, int i10, l1 l1Var, w0 w0Var) {
        v vVar;
        int iH;
        int iJ;
        if (this.f2767e != 0) {
            i6 = i10;
        }
        if (getChildCount() == 0 || i6 == 0) {
            return;
        }
        w(i6, l1Var);
        int[] iArr = this.f2784w;
        if (iArr == null || iArr.length < this.f2764a) {
            this.f2784w = new int[this.f2764a];
        }
        int i11 = 0;
        int i12 = 0;
        while (true) {
            int i13 = this.f2764a;
            vVar = this.f2768g;
            if (i11 >= i13) {
                break;
            }
            if (vVar.d == -1) {
                iH = vVar.f;
                iJ = this.f2765b[i11].j(iH);
            } else {
                iH = this.f2765b[i11].h(vVar.f2964g);
                iJ = vVar.f2964g;
            }
            int i14 = iH - iJ;
            if (i14 >= 0) {
                this.f2784w[i12] = i14;
                i12++;
            }
            i11++;
        }
        Arrays.sort(this.f2784w, 0, i12);
        for (int i15 = 0; i15 < i12; i15++) {
            int i16 = vVar.f2962c;
            if (i16 < 0 || i16 >= l1Var.b()) {
                return;
            }
            ((r) w0Var).a(vVar.f2962c, this.f2784w[i15]);
            vVar.f2962c += vVar.d;
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final int computeHorizontalScrollExtent(l1 l1Var) {
        return f(l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public final int computeHorizontalScrollOffset(l1 l1Var) {
        return g(l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public final int computeHorizontalScrollRange(l1 l1Var) {
        return h(l1Var);
    }

    @Override // androidx.recyclerview.widget.j1
    public final PointF computeScrollVectorForPosition(int i6) {
        int iD = d(i6);
        PointF pointF = new PointF();
        if (iD == 0) {
            return null;
        }
        if (this.f2767e == 0) {
            pointF.x = iD;
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = iD;
        }
        return pointF;
    }

    @Override // androidx.recyclerview.widget.x0
    public final int computeVerticalScrollExtent(l1 l1Var) {
        return f(l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public final int computeVerticalScrollOffset(l1 l1Var) {
        return g(l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public final int computeVerticalScrollRange(l1 l1Var) {
        return h(l1Var);
    }

    public final int d(int i6) {
        if (getChildCount() == 0) {
            return this.f2770i ? 1 : -1;
        }
        return (i6 < n()) != this.f2770i ? -1 : 1;
    }

    public final boolean e() {
        int iN;
        int iO;
        if (getChildCount() == 0 || this.f2775n == 0 || !isAttachedToWindow()) {
            return false;
        }
        if (this.f2770i) {
            iN = o();
            iO = n();
        } else {
            iN = n();
            iO = o();
        }
        w1 w1Var = this.f2774m;
        if (iN == 0 && s() != null) {
            w1Var.b();
            requestSimpleAnimationsInNextLayout();
            requestLayout();
            return true;
        }
        if (!this.f2782u) {
            return false;
        }
        int i6 = this.f2770i ? -1 : 1;
        int i10 = iO + 1;
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItemE = w1Var.e(iN, i10, i6);
        if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItemE == null) {
            this.f2782u = false;
            w1Var.d(i10);
            return false;
        }
        StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItemE2 = w1Var.e(iN, staggeredGridLayoutManager$LazySpanLookup$FullSpanItemE.f2787a, i6 * (-1));
        if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItemE2 == null) {
            w1Var.d(staggeredGridLayoutManager$LazySpanLookup$FullSpanItemE.f2787a);
        } else {
            w1Var.d(staggeredGridLayoutManager$LazySpanLookup$FullSpanItemE2.f2787a + 1);
        }
        requestSimpleAnimationsInNextLayout();
        requestLayout();
        return true;
    }

    public final int f(l1 l1Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        d0 d0Var = this.f2766c;
        boolean z7 = !this.f2783v;
        return r4.b.f(l1Var, d0Var, k(z7), j(z7), this, this.f2783v);
    }

    public final int g(l1 l1Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        d0 d0Var = this.f2766c;
        boolean z7 = !this.f2783v;
        return r4.b.g(l1Var, d0Var, k(z7), j(z7), this, this.f2783v, this.f2770i);
    }

    @Override // androidx.recyclerview.widget.x0
    public final RecyclerView.LayoutParams generateDefaultLayoutParams() {
        return this.f2767e == 0 ? new LayoutParams(-2, -1) : new LayoutParams(-1, -2);
    }

    @Override // androidx.recyclerview.widget.x0
    public final RecyclerView.LayoutParams generateLayoutParams(Context context, AttributeSet attributeSet) {
        return new LayoutParams(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getColumnCountForAccessibility(e1 e1Var, l1 l1Var) {
        if (this.f2767e == 1) {
            return Math.min(this.f2764a, l1Var.b());
        }
        return -1;
    }

    @Override // androidx.recyclerview.widget.x0
    public final int getRowCountForAccessibility(e1 e1Var, l1 l1Var) {
        if (this.f2767e == 0) {
            return Math.min(this.f2764a, l1Var.b());
        }
        return -1;
    }

    public final int h(l1 l1Var) {
        if (getChildCount() == 0) {
            return 0;
        }
        d0 d0Var = this.f2766c;
        boolean z7 = !this.f2783v;
        return r4.b.h(l1Var, d0Var, k(z7), j(z7), this, this.f2783v);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x031f  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x034f  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x038a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int i(androidx.recyclerview.widget.e1 r21, androidx.recyclerview.widget.v r22, androidx.recyclerview.widget.l1 r23) {
        /*
            Method dump skipped, instructions count: 980
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.i(androidx.recyclerview.widget.e1, androidx.recyclerview.widget.v, androidx.recyclerview.widget.l1):int");
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean isAutoMeasureEnabled() {
        return this.f2775n != 0;
    }

    public final boolean isLayoutRTL() {
        return getLayoutDirection() == 1;
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean isLayoutReversed() {
        return this.f2769h;
    }

    public final View j(boolean z7) {
        int iK = this.f2766c.k();
        int iG = this.f2766c.g();
        View view = null;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            int iE = this.f2766c.e(childAt);
            int iB = this.f2766c.b(childAt);
            if (iB > iK && iE < iG) {
                if (iB <= iG || !z7) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final View k(boolean z7) {
        int iK = this.f2766c.k();
        int iG = this.f2766c.g();
        int childCount = getChildCount();
        View view = null;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            int iE = this.f2766c.e(childAt);
            if (this.f2766c.b(childAt) > iK && iE < iG) {
                if (iE >= iK || !z7) {
                    return childAt;
                }
                if (view == null) {
                    view = childAt;
                }
            }
        }
        return view;
    }

    public final void l(e1 e1Var, l1 l1Var, boolean z7) {
        int iG;
        int iP = p(Integer.MIN_VALUE);
        if (iP != Integer.MIN_VALUE && (iG = this.f2766c.g() - iP) > 0) {
            int i6 = iG - (-scrollBy(-iG, e1Var, l1Var));
            if (!z7 || i6 <= 0) {
                return;
            }
            this.f2766c.p(i6);
        }
    }

    public final void m(e1 e1Var, l1 l1Var, boolean z7) {
        int iK;
        int iQ = q(Integer.MAX_VALUE);
        if (iQ != Integer.MAX_VALUE && (iK = iQ - this.f2766c.k()) > 0) {
            int iScrollBy = iK - scrollBy(iK, e1Var, l1Var);
            if (!z7 || iScrollBy <= 0) {
                return;
            }
            this.f2766c.p(-iScrollBy);
        }
    }

    public final int n() {
        if (getChildCount() == 0) {
            return 0;
        }
        return getPosition(getChildAt(0));
    }

    public final int o() {
        int childCount = getChildCount();
        if (childCount == 0) {
            return 0;
        }
        return getPosition(getChildAt(childCount - 1));
    }

    @Override // androidx.recyclerview.widget.x0
    public final void offsetChildrenHorizontal(int i6) {
        super.offsetChildrenHorizontal(i6);
        for (int i10 = 0; i10 < this.f2764a; i10++) {
            y1 y1Var = this.f2765b[i10];
            int i11 = y1Var.f2988b;
            if (i11 != Integer.MIN_VALUE) {
                y1Var.f2988b = i11 + i6;
            }
            int i12 = y1Var.f2989c;
            if (i12 != Integer.MIN_VALUE) {
                y1Var.f2989c = i12 + i6;
            }
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void offsetChildrenVertical(int i6) {
        super.offsetChildrenVertical(i6);
        for (int i10 = 0; i10 < this.f2764a; i10++) {
            y1 y1Var = this.f2765b[i10];
            int i11 = y1Var.f2988b;
            if (i11 != Integer.MIN_VALUE) {
                y1Var.f2988b = i11 + i6;
            }
            int i12 = y1Var.f2989c;
            if (i12 != Integer.MIN_VALUE) {
                y1Var.f2989c = i12 + i6;
            }
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onAdapterChanged(k0 k0Var, k0 k0Var2) {
        this.f2774m.b();
        for (int i6 = 0; i6 < this.f2764a; i6++) {
            this.f2765b[i6].d();
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onDetachedFromWindow(RecyclerView recyclerView, e1 e1Var) {
        onDetachedFromWindow(recyclerView);
        removeCallbacks(this.f2785x);
        for (int i6 = 0; i6 < this.f2764a; i6++) {
            this.f2765b[i6].d();
        }
        recyclerView.requestLayout();
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x004e  */
    @Override // androidx.recyclerview.widget.x0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View onFocusSearchFailed(android.view.View r10, int r11, androidx.recyclerview.widget.e1 r12, androidx.recyclerview.widget.l1 r13) {
        /*
            Method dump skipped, instructions count: 333
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.onFocusSearchFailed(android.view.View, int, androidx.recyclerview.widget.e1, androidx.recyclerview.widget.l1):android.view.View");
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        if (getChildCount() > 0) {
            View viewK = k(false);
            View viewJ = j(false);
            if (viewK == null || viewJ == null) {
                return;
            }
            int position = getPosition(viewK);
            int position2 = getPosition(viewJ);
            if (position < position2) {
                accessibilityEvent.setFromIndex(position);
                accessibilityEvent.setToIndex(position2);
            } else {
                accessibilityEvent.setFromIndex(position2);
                accessibilityEvent.setToIndex(position);
            }
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onInitializeAccessibilityNodeInfo(e1 e1Var, l1 l1Var, o0.h hVar) {
        super.onInitializeAccessibilityNodeInfo(e1Var, l1Var, hVar);
        hVar.i("androidx.recyclerview.widget.StaggeredGridLayoutManager");
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onInitializeAccessibilityNodeInfoForItem(e1 e1Var, l1 l1Var, View view, o0.h hVar) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof LayoutParams)) {
            super.onInitializeAccessibilityNodeInfoForItem(view, hVar);
            return;
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        if (this.f2767e == 0) {
            y1 y1Var = layoutParams2.f2786e;
            hVar.k(o0.g.a(y1Var == null ? -1 : y1Var.f2990e, layoutParams2.f ? this.f2764a : 1, -1, -1, false));
        } else {
            y1 y1Var2 = layoutParams2.f2786e;
            hVar.k(o0.g.a(-1, -1, y1Var2 == null ? -1 : y1Var2.f2990e, layoutParams2.f ? this.f2764a : 1, false));
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsAdded(RecyclerView recyclerView, int i6, int i10) {
        r(i6, i10, 1);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsChanged(RecyclerView recyclerView) {
        this.f2774m.b();
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsMoved(RecyclerView recyclerView, int i6, int i10, int i11) {
        r(i6, i10, 8);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsRemoved(RecyclerView recyclerView, int i6, int i10) {
        r(i6, i10, 2);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onItemsUpdated(RecyclerView recyclerView, int i6, int i10, Object obj) {
        r(i6, i10, 4);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onLayoutChildren(e1 e1Var, l1 l1Var) {
        u(e1Var, l1Var, true);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onLayoutCompleted(l1 l1Var) {
        this.f2772k = -1;
        this.f2773l = Integer.MIN_VALUE;
        this.f2778q = null;
        this.f2781t.a();
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            SavedState savedState = (SavedState) parcelable;
            this.f2778q = savedState;
            if (this.f2772k != -1) {
                savedState.d = null;
                savedState.f2792c = 0;
                savedState.f2790a = -1;
                savedState.f2791b = -1;
                savedState.d = null;
                savedState.f2792c = 0;
                savedState.f2793e = 0;
                savedState.f = null;
                savedState.f2794g = null;
            }
            requestLayout();
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final Parcelable onSaveInstanceState() {
        int iJ;
        int iK;
        int[] iArr;
        SavedState savedState = this.f2778q;
        if (savedState != null) {
            SavedState savedState2 = new SavedState();
            savedState2.f2792c = savedState.f2792c;
            savedState2.f2790a = savedState.f2790a;
            savedState2.f2791b = savedState.f2791b;
            savedState2.d = savedState.d;
            savedState2.f2793e = savedState.f2793e;
            savedState2.f = savedState.f;
            savedState2.f2795h = savedState.f2795h;
            savedState2.f2796i = savedState.f2796i;
            savedState2.f2797j = savedState.f2797j;
            savedState2.f2794g = savedState.f2794g;
            return savedState2;
        }
        SavedState savedState3 = new SavedState();
        savedState3.f2795h = this.f2769h;
        savedState3.f2796i = this.f2776o;
        savedState3.f2797j = this.f2777p;
        w1 w1Var = this.f2774m;
        if (w1Var == null || (iArr = w1Var.f2972a) == null) {
            savedState3.f2793e = 0;
        } else {
            savedState3.f = iArr;
            savedState3.f2793e = iArr.length;
            savedState3.f2794g = w1Var.f2973b;
        }
        if (getChildCount() > 0) {
            savedState3.f2790a = this.f2776o ? o() : n();
            View viewJ = this.f2770i ? j(true) : k(true);
            savedState3.f2791b = viewJ != null ? getPosition(viewJ) : -1;
            int i6 = this.f2764a;
            savedState3.f2792c = i6;
            savedState3.d = new int[i6];
            for (int i10 = 0; i10 < this.f2764a; i10++) {
                if (this.f2776o) {
                    iJ = this.f2765b[i10].h(Integer.MIN_VALUE);
                    if (iJ != Integer.MIN_VALUE) {
                        iK = this.f2766c.g();
                        iJ -= iK;
                    }
                } else {
                    iJ = this.f2765b[i10].j(Integer.MIN_VALUE);
                    if (iJ != Integer.MIN_VALUE) {
                        iK = this.f2766c.k();
                        iJ -= iK;
                    }
                }
                savedState3.d[i10] = iJ;
            }
        } else {
            savedState3.f2790a = -1;
            savedState3.f2791b = -1;
            savedState3.f2792c = 0;
        }
        return savedState3;
    }

    @Override // androidx.recyclerview.widget.x0
    public final void onScrollStateChanged(int i6) {
        if (i6 == 0) {
            e();
        }
    }

    public final int p(int i6) {
        int iH = this.f2765b[0].h(i6);
        for (int i10 = 1; i10 < this.f2764a; i10++) {
            int iH2 = this.f2765b[i10].h(i6);
            if (iH2 > iH) {
                iH = iH2;
            }
        }
        return iH;
    }

    public final int q(int i6) {
        int iJ = this.f2765b[0].j(i6);
        for (int i10 = 1; i10 < this.f2764a; i10++) {
            int iJ2 = this.f2765b[i10].j(i6);
            if (iJ2 < iJ) {
                iJ = iJ2;
            }
        }
        return iJ;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void r(int r8, int r9, int r10) {
        /*
            r7 = this;
            boolean r0 = r7.f2770i
            if (r0 == 0) goto L9
            int r0 = r7.o()
            goto Ld
        L9:
            int r0 = r7.n()
        Ld:
            r1 = 8
            if (r10 != r1) goto L1b
            if (r8 >= r9) goto L17
            int r2 = r9 + 1
        L15:
            r3 = r8
            goto L1e
        L17:
            int r2 = r8 + 1
            r3 = r9
            goto L1e
        L1b:
            int r2 = r8 + r9
            goto L15
        L1e:
            androidx.recyclerview.widget.w1 r4 = r7.f2774m
            r4.g(r3)
            r5 = 1
            if (r10 == r5) goto L37
            r6 = 2
            if (r10 == r6) goto L33
            if (r10 == r1) goto L2c
            goto L3a
        L2c:
            r4.i(r8, r5)
            r4.h(r9, r5)
            goto L3a
        L33:
            r4.i(r8, r9)
            goto L3a
        L37:
            r4.h(r8, r9)
        L3a:
            if (r2 > r0) goto L3d
            return
        L3d:
            boolean r8 = r7.f2770i
            if (r8 == 0) goto L46
            int r8 = r7.n()
            goto L4a
        L46:
            int r8 = r7.o()
        L4a:
            if (r3 > r8) goto L4f
            r7.requestLayout()
        L4f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.r(int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View s() {
        /*
            Method dump skipped, instructions count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.s():android.view.View");
    }

    public final int scrollBy(int i6, e1 e1Var, l1 l1Var) {
        if (getChildCount() == 0 || i6 == 0) {
            return 0;
        }
        w(i6, l1Var);
        v vVar = this.f2768g;
        int i10 = i(e1Var, vVar, l1Var);
        if (vVar.f2961b >= i10) {
            i6 = i6 < 0 ? -i10 : i10;
        }
        this.f2766c.p(-i6);
        this.f2776o = this.f2770i;
        vVar.f2961b = 0;
        x(e1Var, vVar);
        return i6;
    }

    @Override // androidx.recyclerview.widget.x0
    public final int scrollHorizontallyBy(int i6, e1 e1Var, l1 l1Var) {
        return scrollBy(i6, e1Var, l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void scrollToPosition(int i6) {
        SavedState savedState = this.f2778q;
        if (savedState != null && savedState.f2790a != i6) {
            savedState.d = null;
            savedState.f2792c = 0;
            savedState.f2790a = -1;
            savedState.f2791b = -1;
        }
        this.f2772k = i6;
        this.f2773l = Integer.MIN_VALUE;
        requestLayout();
    }

    @Override // androidx.recyclerview.widget.x0
    public final int scrollVerticallyBy(int i6, e1 e1Var, l1 l1Var) {
        return scrollBy(i6, e1Var, l1Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void setMeasuredDimension(Rect rect, int i6, int i10) {
        int iChooseSize;
        int iChooseSize2;
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.f2767e == 1) {
            iChooseSize2 = x0.chooseSize(i10, rect.height() + paddingBottom, getMinimumHeight());
            iChooseSize = x0.chooseSize(i6, (this.f * this.f2764a) + paddingRight, getMinimumWidth());
        } else {
            iChooseSize = x0.chooseSize(i6, rect.width() + paddingRight, getMinimumWidth());
            iChooseSize2 = x0.chooseSize(i10, (this.f * this.f2764a) + paddingBottom, getMinimumHeight());
        }
        setMeasuredDimension(iChooseSize, iChooseSize2);
    }

    @Override // androidx.recyclerview.widget.x0
    public final void smoothScrollToPosition(RecyclerView recyclerView, l1 l1Var, int i6) {
        a0 a0Var = new a0(recyclerView.getContext());
        a0Var.setTargetPosition(i6);
        startSmoothScroll(a0Var);
    }

    @Override // androidx.recyclerview.widget.x0
    public final boolean supportsPredictiveItemAnimations() {
        return this.f2778q == null;
    }

    public final void t(View view, int i6, int i10) {
        Rect rect = this.f2780s;
        calculateItemDecorationsForChild(view, rect);
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int iF = F(i6, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + rect.left, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin + rect.right);
        int iF2 = F(i10, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin + rect.top, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin + rect.bottom);
        if (shouldMeasureChild(view, iF, iF2, layoutParams)) {
            view.measure(iF, iF2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x041d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void u(androidx.recyclerview.widget.e1 r17, androidx.recyclerview.widget.l1 r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 1080
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.StaggeredGridLayoutManager.u(androidx.recyclerview.widget.e1, androidx.recyclerview.widget.l1, boolean):void");
    }

    public final boolean v(int i6) {
        if (this.f2767e == 0) {
            return (i6 == -1) != this.f2770i;
        }
        return ((i6 == -1) == this.f2770i) == isLayoutRTL();
    }

    public final void w(int i6, l1 l1Var) {
        int iN;
        int i10;
        if (i6 > 0) {
            iN = o();
            i10 = 1;
        } else {
            iN = n();
            i10 = -1;
        }
        v vVar = this.f2768g;
        vVar.f2960a = true;
        D(iN, l1Var);
        B(i10);
        vVar.f2962c = iN + vVar.d;
        vVar.f2961b = Math.abs(i6);
    }

    public final void x(e1 e1Var, v vVar) {
        if (!vVar.f2960a || vVar.f2966i) {
            return;
        }
        if (vVar.f2961b == 0) {
            if (vVar.f2963e == -1) {
                y(vVar.f2964g, e1Var);
                return;
            } else {
                z(vVar.f, e1Var);
                return;
            }
        }
        int i6 = 1;
        if (vVar.f2963e == -1) {
            int i10 = vVar.f;
            int iJ = this.f2765b[0].j(i10);
            while (i6 < this.f2764a) {
                int iJ2 = this.f2765b[i6].j(i10);
                if (iJ2 > iJ) {
                    iJ = iJ2;
                }
                i6++;
            }
            int i11 = i10 - iJ;
            y(i11 < 0 ? vVar.f2964g : vVar.f2964g - Math.min(i11, vVar.f2961b), e1Var);
            return;
        }
        int i12 = vVar.f2964g;
        int iH = this.f2765b[0].h(i12);
        while (i6 < this.f2764a) {
            int iH2 = this.f2765b[i6].h(i12);
            if (iH2 < iH) {
                iH = iH2;
            }
            i6++;
        }
        int i13 = iH - vVar.f2964g;
        z(i13 < 0 ? vVar.f : Math.min(i13, vVar.f2961b) + vVar.f, e1Var);
    }

    public final void y(int i6, e1 e1Var) {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (this.f2766c.e(childAt) < i6 || this.f2766c.o(childAt) < i6) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.f) {
                for (int i10 = 0; i10 < this.f2764a; i10++) {
                    if (this.f2765b[i10].f2987a.size() == 1) {
                        return;
                    }
                }
                for (int i11 = 0; i11 < this.f2764a; i11++) {
                    this.f2765b[i11].k();
                }
            } else if (layoutParams.f2786e.f2987a.size() == 1) {
                return;
            } else {
                layoutParams.f2786e.k();
            }
            removeAndRecycleView(childAt, e1Var);
        }
    }

    public final void z(int i6, e1 e1Var) {
        while (getChildCount() > 0) {
            View childAt = getChildAt(0);
            if (this.f2766c.b(childAt) > i6 || this.f2766c.n(childAt) > i6) {
                return;
            }
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (layoutParams.f) {
                for (int i10 = 0; i10 < this.f2764a; i10++) {
                    if (this.f2765b[i10].f2987a.size() == 1) {
                        return;
                    }
                }
                for (int i11 = 0; i11 < this.f2764a; i11++) {
                    this.f2765b[i11].l();
                }
            } else if (layoutParams.f2786e.f2987a.size() == 1) {
                return;
            } else {
                layoutParams.f2786e.l();
            }
            removeAndRecycleView(childAt, e1Var);
        }
    }

    @Override // androidx.recyclerview.widget.x0
    public final RecyclerView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }
}
