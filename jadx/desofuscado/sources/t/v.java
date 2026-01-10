package t;

import android.util.Log;
import android.util.SparseArray;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public float f10033a = Float.NaN;

    /* renamed from: b, reason: collision with root package name */
    public float f10034b = Float.NaN;

    /* renamed from: c, reason: collision with root package name */
    public int f10035c = -1;
    public int d = -1;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MotionLayout f10036e;

    public v(MotionLayout motionLayout) {
        this.f10036e = motionLayout;
    }

    public final void a() {
        int i6 = this.f10035c;
        MotionLayout motionLayout = this.f10036e;
        if (i6 != -1 || this.d != -1) {
            x xVar = x.f10038b;
            if (i6 == -1) {
                motionLayout.B(this.d);
            } else {
                int i10 = this.d;
                if (i10 == -1) {
                    motionLayout.setState(xVar);
                    motionLayout.f967u = i6;
                    motionLayout.f965t = -1;
                    motionLayout.f969v = -1;
                    n0.e eVar = motionLayout.f1027k;
                    if (eVar != null) {
                        float f = -1;
                        int i11 = eVar.f8308c;
                        SparseArray sparseArray = (SparseArray) eVar.f8309e;
                        int i12 = 0;
                        ConstraintLayout constraintLayout = (ConstraintLayout) eVar.f8307b;
                        if (i11 == i6) {
                            y.b bVar = i6 == -1 ? (y.b) sparseArray.valueAt(0) : (y.b) sparseArray.get(i11);
                            int i13 = eVar.d;
                            if (i13 == -1 || !((y.c) bVar.f11147b.get(i13)).a(f, f)) {
                                while (true) {
                                    ArrayList arrayList = bVar.f11147b;
                                    if (i12 >= arrayList.size()) {
                                        i12 = -1;
                                        break;
                                    } else if (((y.c) arrayList.get(i12)).a(f, f)) {
                                        break;
                                    } else {
                                        i12++;
                                    }
                                }
                                if (eVar.d != i12) {
                                    ArrayList arrayList2 = bVar.f11147b;
                                    androidx.constraintlayout.widget.d dVar = i12 == -1 ? null : ((y.c) arrayList2.get(i12)).f;
                                    if (i12 != -1) {
                                        int i14 = ((y.c) arrayList2.get(i12)).f11152e;
                                    }
                                    if (dVar != null) {
                                        eVar.d = i12;
                                        dVar.b(constraintLayout);
                                    }
                                }
                            }
                        } else {
                            eVar.f8308c = i6;
                            y.b bVar2 = (y.b) sparseArray.get(i6);
                            while (true) {
                                ArrayList arrayList3 = bVar2.f11147b;
                                if (i12 >= arrayList3.size()) {
                                    i12 = -1;
                                    break;
                                } else if (((y.c) arrayList3.get(i12)).a(f, f)) {
                                    break;
                                } else {
                                    i12++;
                                }
                            }
                            ArrayList arrayList4 = bVar2.f11147b;
                            androidx.constraintlayout.widget.d dVar2 = i12 == -1 ? bVar2.d : ((y.c) arrayList4.get(i12)).f;
                            if (i12 != -1) {
                                int i15 = ((y.c) arrayList4.get(i12)).f11152e;
                            }
                            if (dVar2 == null) {
                                Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i6 + ", dim =-1.0, -1.0");
                            } else {
                                eVar.d = i12;
                                dVar2.b(constraintLayout);
                            }
                        }
                    } else {
                        c0 c0Var = motionLayout.f959q;
                        if (c0Var != null) {
                            c0Var.b(i6).b(motionLayout);
                        }
                    }
                } else {
                    motionLayout.z(i6, i10);
                }
            }
            motionLayout.setState(xVar);
        }
        if (Float.isNaN(this.f10034b)) {
            if (Float.isNaN(this.f10033a)) {
                return;
            }
            motionLayout.setProgress(this.f10033a);
        } else {
            motionLayout.y(this.f10033a, this.f10034b);
            this.f10033a = Float.NaN;
            this.f10034b = Float.NaN;
            this.f10035c = -1;
            this.d = -1;
        }
    }
}
