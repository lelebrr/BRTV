package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.exoplayer.DefaultRenderersFactory;
import androidx.media3.extractor.flac.FlacConstants;
import androidx.media3.extractor.ts.TsExtractor;
import com.alibaba.fastjson.asm.Opcodes;
import java.util.ArrayList;
import java.util.HashMap;
import n0.e;
import okhttp3.internal.http2.Http2Connection;
import v.f;
import v.i;
import y.h;
import y.j;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f1018p = 0;

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f1019a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f1020b;

    /* renamed from: c, reason: collision with root package name */
    public final f f1021c;
    public int d;

    /* renamed from: e, reason: collision with root package name */
    public int f1022e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1023g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1024h;

    /* renamed from: i, reason: collision with root package name */
    public int f1025i;

    /* renamed from: j, reason: collision with root package name */
    public d f1026j;

    /* renamed from: k, reason: collision with root package name */
    public e f1027k;

    /* renamed from: l, reason: collision with root package name */
    public int f1028l;

    /* renamed from: m, reason: collision with root package name */
    public HashMap f1029m;

    /* renamed from: n, reason: collision with root package name */
    public final SparseArray f1030n;

    /* renamed from: o, reason: collision with root package name */
    public final b f1031o;

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1019a = new SparseArray();
        this.f1020b = new ArrayList(4);
        this.f1021c = new f();
        this.d = 0;
        this.f1022e = 0;
        this.f = Integer.MAX_VALUE;
        this.f1023g = Integer.MAX_VALUE;
        this.f1024h = true;
        this.f1025i = 263;
        this.f1026j = null;
        this.f1027k = null;
        this.f1028l = -1;
        this.f1029m = new HashMap();
        this.f1030n = new SparseArray();
        this.f1031o = new b(this);
        h(attributeSet, 0);
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:146:0x02d6
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1178)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    /* JADX WARN: Path cross not found for [B:154:0x02ef, B:180:0x02bc], limit reached: 193 */
    /* JADX WARN: Removed duplicated region for block: B:157:0x02f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void c(boolean r20, android.view.View r21, v.e r22, androidx.constraintlayout.widget.ConstraintLayout.LayoutParams r23, android.util.SparseArray r24) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 855
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.c(boolean, android.view.View, v.e, androidx.constraintlayout.widget.ConstraintLayout$LayoutParams, android.util.SparseArray):void");
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public final View d(int i6) {
        return (View) this.f1019a.get(i6);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) throws NumberFormatException {
        Object tag;
        int size;
        ArrayList arrayList = this.f1020b;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                ((ConstraintHelper) arrayList.get(i6)).k(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = getChildAt(i10);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i11 = Integer.parseInt(strArrSplit[0]);
                        int i12 = Integer.parseInt(strArrSplit[1]);
                        int i13 = Integer.parseInt(strArrSplit[2]);
                        int i14 = (int) ((i11 / 1080.0f) * width);
                        int i15 = (int) ((i12 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i14;
                        float f3 = i15;
                        float f4 = i14 + ((int) ((i13 / 1080.0f) * width));
                        canvas.drawLine(f, f3, f4, f3, paint);
                        float f5 = i15 + ((int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height));
                        canvas.drawLine(f4, f3, f4, f5, paint);
                        canvas.drawLine(f4, f5, f, f5, paint);
                        canvas.drawLine(f, f5, f, f3, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f3, f4, f5, paint);
                        canvas.drawLine(f, f5, f4, f3, paint);
                    }
                }
            }
        }
    }

    public final v.e e(View view) {
        if (view == this) {
            return this.f1021c;
        }
        if (view == null) {
            return null;
        }
        return ((LayoutParams) view.getLayoutParams()).f1052l0;
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f1024h = true;
        super.forceLayout();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getMaxHeight() {
        return this.f1023g;
    }

    public int getMaxWidth() {
        return this.f;
    }

    public int getMinHeight() {
        return this.f1022e;
    }

    public int getMinWidth() {
        return this.d;
    }

    public int getOptimizationLevel() {
        return this.f1021c.f10574s0;
    }

    public final void h(AttributeSet attributeSet, int i6) {
        f fVar = this.f1021c;
        fVar.W = this;
        b bVar = this.f1031o;
        fVar.f10565j0 = bVar;
        fVar.i0.f = bVar;
        this.f1019a.put(getId(), this);
        this.f1026j = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, j.f11210b, i6, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == 9) {
                    this.d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.d);
                } else if (index == 10) {
                    this.f1022e = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1022e);
                } else if (index == 7) {
                    this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f);
                } else if (index == 8) {
                    this.f1023g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1023g);
                } else if (index == 89) {
                    this.f1025i = typedArrayObtainStyledAttributes.getInt(index, this.f1025i);
                } else if (index == 38) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            l(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f1027k = null;
                        }
                    }
                } else if (index == 18) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        d dVar = new d();
                        this.f1026j = dVar;
                        dVar.h(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f1026j = null;
                    }
                    this.f1028l = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        int i11 = this.f1025i;
        fVar.f10574s0 = i11;
        u.e.f10284p = (i11 & 256) == 256;
    }

    public final boolean k() {
        return (getContext().getApplicationInfo().flags & 4194304) != 0 && 1 == getLayoutDirection();
    }

    public void l(int i6) {
        this.f1027k = new e(getContext(), this, i6);
    }

    public final void m(int i6, int i10, int i11, int i12, boolean z7, boolean z10) {
        b bVar = this.f1031o;
        int i13 = bVar.f1089e;
        int iResolveSizeAndState = View.resolveSizeAndState(i11 + bVar.d, i6, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i12 + i13, i10, 0) & 16777215;
        int iMin = Math.min(this.f, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.f1023g, iResolveSizeAndState2);
        if (z7) {
            iMin |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        if (z10) {
            iMin2 |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        setMeasuredDimension(iMin, iMin2);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01ca A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01cc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0454  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x051e  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x0530  */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0535  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0705  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0710  */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015c  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x016e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void n(v.f r27, int r28, int r29, int r30) {
        /*
            Method dump skipped, instructions count: 1814
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.n(v.f, int, int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z7, int i6, int i10, int i11, int i12) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            v.e eVar = layoutParams.f1052l0;
            if ((childAt.getVisibility() != 8 || layoutParams.Y || layoutParams.Z || zIsInEditMode) && !layoutParams.f1033a0) {
                int iN = eVar.n();
                int iO = eVar.o();
                int iM = eVar.m() + iN;
                int iJ = eVar.j() + iO;
                childAt.layout(iN, iO, iM, iJ);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iN, iO, iM, iJ);
                }
            }
        }
        ArrayList arrayList = this.f1020b;
        int size = arrayList.size();
        if (size > 0) {
            for (int i14 = 0; i14 < size; i14++) {
                ((ConstraintHelper) arrayList.get(i14)).j();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01a8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onMeasure(int r17, int r18) throws android.content.res.Resources.NotFoundException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 556
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        v.e eVarE = e(view);
        if ((view instanceof Guideline) && !(eVarE instanceof i)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            i iVar = new i();
            layoutParams.f1052l0 = iVar;
            layoutParams.Y = true;
            iVar.C(layoutParams.R);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.l();
            ((LayoutParams) view.getLayoutParams()).Z = true;
            ArrayList arrayList = this.f1020b;
            if (!arrayList.contains(constraintHelper)) {
                arrayList.add(constraintHelper);
            }
        }
        this.f1019a.put(view.getId(), view);
        this.f1024h = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f1019a.remove(view.getId());
        v.e eVarE = e(view);
        this.f1021c.f10563g0.remove(eVarE);
        eVarE.K = null;
        this.f1020b.remove(view);
        this.f1024h = true;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f1024h = true;
        super.requestLayout();
    }

    public void setConstraintSet(d dVar) {
        this.f1026j = dVar;
    }

    @Override // android.view.View
    public void setId(int i6) {
        int id = getId();
        SparseArray sparseArray = this.f1019a;
        sparseArray.remove(id);
        super.setId(i6);
        sparseArray.put(getId(), this);
    }

    public void setMaxHeight(int i6) {
        if (i6 == this.f1023g) {
            return;
        }
        this.f1023g = i6;
        requestLayout();
    }

    public void setMaxWidth(int i6) {
        if (i6 == this.f) {
            return;
        }
        this.f = i6;
        requestLayout();
    }

    public void setMinHeight(int i6) {
        if (i6 == this.f1022e) {
            return;
        }
        this.f1022e = i6;
        requestLayout();
    }

    public void setMinWidth(int i6) {
        if (i6 == this.d) {
            return;
        }
        this.d = i6;
        requestLayout();
    }

    public void setOnConstraintsChanged(h hVar) {
        e eVar = this.f1027k;
        if (eVar != null) {
            eVar.getClass();
        }
    }

    public void setOptimizationLevel(int i6) {
        this.f1025i = i6;
        this.f1021c.f10574s0 = i6;
        u.e.f10284p = (i6 & 256) == 256;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1019a = new SparseArray();
        this.f1020b = new ArrayList(4);
        this.f1021c = new f();
        this.d = 0;
        this.f1022e = 0;
        this.f = Integer.MAX_VALUE;
        this.f1023g = Integer.MAX_VALUE;
        this.f1024h = true;
        this.f1025i = 263;
        this.f1026j = null;
        this.f1027k = null;
        this.f1028l = -1;
        this.f1029m = new HashMap();
        this.f1030n = new SparseArray();
        this.f1031o = new b(this);
        h(attributeSet, i6);
    }

    /* compiled from: MyApplication */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public float A;
        public String B;
        public final int C;
        public float D;
        public float E;
        public int F;
        public int G;
        public int H;
        public int I;
        public int J;
        public int K;
        public int L;
        public int M;
        public float N;
        public float O;
        public int P;
        public int Q;
        public int R;
        public boolean S;
        public boolean T;
        public String U;
        public boolean V;
        public boolean W;
        public boolean X;
        public boolean Y;
        public boolean Z;

        /* renamed from: a, reason: collision with root package name */
        public int f1032a;

        /* renamed from: a0, reason: collision with root package name */
        public boolean f1033a0;

        /* renamed from: b, reason: collision with root package name */
        public int f1034b;

        /* renamed from: b0, reason: collision with root package name */
        public int f1035b0;

        /* renamed from: c, reason: collision with root package name */
        public float f1036c;

        /* renamed from: c0, reason: collision with root package name */
        public int f1037c0;
        public int d;

        /* renamed from: d0, reason: collision with root package name */
        public int f1038d0;

        /* renamed from: e, reason: collision with root package name */
        public int f1039e;

        /* renamed from: e0, reason: collision with root package name */
        public int f1040e0;
        public int f;

        /* renamed from: f0, reason: collision with root package name */
        public int f1041f0;

        /* renamed from: g, reason: collision with root package name */
        public int f1042g;

        /* renamed from: g0, reason: collision with root package name */
        public int f1043g0;

        /* renamed from: h, reason: collision with root package name */
        public int f1044h;

        /* renamed from: h0, reason: collision with root package name */
        public float f1045h0;

        /* renamed from: i, reason: collision with root package name */
        public int f1046i;
        public int i0;

        /* renamed from: j, reason: collision with root package name */
        public int f1047j;

        /* renamed from: j0, reason: collision with root package name */
        public int f1048j0;

        /* renamed from: k, reason: collision with root package name */
        public int f1049k;

        /* renamed from: k0, reason: collision with root package name */
        public float f1050k0;

        /* renamed from: l, reason: collision with root package name */
        public int f1051l;

        /* renamed from: l0, reason: collision with root package name */
        public v.e f1052l0;

        /* renamed from: m, reason: collision with root package name */
        public int f1053m;

        /* renamed from: n, reason: collision with root package name */
        public int f1054n;

        /* renamed from: o, reason: collision with root package name */
        public float f1055o;

        /* renamed from: p, reason: collision with root package name */
        public int f1056p;

        /* renamed from: q, reason: collision with root package name */
        public int f1057q;

        /* renamed from: r, reason: collision with root package name */
        public int f1058r;

        /* renamed from: s, reason: collision with root package name */
        public int f1059s;

        /* renamed from: t, reason: collision with root package name */
        public final int f1060t;

        /* renamed from: u, reason: collision with root package name */
        public int f1061u;

        /* renamed from: v, reason: collision with root package name */
        public final int f1062v;

        /* renamed from: w, reason: collision with root package name */
        public int f1063w;

        /* renamed from: x, reason: collision with root package name */
        public int f1064x;

        /* renamed from: y, reason: collision with root package name */
        public int f1065y;

        /* renamed from: z, reason: collision with root package name */
        public float f1066z;

        public LayoutParams(Context context, AttributeSet attributeSet) throws NumberFormatException {
            int i6;
            super(context, attributeSet);
            this.f1032a = -1;
            this.f1034b = -1;
            this.f1036c = -1.0f;
            this.d = -1;
            this.f1039e = -1;
            this.f = -1;
            this.f1042g = -1;
            this.f1044h = -1;
            this.f1046i = -1;
            this.f1047j = -1;
            this.f1049k = -1;
            this.f1051l = -1;
            this.f1053m = -1;
            this.f1054n = 0;
            this.f1055o = 0.0f;
            this.f1056p = -1;
            this.f1057q = -1;
            this.f1058r = -1;
            this.f1059s = -1;
            this.f1060t = -1;
            this.f1061u = -1;
            this.f1062v = -1;
            this.f1063w = -1;
            this.f1064x = -1;
            this.f1065y = -1;
            this.f1066z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = null;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.f1033a0 = false;
            this.f1035b0 = -1;
            this.f1037c0 = -1;
            this.f1038d0 = -1;
            this.f1040e0 = -1;
            this.f1041f0 = -1;
            this.f1043g0 = -1;
            this.f1045h0 = 0.5f;
            this.f1052l0 = new v.e();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, j.f11210b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                int i11 = a.f1085a.get(index);
                switch (i11) {
                    case 1:
                        this.R = typedArrayObtainStyledAttributes.getInt(index, this.R);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f1053m);
                        this.f1053m = resourceId;
                        if (resourceId == -1) {
                            this.f1053m = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f1054n = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1054n);
                        break;
                    case 4:
                        float f = typedArrayObtainStyledAttributes.getFloat(index, this.f1055o) % 360.0f;
                        this.f1055o = f;
                        if (f < 0.0f) {
                            this.f1055o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f1032a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1032a);
                        break;
                    case 6:
                        this.f1034b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1034b);
                        break;
                    case 7:
                        this.f1036c = typedArrayObtainStyledAttributes.getFloat(index, this.f1036c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.d);
                        this.d = resourceId2;
                        if (resourceId2 == -1) {
                            this.d = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1039e);
                        this.f1039e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1039e = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f);
                        this.f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1042g);
                        this.f1042g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f1042g = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1044h);
                        this.f1044h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f1044h = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1046i);
                        this.f1046i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f1046i = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1047j);
                        this.f1047j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f1047j = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1049k);
                        this.f1049k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f1049k = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1051l);
                        this.f1051l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f1051l = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1056p);
                        this.f1056p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f1056p = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1057q);
                        this.f1057q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f1057q = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1058r);
                        this.f1058r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f1058r = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1059s);
                        this.f1059s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f1059s = typedArrayObtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f1060t = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1060t);
                        break;
                    case 22:
                        this.f1061u = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1061u);
                        break;
                    case 23:
                        this.f1062v = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1062v);
                        break;
                    case 24:
                        this.f1063w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1063w);
                        break;
                    case 25:
                        this.f1064x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1064x);
                        break;
                    case 26:
                        this.f1065y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1065y);
                        break;
                    case 27:
                        this.S = typedArrayObtainStyledAttributes.getBoolean(index, this.S);
                        break;
                    case 28:
                        this.T = typedArrayObtainStyledAttributes.getBoolean(index, this.T);
                        break;
                    case 29:
                        this.f1066z = typedArrayObtainStyledAttributes.getFloat(index, this.f1066z);
                        break;
                    case 30:
                        this.A = typedArrayObtainStyledAttributes.getFloat(index, this.A);
                        break;
                    case 31:
                        int i12 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.H = i12;
                        if (i12 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i13 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.I = i13;
                        if (i13 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.J = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.J);
                            break;
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.J) == -2) {
                                this.J = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.L = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.L);
                            break;
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.L) == -2) {
                                this.L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.N = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.N));
                        this.H = 2;
                        break;
                    case TsExtractor.TS_STREAM_TYPE_H265 /* 36 */:
                        try {
                            this.K = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.K);
                            break;
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.K) == -2) {
                                this.K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.M = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.M);
                            break;
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.M) == -2) {
                                this.M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case FlacConstants.STREAM_INFO_BLOCK_SIZE /* 38 */:
                        this.O = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.O));
                        this.I = 2;
                        break;
                    default:
                        switch (i11) {
                            case 44:
                                String string = typedArrayObtainStyledAttributes.getString(index);
                                this.B = string;
                                this.C = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int iIndexOf = this.B.indexOf(44);
                                    if (iIndexOf <= 0 || iIndexOf >= length - 1) {
                                        i6 = 0;
                                    } else {
                                        String strSubstring = this.B.substring(0, iIndexOf);
                                        if (strSubstring.equalsIgnoreCase("W")) {
                                            this.C = 0;
                                        } else if (strSubstring.equalsIgnoreCase("H")) {
                                            this.C = 1;
                                        }
                                        i6 = iIndexOf + 1;
                                    }
                                    int iIndexOf2 = this.B.indexOf(58);
                                    if (iIndexOf2 < 0 || iIndexOf2 >= length - 1) {
                                        String strSubstring2 = this.B.substring(i6);
                                        if (strSubstring2.length() > 0) {
                                            Float.parseFloat(strSubstring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String strSubstring3 = this.B.substring(i6, iIndexOf2);
                                        String strSubstring4 = this.B.substring(iIndexOf2 + 1);
                                        if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                            break;
                                        } else {
                                            try {
                                                float f3 = Float.parseFloat(strSubstring3);
                                                float f4 = Float.parseFloat(strSubstring4);
                                                if (f3 <= 0.0f || f4 <= 0.0f) {
                                                    break;
                                                } else if (this.C == 1) {
                                                    Math.abs(f4 / f3);
                                                    break;
                                                } else {
                                                    Math.abs(f3 / f4);
                                                    break;
                                                }
                                            } catch (NumberFormatException unused5) {
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    break;
                                }
                                break;
                            case TsExtractor.TS_STREAM_TYPE_MHAS /* 45 */:
                                this.D = typedArrayObtainStyledAttributes.getFloat(index, this.D);
                                break;
                            case 46:
                                this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                                break;
                            case 47:
                                this.F = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case NalUnitUtil.H265_NAL_UNIT_TYPE_UNSPECIFIED /* 48 */:
                                this.G = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case Opcodes.V1_5 /* 49 */:
                                this.P = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.P);
                                break;
                            case DefaultRenderersFactory.MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY /* 50 */:
                                this.Q = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.Q);
                                break;
                            case 51:
                                this.U = typedArrayObtainStyledAttributes.getString(index);
                                break;
                        }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            a();
        }

        public final void a() {
            this.Y = false;
            this.V = true;
            this.W = true;
            int i6 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i6 == -2 && this.S) {
                this.V = false;
                if (this.H == 0) {
                    this.H = 1;
                }
            }
            int i10 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i10 == -2 && this.T) {
                this.W = false;
                if (this.I == 0) {
                    this.I = 1;
                }
            }
            if (i6 == 0 || i6 == -1) {
                this.V = false;
                if (i6 == 0 && this.H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.S = true;
                }
            }
            if (i10 == 0 || i10 == -1) {
                this.W = false;
                if (i10 == 0 && this.I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.T = true;
                }
            }
            if (this.f1036c == -1.0f && this.f1032a == -1 && this.f1034b == -1) {
                return;
            }
            this.Y = true;
            this.V = true;
            this.W = true;
            if (!(this.f1052l0 instanceof i)) {
                this.f1052l0 = new i();
            }
            ((i) this.f1052l0).C(this.R);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x004f  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0056  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0062  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x007c  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void resolveLayoutDirection(int r10) {
            /*
                Method dump skipped, instructions count: 253
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }

        public LayoutParams() {
            super(-2, -2);
            this.f1032a = -1;
            this.f1034b = -1;
            this.f1036c = -1.0f;
            this.d = -1;
            this.f1039e = -1;
            this.f = -1;
            this.f1042g = -1;
            this.f1044h = -1;
            this.f1046i = -1;
            this.f1047j = -1;
            this.f1049k = -1;
            this.f1051l = -1;
            this.f1053m = -1;
            this.f1054n = 0;
            this.f1055o = 0.0f;
            this.f1056p = -1;
            this.f1057q = -1;
            this.f1058r = -1;
            this.f1059s = -1;
            this.f1060t = -1;
            this.f1061u = -1;
            this.f1062v = -1;
            this.f1063w = -1;
            this.f1064x = -1;
            this.f1065y = -1;
            this.f1066z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = null;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.f1033a0 = false;
            this.f1035b0 = -1;
            this.f1037c0 = -1;
            this.f1038d0 = -1;
            this.f1040e0 = -1;
            this.f1041f0 = -1;
            this.f1043g0 = -1;
            this.f1045h0 = 0.5f;
            this.f1052l0 = new v.e();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1032a = -1;
            this.f1034b = -1;
            this.f1036c = -1.0f;
            this.d = -1;
            this.f1039e = -1;
            this.f = -1;
            this.f1042g = -1;
            this.f1044h = -1;
            this.f1046i = -1;
            this.f1047j = -1;
            this.f1049k = -1;
            this.f1051l = -1;
            this.f1053m = -1;
            this.f1054n = 0;
            this.f1055o = 0.0f;
            this.f1056p = -1;
            this.f1057q = -1;
            this.f1058r = -1;
            this.f1059s = -1;
            this.f1060t = -1;
            this.f1061u = -1;
            this.f1062v = -1;
            this.f1063w = -1;
            this.f1064x = -1;
            this.f1065y = -1;
            this.f1066z = 0.5f;
            this.A = 0.5f;
            this.B = null;
            this.C = 1;
            this.D = -1.0f;
            this.E = -1.0f;
            this.F = 0;
            this.G = 0;
            this.H = 0;
            this.I = 0;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 1.0f;
            this.O = 1.0f;
            this.P = -1;
            this.Q = -1;
            this.R = -1;
            this.S = false;
            this.T = false;
            this.U = null;
            this.V = true;
            this.W = true;
            this.X = false;
            this.Y = false;
            this.Z = false;
            this.f1033a0 = false;
            this.f1035b0 = -1;
            this.f1037c0 = -1;
            this.f1038d0 = -1;
            this.f1040e0 = -1;
            this.f1041f0 = -1;
            this.f1043g0 = -1;
            this.f1045h0 = 0.5f;
            this.f1052l0 = new v.e();
        }
    }
}
