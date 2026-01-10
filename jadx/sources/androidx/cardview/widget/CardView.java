package androidx.cardview.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import l6.h;
import o.a;
import u6.e;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class CardView extends FrameLayout {
    public static final int[] f = {R.attr.colorBackground};

    /* renamed from: g, reason: collision with root package name */
    public static final e f917g = new e(28);

    /* renamed from: a, reason: collision with root package name */
    public boolean f918a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f919b;

    /* renamed from: c, reason: collision with root package name */
    public final Rect f920c;
    public final Rect d;

    /* renamed from: e, reason: collision with root package name */
    public final h f921e;

    public CardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.cardViewStyle);
    }

    public ColorStateList getCardBackgroundColor() {
        return ((a) ((Drawable) this.f921e.f8016b)).f8513h;
    }

    public float getCardElevation() {
        return ((CardView) this.f921e.f8017c).getElevation();
    }

    public int getContentPaddingBottom() {
        return this.f920c.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f920c.left;
    }

    public int getContentPaddingRight() {
        return this.f920c.right;
    }

    public int getContentPaddingTop() {
        return this.f920c.top;
    }

    public float getMaxCardElevation() {
        return ((a) ((Drawable) this.f921e.f8016b)).f8511e;
    }

    public boolean getPreventCornerOverlap() {
        return this.f919b;
    }

    public float getRadius() {
        return ((a) ((Drawable) this.f921e.f8016b)).f8508a;
    }

    public boolean getUseCompatPadding() {
        return this.f918a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i6, int i10) {
        super.onMeasure(i6, i10);
    }

    public void setCardBackgroundColor(int i6) {
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(i6);
        a aVar = (a) ((Drawable) this.f921e.f8016b);
        if (colorStateListValueOf == null) {
            aVar.getClass();
            colorStateListValueOf = ColorStateList.valueOf(0);
        }
        aVar.f8513h = colorStateListValueOf;
        aVar.f8509b.setColor(colorStateListValueOf.getColorForState(aVar.getState(), aVar.f8513h.getDefaultColor()));
        aVar.invalidateSelf();
    }

    public void setCardElevation(float f3) {
        ((CardView) this.f921e.f8017c).setElevation(f3);
    }

    public void setMaxCardElevation(float f3) {
        f917g.i(this.f921e, f3);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i6) {
        super.setMinimumHeight(i6);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i6) {
        super.setMinimumWidth(i6);
    }

    public void setPreventCornerOverlap(boolean z7) {
        if (z7 != this.f919b) {
            this.f919b = z7;
            e eVar = f917g;
            h hVar = this.f921e;
            eVar.i(hVar, ((a) ((Drawable) hVar.f8016b)).f8511e);
        }
    }

    public void setRadius(float f3) {
        a aVar = (a) ((Drawable) this.f921e.f8016b);
        if (f3 == aVar.f8508a) {
            return;
        }
        aVar.f8508a = f3;
        aVar.b(null);
        aVar.invalidateSelf();
    }

    public void setUseCompatPadding(boolean z7) {
        if (this.f918a != z7) {
            this.f918a = z7;
            e eVar = f917g;
            h hVar = this.f921e;
            eVar.i(hVar, ((a) ((Drawable) hVar.f8016b)).f8511e);
        }
    }

    public CardView(Context context, AttributeSet attributeSet, int i6) {
        ColorStateList colorStateListValueOf;
        super(context, attributeSet, i6);
        Rect rect = new Rect();
        this.f920c = rect;
        this.d = new Rect();
        h hVar = new h(this);
        this.f921e = hVar;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, n.a.f8290a, i6, com.p2elite.brtv2.R.style.CardView);
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            colorStateListValueOf = typedArrayObtainStyledAttributes.getColorStateList(2);
        } else {
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(f);
            int color = typedArrayObtainStyledAttributes2.getColor(0, 0);
            typedArrayObtainStyledAttributes2.recycle();
            float[] fArr = new float[3];
            Color.colorToHSV(color, fArr);
            colorStateListValueOf = ColorStateList.valueOf(fArr[2] > 0.5f ? getResources().getColor(com.p2elite.brtv2.R.color.cardview_light_background) : getResources().getColor(com.p2elite.brtv2.R.color.cardview_dark_background));
        }
        float dimension = typedArrayObtainStyledAttributes.getDimension(3, 0.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(4, 0.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(5, 0.0f);
        this.f918a = typedArrayObtainStyledAttributes.getBoolean(7, false);
        this.f919b = typedArrayObtainStyledAttributes.getBoolean(6, true);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        rect.left = typedArrayObtainStyledAttributes.getDimensionPixelSize(10, dimensionPixelSize);
        rect.top = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, dimensionPixelSize);
        rect.right = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, dimensionPixelSize);
        rect.bottom = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, dimensionPixelSize);
        dimension3 = dimension2 > dimension3 ? dimension2 : dimension3;
        typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        e eVar = f917g;
        a aVar = new a(colorStateListValueOf, dimension);
        hVar.f8016b = aVar;
        setBackgroundDrawable(aVar);
        setClipToOutline(true);
        setElevation(dimension2);
        eVar.i(hVar, dimension3);
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        a aVar = (a) ((Drawable) this.f921e.f8016b);
        if (colorStateList == null) {
            aVar.getClass();
            colorStateList = ColorStateList.valueOf(0);
        }
        aVar.f8513h = colorStateList;
        aVar.f8509b.setColor(colorStateList.getColorForState(aVar.getState(), aVar.f8513h.getDefaultColor()));
        aVar.invalidateSelf();
    }

    @Override // android.view.View
    public final void setPadding(int i6, int i10, int i11, int i12) {
    }

    @Override // android.view.View
    public final void setPaddingRelative(int i6, int i10, int i11, int i12) {
    }
}
