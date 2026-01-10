package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.HashMap;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class Constraints extends ViewGroup {

    /* renamed from: a, reason: collision with root package name */
    public d f1067a;

    public Constraints(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Log.v("Constraints", " ################# init");
        super.setVisibility(8);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public d getConstraintSet() {
        if (this.f1067a == null) {
            this.f1067a = new d();
        }
        d dVar = this.f1067a;
        dVar.getClass();
        int childCount = getChildCount();
        HashMap map = dVar.f1098c;
        map.clear();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (dVar.f1097b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!map.containsKey(Integer.valueOf(id))) {
                map.put(Integer.valueOf(id), new c());
            }
            c cVar = (c) map.get(Integer.valueOf(id));
            if (childAt instanceof ConstraintHelper) {
                ConstraintHelper constraintHelper = (ConstraintHelper) childAt;
                cVar.c(id, layoutParams);
                if (constraintHelper instanceof Barrier) {
                    y.d dVar2 = cVar.d;
                    dVar2.f11160d0 = 1;
                    Barrier barrier = (Barrier) constraintHelper;
                    dVar2.f11157b0 = barrier.getType();
                    dVar2.f11162e0 = barrier.getReferencedIds();
                    dVar2.f11159c0 = barrier.getMargin();
                }
            }
            cVar.c(id, layoutParams);
        }
        return this.f1067a;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new ConstraintLayout.LayoutParams(layoutParams);
    }

    public Constraints(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        Log.v("Constraints", " ################# init");
        super.setVisibility(8);
    }

    /* compiled from: MyApplication */
    public static class LayoutParams extends ConstraintLayout.LayoutParams {

        /* renamed from: m0, reason: collision with root package name */
        public final float f1068m0;

        /* renamed from: n0, reason: collision with root package name */
        public final boolean f1069n0;

        /* renamed from: o0, reason: collision with root package name */
        public final float f1070o0;

        /* renamed from: p0, reason: collision with root package name */
        public final float f1071p0;

        /* renamed from: q0, reason: collision with root package name */
        public final float f1072q0;

        /* renamed from: r0, reason: collision with root package name */
        public final float f1073r0;

        /* renamed from: s0, reason: collision with root package name */
        public final float f1074s0;

        /* renamed from: t0, reason: collision with root package name */
        public final float f1075t0;

        /* renamed from: u0, reason: collision with root package name */
        public final float f1076u0;

        /* renamed from: v0, reason: collision with root package name */
        public final float f1077v0;

        /* renamed from: w0, reason: collision with root package name */
        public final float f1078w0;
        public final float x0;

        /* renamed from: y0, reason: collision with root package name */
        public final float f1079y0;

        public LayoutParams() {
            this.f1068m0 = 1.0f;
            this.f1069n0 = false;
            this.f1070o0 = 0.0f;
            this.f1071p0 = 0.0f;
            this.f1072q0 = 0.0f;
            this.f1073r0 = 0.0f;
            this.f1074s0 = 1.0f;
            this.f1075t0 = 1.0f;
            this.f1076u0 = 0.0f;
            this.f1077v0 = 0.0f;
            this.f1078w0 = 0.0f;
            this.x0 = 0.0f;
            this.f1079y0 = 0.0f;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1068m0 = 1.0f;
            this.f1069n0 = false;
            this.f1070o0 = 0.0f;
            this.f1071p0 = 0.0f;
            this.f1072q0 = 0.0f;
            this.f1073r0 = 0.0f;
            this.f1074s0 = 1.0f;
            this.f1075t0 = 1.0f;
            this.f1076u0 = 0.0f;
            this.f1077v0 = 0.0f;
            this.f1078w0 = 0.0f;
            this.x0 = 0.0f;
            this.f1079y0 = 0.0f;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.d);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount; i6++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i6);
                if (index == 15) {
                    this.f1068m0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1068m0);
                } else if (index == 28) {
                    this.f1070o0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1070o0);
                    this.f1069n0 = true;
                } else if (index == 23) {
                    this.f1072q0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1072q0);
                } else if (index == 24) {
                    this.f1073r0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1073r0);
                } else if (index == 22) {
                    this.f1071p0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1071p0);
                } else if (index == 20) {
                    this.f1074s0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1074s0);
                } else if (index == 21) {
                    this.f1075t0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1075t0);
                } else if (index == 16) {
                    this.f1076u0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1076u0);
                } else if (index == 17) {
                    this.f1077v0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1077v0);
                } else if (index == 18) {
                    this.f1078w0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1078w0);
                } else if (index == 19) {
                    this.x0 = typedArrayObtainStyledAttributes.getFloat(index, this.x0);
                } else if (index == 27) {
                    this.f1079y0 = typedArrayObtainStyledAttributes.getFloat(index, this.f1079y0);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
    }
}
