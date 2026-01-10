package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.SparseArray;
import androidx.constraintlayout.widget.Constraints;
import java.util.HashMap;
import v.e;
import v.f;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Barrier extends ConstraintHelper {

    /* renamed from: h, reason: collision with root package name */
    public int f1010h;

    /* renamed from: i, reason: collision with root package name */
    public int f1011i;

    /* renamed from: j, reason: collision with root package name */
    public v.a f1012j;

    public Barrier(Context context) {
        super(context);
        this.f1013a = new int[32];
        this.f = null;
        this.f1017g = new HashMap();
        this.f1015c = context;
        g(null);
        super.setVisibility(8);
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void g(AttributeSet attributeSet) {
        super.g(attributeSet);
        this.f1012j = new v.a();
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f11210b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 15) {
                    setType(typedArrayObtainStyledAttributes.getInt(index, 0));
                } else if (index == 14) {
                    this.f1012j.f10507j0 = typedArrayObtainStyledAttributes.getBoolean(index, true);
                } else if (index == 16) {
                    this.f1012j.f10508k0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, 0);
                }
            }
        }
        this.d = this.f1012j;
        l();
    }

    public int getMargin() {
        return this.f1012j.f10508k0;
    }

    public int getType() {
        return this.f1010h;
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void h(c cVar, v.j jVar, Constraints.LayoutParams layoutParams, SparseArray sparseArray) {
        super.h(cVar, jVar, layoutParams, sparseArray);
        if (jVar instanceof v.a) {
            v.a aVar = (v.a) jVar;
            boolean z7 = ((f) jVar.K).f10566k0;
            y.d dVar = cVar.d;
            m(aVar, dVar.f11157b0, z7);
            aVar.f10507j0 = dVar.f11170j0;
            aVar.f10508k0 = dVar.f11159c0;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintHelper
    public final void i(e eVar, boolean z7) {
        m(eVar, this.f1010h, z7);
    }

    public final void m(e eVar, int i6, boolean z7) {
        this.f1011i = i6;
        if (z7) {
            int i10 = this.f1010h;
            if (i10 == 5) {
                this.f1011i = 1;
            } else if (i10 == 6) {
                this.f1011i = 0;
            }
        } else {
            int i11 = this.f1010h;
            if (i11 == 5) {
                this.f1011i = 0;
            } else if (i11 == 6) {
                this.f1011i = 1;
            }
        }
        if (eVar instanceof v.a) {
            ((v.a) eVar).i0 = this.f1011i;
        }
    }

    public void setAllowsGoneWidget(boolean z7) {
        this.f1012j.f10507j0 = z7;
    }

    public void setDpMargin(int i6) {
        this.f1012j.f10508k0 = (int) ((i6 * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i6) {
        this.f1012j.f10508k0 = i6;
    }

    public void setType(int i6) {
        this.f1010h = i6;
    }

    public Barrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }

    public Barrier(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        super.setVisibility(8);
    }
}
