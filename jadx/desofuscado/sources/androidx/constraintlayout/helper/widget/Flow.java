package androidx.constraintlayout.helper.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.VirtualLayout;
import androidx.constraintlayout.widget.c;
import v.e;
import v.h;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Flow extends VirtualLayout {

    /* renamed from: j, reason: collision with root package name */
    public h f922j;

    public Flow(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.constraintlayout.widget.VirtualLayout, androidx.constraintlayout.widget.ConstraintHelper
    public final void g(AttributeSet attributeSet) {
        super.g(attributeSet);
        this.f922j = new h();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f11210b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 0) {
                    this.f922j.L0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 1) {
                    h hVar = this.f922j;
                    int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    hVar.i0 = dimensionPixelSize;
                    hVar.f10593j0 = dimensionPixelSize;
                    hVar.f10594k0 = dimensionPixelSize;
                    hVar.f10595l0 = dimensionPixelSize;
                } else if (index == 11) {
                    h hVar2 = this.f922j;
                    int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                    hVar2.f10594k0 = dimensionPixelSize2;
                    hVar2.f10596m0 = dimensionPixelSize2;
                    hVar2.f10597n0 = dimensionPixelSize2;
                } else if (index == 12) {
                    this.f922j.f10595l0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 2) {
                    this.f922j.f10596m0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 3) {
                    this.f922j.i0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 4) {
                    this.f922j.f10597n0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 5) {
                    this.f922j.f10593j0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 37) {
                    this.f922j.J0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 27) {
                    this.f922j.f10603t0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 36) {
                    this.f922j.f10604u0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 21) {
                    this.f922j.f10605v0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 29) {
                    this.f922j.x0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 23) {
                    this.f922j.f10606w0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 31) {
                    this.f922j.f10607y0 = typedArrayObtainStyledAttributes.getInt(index, 0);
                } else if (index == 25) {
                    this.f922j.f10608z0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 20) {
                    this.f922j.B0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 28) {
                    this.f922j.D0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 22) {
                    this.f922j.C0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 30) {
                    this.f922j.E0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 34) {
                    this.f922j.A0 = typedArrayObtainStyledAttributes.getFloat(index, 0.5f);
                } else if (index == 24) {
                    this.f922j.H0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 33) {
                    this.f922j.I0 = typedArrayObtainStyledAttributes.getInt(index, 2);
                } else if (index == 26) {
                    this.f922j.F0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 35) {
                    this.f922j.G0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                } else if (index == 32) {
                    this.f922j.K0 = typedArrayObtainStyledAttributes.getInt(index, -1);
                }
            }
        }
        this.d = this.f922j;
        l();
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void h(c cVar, v.j jVar, Constraints.LayoutParams layoutParams, SparseArray sparseArray) {
        super.h(cVar, jVar, layoutParams, sparseArray);
        if (jVar instanceof h) {
            h hVar = (h) jVar;
            int i6 = layoutParams.R;
            if (i6 != -1) {
                hVar.L0 = i6;
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void i(e eVar, boolean z7) {
        h hVar = this.f922j;
        int i6 = hVar.f10594k0;
        if (i6 > 0 || hVar.f10595l0 > 0) {
            if (z7) {
                hVar.f10596m0 = hVar.f10595l0;
                hVar.f10597n0 = i6;
            } else {
                hVar.f10596m0 = i6;
                hVar.f10597n0 = hVar.f10595l0;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:296:0x0514  */
    /* JADX WARN: Removed duplicated region for block: B:309:0x05ba  */
    /* JADX WARN: Removed duplicated region for block: B:310:0x05bf  */
    /* JADX WARN: Removed duplicated region for block: B:317:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x05f2  */
    /* JADX WARN: Removed duplicated region for block: B:326:0x05f4  */
    /* JADX WARN: Removed duplicated region for block: B:336:0x00e1 A[EDGE_INSN: B:336:0x00e1->B:63:0x00e1 BREAK  A[LOOP:1: B:57:0x00ca->B:62:0x00dc], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0120  */
    @Override // androidx.constraintlayout.widget.VirtualLayout
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void m(v.h r40, int r41, int r42) {
        /*
            Method dump skipped, instructions count: 1543
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.helper.widget.Flow.m(v.h, int, int):void");
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper, android.view.View
    public final void onMeasure(int i6, int i10) {
        m(this.f922j, i6, i10);
    }

    public void setFirstHorizontalBias(float f) {
        this.f922j.B0 = f;
        requestLayout();
    }

    public void setFirstHorizontalStyle(int i6) {
        this.f922j.f10605v0 = i6;
        requestLayout();
    }

    public void setFirstVerticalBias(float f) {
        this.f922j.C0 = f;
        requestLayout();
    }

    public void setFirstVerticalStyle(int i6) {
        this.f922j.f10606w0 = i6;
        requestLayout();
    }

    public void setHorizontalAlign(int i6) {
        this.f922j.H0 = i6;
        requestLayout();
    }

    public void setHorizontalBias(float f) {
        this.f922j.f10608z0 = f;
        requestLayout();
    }

    public void setHorizontalGap(int i6) {
        this.f922j.F0 = i6;
        requestLayout();
    }

    public void setHorizontalStyle(int i6) {
        this.f922j.f10603t0 = i6;
        requestLayout();
    }

    public void setMaxElementsWrap(int i6) {
        this.f922j.K0 = i6;
        requestLayout();
    }

    public void setOrientation(int i6) {
        this.f922j.L0 = i6;
        requestLayout();
    }

    public void setPadding(int i6) {
        h hVar = this.f922j;
        hVar.i0 = i6;
        hVar.f10593j0 = i6;
        hVar.f10594k0 = i6;
        hVar.f10595l0 = i6;
        requestLayout();
    }

    public void setPaddingBottom(int i6) {
        this.f922j.f10593j0 = i6;
        requestLayout();
    }

    public void setPaddingLeft(int i6) {
        this.f922j.f10596m0 = i6;
        requestLayout();
    }

    public void setPaddingRight(int i6) {
        this.f922j.f10597n0 = i6;
        requestLayout();
    }

    public void setPaddingTop(int i6) {
        this.f922j.i0 = i6;
        requestLayout();
    }

    public void setVerticalAlign(int i6) {
        this.f922j.I0 = i6;
        requestLayout();
    }

    public void setVerticalBias(float f) {
        this.f922j.A0 = f;
        requestLayout();
    }

    public void setVerticalGap(int i6) {
        this.f922j.G0 = i6;
        requestLayout();
    }

    public void setVerticalStyle(int i6) {
        this.f922j.f10604u0 = i6;
        requestLayout();
    }

    public void setWrapMode(int i6) {
        this.f922j.J0 = i6;
        requestLayout();
    }

    public Flow(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
    }
}
