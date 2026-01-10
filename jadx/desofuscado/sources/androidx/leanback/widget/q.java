package androidx.leanback.widget;

import android.graphics.Rect;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements w0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f1913a;

    public /* synthetic */ q(Object obj) {
        this.f1913a = obj;
    }

    public void a(Object obj, int i6, int i10, int i11, int i12) {
        int i13;
        int i14;
        u uVar;
        int i15;
        View view = (View) obj;
        GridLayoutManager gridLayoutManager = (GridLayoutManager) this.f1913a;
        if (i12 == Integer.MIN_VALUE || i12 == Integer.MAX_VALUE) {
            if (gridLayoutManager.G.f1871c) {
                k1 k1Var = (k1) gridLayoutManager.I.d;
                i12 = k1Var.f1854i - k1Var.f1856k;
            } else {
                i12 = ((k1) gridLayoutManager.I.d).f1855j;
            }
        }
        if (gridLayoutManager.G.f1871c) {
            i13 = i12 - i10;
            i14 = i12;
        } else {
            i14 = i10 + i12;
            i13 = i12;
        }
        int iM = (gridLayoutManager.m(i11) + ((k1) gridLayoutManager.I.f40e).f1855j) - gridLayoutManager.f1644u;
        j1 j1Var = gridLayoutManager.N;
        if (((p.k) j1Var.f1847c) != null) {
            SparseArray<Parcelable> sparseArray = (SparseArray) ((p.k) j1Var.f1847c).e(Integer.toString(i6));
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
            }
        }
        ((GridLayoutManager) this.f1913a).t(view, i11, i13, i14, iM);
        if (!gridLayoutManager.f1630g.f2890g) {
            gridLayoutManager.O();
        }
        if ((gridLayoutManager.f1637n & 3) != 1 && (uVar = gridLayoutManager.f1641r) != null) {
            boolean z7 = uVar.f1927c;
            GridLayoutManager gridLayoutManager2 = uVar.f1928e;
            if (z7 && (i15 = uVar.d) != 0) {
                uVar.d = gridLayoutManager2.z(i15, true);
            }
            int i16 = uVar.d;
            if (i16 == 0 || ((i16 > 0 && gridLayoutManager2.r()) || (uVar.d < 0 && gridLayoutManager2.q()))) {
                uVar.setTargetPosition(gridLayoutManager2.f1639p);
                uVar.stop();
            }
        }
        gridLayoutManager.getClass();
    }

    public int b(int i6, boolean z7, Object[] objArr, boolean z10) {
        int i10;
        View viewFindViewByPosition;
        GridLayoutManager gridLayoutManager = (GridLayoutManager) this.f1913a;
        View viewP = gridLayoutManager.p(i6 - gridLayoutManager.f1631h);
        if (!((t) viewP.getLayoutParams()).f2760a.isRemoved()) {
            if (z10) {
                if (z7) {
                    gridLayoutManager.addDisappearingView(viewP);
                } else {
                    gridLayoutManager.addDisappearingView(viewP, 0);
                }
            } else if (z7) {
                gridLayoutManager.addView(viewP);
            } else {
                gridLayoutManager.addView(viewP, 0);
            }
            int i11 = gridLayoutManager.f1643t;
            if (i11 != -1) {
                viewP.setVisibility(i11);
            }
            u uVar = gridLayoutManager.f1641r;
            if (uVar != null && !uVar.f1927c && (i10 = uVar.d) != 0) {
                GridLayoutManager gridLayoutManager2 = uVar.f1928e;
                int i12 = i10 > 0 ? gridLayoutManager2.f1639p + gridLayoutManager2.E : gridLayoutManager2.f1639p - gridLayoutManager2.E;
                View view = null;
                while (uVar.d != 0 && (viewFindViewByPosition = uVar.findViewByPosition(i12)) != null) {
                    gridLayoutManager2.getClass();
                    if (viewFindViewByPosition.getVisibility() == 0 && (!gridLayoutManager2.hasFocus() || viewFindViewByPosition.hasFocusable())) {
                        gridLayoutManager2.f1639p = i12;
                        int i13 = uVar.d;
                        if (i13 > 0) {
                            uVar.d = i13 - 1;
                        } else {
                            uVar.d = i13 + 1;
                        }
                        view = viewFindViewByPosition;
                    }
                    i12 = uVar.d > 0 ? i12 + gridLayoutManager2.E : i12 - gridLayoutManager2.E;
                }
                if (view != null && gridLayoutManager2.hasFocus()) {
                    gridLayoutManager2.f1637n |= 32;
                    view.requestFocus();
                    gridLayoutManager2.f1637n &= -33;
                }
            }
            if (viewP.findFocus() != null) {
                ((t) viewP.getLayoutParams()).getClass();
            }
            int i14 = gridLayoutManager.f1637n;
            if ((i14 & 3) != 1) {
                if (i6 == gridLayoutManager.f1639p && gridLayoutManager.f1641r == null) {
                    gridLayoutManager.e();
                }
            } else if ((i14 & 4) == 0) {
                int i15 = i14 & 16;
                if (i15 == 0 && i6 == gridLayoutManager.f1639p) {
                    gridLayoutManager.e();
                } else if (i15 != 0 && i6 >= gridLayoutManager.f1639p && viewP.hasFocusable()) {
                    gridLayoutManager.f1639p = i6;
                    gridLayoutManager.f1637n &= -17;
                    gridLayoutManager.e();
                }
            }
            gridLayoutManager.v(viewP);
        }
        objArr[0] = viewP;
        return gridLayoutManager.d == 0 ? gridLayoutManager.j(viewP) : gridLayoutManager.i(viewP);
    }

    public int c() {
        GridLayoutManager gridLayoutManager = (GridLayoutManager) this.f1913a;
        return gridLayoutManager.f1630g.b() + gridLayoutManager.f1631h;
    }

    public int d(int i6) {
        GridLayoutManager gridLayoutManager = (GridLayoutManager) this.f1913a;
        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i6 - gridLayoutManager.f1631h);
        return (gridLayoutManager.f1637n & 262144) != 0 ? gridLayoutManager.f1629e.b(viewFindViewByPosition) : gridLayoutManager.f1629e.e(viewFindViewByPosition);
    }

    public int e(int i6) {
        GridLayoutManager gridLayoutManager = (GridLayoutManager) this.f1913a;
        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i6 - gridLayoutManager.f1631h);
        Rect rect = GridLayoutManager.R;
        gridLayoutManager.getDecoratedBoundsWithMargins(viewFindViewByPosition, rect);
        return gridLayoutManager.d == 0 ? rect.width() : rect.height();
    }

    public void f(int i6) {
        GridLayoutManager gridLayoutManager = (GridLayoutManager) this.f1913a;
        View viewFindViewByPosition = gridLayoutManager.findViewByPosition(i6 - gridLayoutManager.f1631h);
        if ((gridLayoutManager.f1637n & 3) == 1) {
            gridLayoutManager.detachAndScrapView(viewFindViewByPosition, gridLayoutManager.f1636m);
        } else {
            gridLayoutManager.removeAndRecycleView(viewFindViewByPosition, gridLayoutManager.f1636m);
        }
    }
}
