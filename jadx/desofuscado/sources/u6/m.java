package u6;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: m, reason: collision with root package name */
    public static final j f10399m = new j(0.5f);

    /* renamed from: a, reason: collision with root package name */
    public n5.d f10400a = new k();

    /* renamed from: b, reason: collision with root package name */
    public n5.d f10401b = new k();

    /* renamed from: c, reason: collision with root package name */
    public n5.d f10402c = new k();
    public n5.d d = new k();

    /* renamed from: e, reason: collision with root package name */
    public c f10403e = new a(0.0f);
    public c f = new a(0.0f);

    /* renamed from: g, reason: collision with root package name */
    public c f10404g = new a(0.0f);

    /* renamed from: h, reason: collision with root package name */
    public c f10405h = new a(0.0f);

    /* renamed from: i, reason: collision with root package name */
    public e f10406i = new e(0);

    /* renamed from: j, reason: collision with root package name */
    public e f10407j = new e(0);

    /* renamed from: k, reason: collision with root package name */
    public e f10408k = new e(0);

    /* renamed from: l, reason: collision with root package name */
    public e f10409l = new e(0);

    public static l a(Context context, int i6, int i10, c cVar) throws Resources.NotFoundException {
        if (i10 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i6);
            i6 = i10;
            context = contextThemeWrapper;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i6, x5.a.S);
        try {
            int i11 = typedArrayObtainStyledAttributes.getInt(0, 0);
            int i12 = typedArrayObtainStyledAttributes.getInt(3, i11);
            int i13 = typedArrayObtainStyledAttributes.getInt(4, i11);
            int i14 = typedArrayObtainStyledAttributes.getInt(2, i11);
            int i15 = typedArrayObtainStyledAttributes.getInt(1, i11);
            c cVarD = d(typedArrayObtainStyledAttributes, 5, cVar);
            c cVarD2 = d(typedArrayObtainStyledAttributes, 8, cVarD);
            c cVarD3 = d(typedArrayObtainStyledAttributes, 9, cVarD);
            c cVarD4 = d(typedArrayObtainStyledAttributes, 7, cVarD);
            c cVarD5 = d(typedArrayObtainStyledAttributes, 6, cVarD);
            l lVar = new l();
            n5.d dVarE = o9.d.e(i12);
            lVar.f10389a = dVarE;
            l.b(dVarE);
            lVar.f10392e = cVarD2;
            n5.d dVarE2 = o9.d.e(i13);
            lVar.f10390b = dVarE2;
            l.b(dVarE2);
            lVar.f = cVarD3;
            n5.d dVarE3 = o9.d.e(i14);
            lVar.f10391c = dVarE3;
            l.b(dVarE3);
            lVar.f10393g = cVarD4;
            n5.d dVarE4 = o9.d.e(i15);
            lVar.d = dVarE4;
            l.b(dVarE4);
            lVar.f10394h = cVarD5;
            return lVar;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static l b(Context context, AttributeSet attributeSet, int i6, int i10) {
        return c(context, attributeSet, i6, i10, new a(0));
    }

    public static l c(Context context, AttributeSet attributeSet, int i6, int i10, c cVar) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.G, i6, i10);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return a(context, resourceId, resourceId2, cVar);
    }

    public static c d(TypedArray typedArray, int i6, c cVar) {
        TypedValue typedValuePeekValue = typedArray.peekValue(i6);
        if (typedValuePeekValue == null) {
            return cVar;
        }
        int i10 = typedValuePeekValue.type;
        return i10 == 5 ? new a(TypedValue.complexToDimensionPixelSize(typedValuePeekValue.data, typedArray.getResources().getDisplayMetrics())) : i10 == 6 ? new j(typedValuePeekValue.getFraction(1.0f, 1.0f)) : cVar;
    }

    public final boolean e(RectF rectF) {
        boolean z7 = this.f10409l.getClass().equals(e.class) && this.f10407j.getClass().equals(e.class) && this.f10406i.getClass().equals(e.class) && this.f10408k.getClass().equals(e.class);
        float fA = this.f10403e.a(rectF);
        return z7 && ((this.f.a(rectF) > fA ? 1 : (this.f.a(rectF) == fA ? 0 : -1)) == 0 && (this.f10405h.a(rectF) > fA ? 1 : (this.f10405h.a(rectF) == fA ? 0 : -1)) == 0 && (this.f10404g.a(rectF) > fA ? 1 : (this.f10404g.a(rectF) == fA ? 0 : -1)) == 0) && ((this.f10401b instanceof k) && (this.f10400a instanceof k) && (this.f10402c instanceof k) && (this.d instanceof k));
    }

    public final l f() {
        l lVar = new l();
        lVar.f10389a = this.f10400a;
        lVar.f10390b = this.f10401b;
        lVar.f10391c = this.f10402c;
        lVar.d = this.d;
        lVar.f10392e = this.f10403e;
        lVar.f = this.f;
        lVar.f10393g = this.f10404g;
        lVar.f10394h = this.f10405h;
        lVar.f10395i = this.f10406i;
        lVar.f10396j = this.f10407j;
        lVar.f10397k = this.f10408k;
        lVar.f10398l = this.f10409l;
        return lVar;
    }
}
