package androidx.recyclerview.widget;

import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class w1 {

    /* renamed from: a, reason: collision with root package name */
    public int[] f2972a;

    /* renamed from: b, reason: collision with root package name */
    public ArrayList f2973b;

    public final void a(StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem) {
        if (this.f2973b == null) {
            this.f2973b = new ArrayList();
        }
        int size = this.f2973b.size();
        for (int i6 = 0; i6 < size; i6++) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2 = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) this.f2973b.get(i6);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2.f2787a == staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2787a) {
                this.f2973b.remove(i6);
            }
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem2.f2787a >= staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2787a) {
                this.f2973b.add(i6, staggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
                return;
            }
        }
        this.f2973b.add(staggeredGridLayoutManager$LazySpanLookup$FullSpanItem);
    }

    public final void b() {
        int[] iArr = this.f2972a;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f2973b = null;
    }

    public final void c(int i6) {
        int[] iArr = this.f2972a;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i6, 10) + 1];
            this.f2972a = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i6 >= iArr.length) {
            int length = iArr.length;
            while (length <= i6) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f2972a = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = this.f2972a;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public final void d(int i6) {
        ArrayList arrayList = this.f2973b;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) this.f2973b.get(size)).f2787a >= i6) {
                    this.f2973b.remove(size);
                }
            }
        }
        g(i6);
    }

    public final StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem e(int i6, int i10, int i11) {
        ArrayList arrayList = this.f2973b;
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) this.f2973b.get(i12);
            int i13 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2787a;
            if (i13 >= i10) {
                return null;
            }
            if (i13 >= i6 && (i11 == 0 || staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2788b == i11 || staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.d)) {
                return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
            }
        }
        return null;
    }

    public final StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem f(int i6) {
        ArrayList arrayList = this.f2973b;
        if (arrayList == null) {
            return null;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) this.f2973b.get(size);
            if (staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2787a == i6) {
                return staggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int g(int r5) {
        /*
            r4 = this;
            int[] r0 = r4.f2972a
            r1 = -1
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r0.length
            if (r5 < r0) goto La
            return r1
        La:
            java.util.ArrayList r0 = r4.f2973b
            if (r0 != 0) goto L10
        Le:
            r0 = -1
            goto L46
        L10:
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = r4.f(r5)
            if (r0 == 0) goto L1b
            java.util.ArrayList r2 = r4.f2973b
            r2.remove(r0)
        L1b:
            java.util.ArrayList r0 = r4.f2973b
            int r0 = r0.size()
            r2 = 0
        L22:
            if (r2 >= r0) goto L34
            java.util.ArrayList r3 = r4.f2973b
            java.lang.Object r3 = r3.get(r2)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r3 = (androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) r3
            int r3 = r3.f2787a
            if (r3 < r5) goto L31
            goto L35
        L31:
            int r2 = r2 + 1
            goto L22
        L34:
            r2 = -1
        L35:
            if (r2 == r1) goto Le
            java.util.ArrayList r0 = r4.f2973b
            java.lang.Object r0 = r0.get(r2)
            androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem r0 = (androidx.recyclerview.widget.StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) r0
            java.util.ArrayList r3 = r4.f2973b
            r3.remove(r2)
            int r0 = r0.f2787a
        L46:
            if (r0 != r1) goto L52
            int[] r0 = r4.f2972a
            int r2 = r0.length
            java.util.Arrays.fill(r0, r5, r2, r1)
            int[] r5 = r4.f2972a
            int r5 = r5.length
            return r5
        L52:
            int r0 = r0 + 1
            int[] r2 = r4.f2972a
            int r2 = r2.length
            int r0 = java.lang.Math.min(r0, r2)
            int[] r2 = r4.f2972a
            java.util.Arrays.fill(r2, r5, r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.w1.g(int):int");
    }

    public final void h(int i6, int i10) {
        int[] iArr = this.f2972a;
        if (iArr == null || i6 >= iArr.length) {
            return;
        }
        int i11 = i6 + i10;
        c(i11);
        int[] iArr2 = this.f2972a;
        System.arraycopy(iArr2, i6, iArr2, i11, (iArr2.length - i6) - i10);
        Arrays.fill(this.f2972a, i6, i11, -1);
        ArrayList arrayList = this.f2973b;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) this.f2973b.get(size);
            int i12 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2787a;
            if (i12 >= i6) {
                staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2787a = i12 + i10;
            }
        }
    }

    public final void i(int i6, int i10) {
        int[] iArr = this.f2972a;
        if (iArr == null || i6 >= iArr.length) {
            return;
        }
        int i11 = i6 + i10;
        c(i11);
        int[] iArr2 = this.f2972a;
        System.arraycopy(iArr2, i11, iArr2, i6, (iArr2.length - i6) - i10);
        int[] iArr3 = this.f2972a;
        Arrays.fill(iArr3, iArr3.length - i10, iArr3.length, -1);
        ArrayList arrayList = this.f2973b;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem staggeredGridLayoutManager$LazySpanLookup$FullSpanItem = (StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem) this.f2973b.get(size);
            int i12 = staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2787a;
            if (i12 >= i6) {
                if (i12 < i11) {
                    this.f2973b.remove(size);
                } else {
                    staggeredGridLayoutManager$LazySpanLookup$FullSpanItem.f2787a = i12 - i10;
                }
            }
        }
    }
}
