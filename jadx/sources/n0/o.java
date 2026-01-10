package n0;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public ViewParent f8339a;

    /* renamed from: b, reason: collision with root package name */
    public ViewParent f8340b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewGroup f8341c;
    public boolean d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f8342e;

    public o(ViewGroup viewGroup) {
        this.f8341c = viewGroup;
    }

    public final boolean a(float f, float f3, boolean z7) {
        ViewParent viewParentE;
        if (!this.d || (viewParentE = e(0)) == null) {
            return false;
        }
        try {
            return y0.a(viewParentE, this.f8341c, f, f3, z7);
        } catch (AbstractMethodError e5) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onNestedFling", e5);
            return false;
        }
    }

    public final boolean b(float f, float f3) {
        ViewParent viewParentE;
        if (!this.d || (viewParentE = e(0)) == null) {
            return false;
        }
        try {
            return y0.b(viewParentE, this.f8341c, f, f3);
        } catch (AbstractMethodError e5) {
            Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onNestedPreFling", e5);
            return false;
        }
    }

    public final boolean c(int i6, int i10, int[] iArr, int[] iArr2, int i11) {
        ViewParent viewParentE;
        int i12;
        int i13;
        int[] iArr3;
        if (!this.d || (viewParentE = e(i11)) == null) {
            return false;
        }
        if (i6 == 0 && i10 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        ViewGroup viewGroup = this.f8341c;
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            i12 = iArr2[0];
            i13 = iArr2[1];
        } else {
            i12 = 0;
            i13 = 0;
        }
        if (iArr == null) {
            if (this.f8342e == null) {
                this.f8342e = new int[2];
            }
            iArr3 = this.f8342e;
        } else {
            iArr3 = iArr;
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        if (viewParentE instanceof p) {
            ((p) viewParentE).b(viewGroup, i6, i10, iArr3, i11);
        } else if (i11 == 0) {
            try {
                y0.c(viewParentE, viewGroup, i6, i10, iArr3);
            } catch (AbstractMethodError e5) {
                Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onNestedPreScroll", e5);
            }
        }
        if (iArr2 != null) {
            viewGroup.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i12;
            iArr2[1] = iArr2[1] - i13;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public final boolean d(int i6, int i10, int i11, int i12, int[] iArr, int i13, int[] iArr2) {
        ViewParent viewParentE;
        int i14;
        int i15;
        int[] iArr3;
        if (!this.d || (viewParentE = e(i13)) == null) {
            return false;
        }
        if (i6 == 0 && i10 == 0 && i11 == 0 && i12 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        ViewGroup viewGroup = this.f8341c;
        if (iArr != null) {
            viewGroup.getLocationInWindow(iArr);
            i14 = iArr[0];
            i15 = iArr[1];
        } else {
            i14 = 0;
            i15 = 0;
        }
        if (iArr2 == null) {
            if (this.f8342e == null) {
                this.f8342e = new int[2];
            }
            int[] iArr4 = this.f8342e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        if (viewParentE instanceof q) {
            ((q) viewParentE).g(viewGroup, i6, i10, i11, i12, i13, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i11;
            iArr3[1] = iArr3[1] + i12;
            if (viewParentE instanceof p) {
                ((p) viewParentE).i(viewGroup, i6, i10, i11, i12, i13);
            } else if (i13 == 0) {
                try {
                    y0.d(viewParentE, viewGroup, i6, i10, i11, i12);
                } catch (AbstractMethodError e5) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onNestedScroll", e5);
                }
            }
        }
        if (iArr != null) {
            viewGroup.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i14;
            iArr[1] = iArr[1] - i15;
        }
        return true;
    }

    public final ViewParent e(int i6) {
        if (i6 == 0) {
            return this.f8339a;
        }
        if (i6 != 1) {
            return null;
        }
        return this.f8340b;
    }

    public final boolean f(int i6) {
        return e(i6) != null;
    }

    public final boolean g(int i6, int i10) {
        boolean zF;
        if (f(i10)) {
            return true;
        }
        if (this.d) {
            ViewGroup viewGroup = this.f8341c;
            View view = viewGroup;
            for (ViewParent parent = viewGroup.getParent(); parent != null; parent = parent.getParent()) {
                boolean z7 = parent instanceof p;
                if (z7) {
                    zF = ((p) parent).j(view, viewGroup, i6, i10);
                } else if (i10 == 0) {
                    try {
                        zF = y0.f(parent, view, viewGroup, i6);
                    } catch (AbstractMethodError e5) {
                        Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e5);
                    }
                } else {
                    zF = false;
                }
                if (zF) {
                    if (i10 == 0) {
                        this.f8339a = parent;
                    } else if (i10 == 1) {
                        this.f8340b = parent;
                    }
                    if (z7) {
                        ((p) parent).a(view, viewGroup, i6, i10);
                    } else if (i10 == 0) {
                        try {
                            y0.e(parent, view, viewGroup, i6);
                        } catch (AbstractMethodError e10) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e10);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view = (View) parent;
                }
            }
        }
        return false;
    }

    public final void h(int i6) {
        ViewParent viewParentE = e(i6);
        if (viewParentE != null) {
            boolean z7 = viewParentE instanceof p;
            ViewGroup viewGroup = this.f8341c;
            if (z7) {
                ((p) viewParentE).f(i6, viewGroup);
            } else if (i6 == 0) {
                try {
                    y0.g(viewParentE, viewGroup);
                } catch (AbstractMethodError e5) {
                    Log.e("ViewParentCompat", "ViewParent " + viewParentE + " does not implement interface method onStopNestedScroll", e5);
                }
            }
            if (i6 == 0) {
                this.f8339a = null;
            } else {
                if (i6 != 1) {
                    return;
                }
                this.f8340b = null;
            }
        }
    }
}
