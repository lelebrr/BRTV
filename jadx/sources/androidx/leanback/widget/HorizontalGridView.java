package androidx.leanback.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class HorizontalGridView extends j {

    /* renamed from: g, reason: collision with root package name */
    public boolean f1659g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1660h;

    /* renamed from: i, reason: collision with root package name */
    public final Paint f1661i;

    /* renamed from: j, reason: collision with root package name */
    public Bitmap f1662j;

    /* renamed from: k, reason: collision with root package name */
    public LinearGradient f1663k;

    /* renamed from: l, reason: collision with root package name */
    public int f1664l;

    /* renamed from: m, reason: collision with root package name */
    public int f1665m;

    /* renamed from: n, reason: collision with root package name */
    public Bitmap f1666n;

    /* renamed from: o, reason: collision with root package name */
    public LinearGradient f1667o;

    /* renamed from: p, reason: collision with root package name */
    public int f1668p;

    /* renamed from: q, reason: collision with root package name */
    public int f1669q;

    /* renamed from: r, reason: collision with root package name */
    public final Rect f1670r;

    public HorizontalGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private Bitmap getTempBitmapHigh() {
        Bitmap bitmap = this.f1666n;
        if (bitmap == null || bitmap.getWidth() != this.f1668p || this.f1666n.getHeight() != getHeight()) {
            this.f1666n = Bitmap.createBitmap(this.f1668p, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f1666n;
    }

    private Bitmap getTempBitmapLow() {
        Bitmap bitmap = this.f1662j;
        if (bitmap == null || bitmap.getWidth() != this.f1664l || this.f1662j.getHeight() != getHeight()) {
            this.f1662j = Bitmap.createBitmap(this.f1664l, getHeight(), Bitmap.Config.ARGB_8888);
        }
        return this.f1662j;
    }

    public final void c() {
        if (this.f1659g || this.f1660h) {
            setLayerType(2, null);
            setWillNotDraw(false);
        } else {
            setLayerType(0, null);
            setWillNotDraw(true);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
    public final void draw(Canvas canvas) {
        boolean z7;
        boolean z10 = true;
        if (this.f1659g) {
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                this.f1841a.getClass();
                t tVar = (t) childAt.getLayoutParams();
                tVar.getClass();
                if (childAt.getLeft() + tVar.f1921e < getPaddingLeft() - this.f1665m) {
                    z7 = true;
                    break;
                }
            }
            z7 = false;
        } else {
            z7 = false;
        }
        if (this.f1660h) {
            for (int childCount2 = getChildCount() - 1; childCount2 >= 0; childCount2--) {
                View childAt2 = getChildAt(childCount2);
                this.f1841a.getClass();
                t tVar2 = (t) childAt2.getLayoutParams();
                tVar2.getClass();
                if (childAt2.getRight() - tVar2.f1922g > (getWidth() - getPaddingRight()) + this.f1669q) {
                    break;
                }
            }
            z10 = false;
        } else {
            z10 = false;
        }
        if (!z7) {
            this.f1662j = null;
        }
        if (!z10) {
            this.f1666n = null;
        }
        if (!z7 && !z10) {
            super.draw(canvas);
            return;
        }
        int paddingLeft = this.f1659g ? (getPaddingLeft() - this.f1665m) - this.f1664l : 0;
        int width = this.f1660h ? (getWidth() - getPaddingRight()) + this.f1669q + this.f1668p : getWidth();
        int iSave = canvas.save();
        canvas.clipRect((this.f1659g ? this.f1664l : 0) + paddingLeft, 0, width - (this.f1660h ? this.f1668p : 0), getHeight());
        super.draw(canvas);
        canvas.restoreToCount(iSave);
        Canvas canvas2 = new Canvas();
        Rect rect = this.f1670r;
        rect.top = 0;
        rect.bottom = getHeight();
        if (z7 && this.f1664l > 0) {
            Bitmap tempBitmapLow = getTempBitmapLow();
            tempBitmapLow.eraseColor(0);
            canvas2.setBitmap(tempBitmapLow);
            int iSave2 = canvas2.save();
            canvas2.clipRect(0, 0, this.f1664l, getHeight());
            float f = -paddingLeft;
            canvas2.translate(f, 0.0f);
            super.draw(canvas2);
            canvas2.restoreToCount(iSave2);
            this.f1661i.setShader(this.f1663k);
            canvas2.drawRect(0.0f, 0.0f, this.f1664l, getHeight(), this.f1661i);
            rect.left = 0;
            rect.right = this.f1664l;
            canvas.translate(paddingLeft, 0.0f);
            canvas.drawBitmap(tempBitmapLow, rect, rect, (Paint) null);
            canvas.translate(f, 0.0f);
        }
        if (!z10 || this.f1668p <= 0) {
            return;
        }
        Bitmap tempBitmapHigh = getTempBitmapHigh();
        tempBitmapHigh.eraseColor(0);
        canvas2.setBitmap(tempBitmapHigh);
        int iSave3 = canvas2.save();
        canvas2.clipRect(0, 0, this.f1668p, getHeight());
        canvas2.translate(-(width - this.f1668p), 0.0f);
        super.draw(canvas2);
        canvas2.restoreToCount(iSave3);
        this.f1661i.setShader(this.f1667o);
        canvas2.drawRect(0.0f, 0.0f, this.f1668p, getHeight(), this.f1661i);
        rect.left = 0;
        rect.right = this.f1668p;
        canvas.translate(width - r3, 0.0f);
        canvas.drawBitmap(tempBitmapHigh, rect, rect, (Paint) null);
        canvas.translate(-(width - this.f1668p), 0.0f);
    }

    @SuppressLint({"GetterSetterNames"})
    public final boolean getFadingLeftEdge() {
        return this.f1659g;
    }

    public final int getFadingLeftEdgeLength() {
        return this.f1664l;
    }

    public final int getFadingLeftEdgeOffset() {
        return this.f1665m;
    }

    @SuppressLint({"GetterSetterNames"})
    public final boolean getFadingRightEdge() {
        return this.f1660h;
    }

    public final int getFadingRightEdgeLength() {
        return this.f1668p;
    }

    public final int getFadingRightEdgeOffset() {
        return this.f1669q;
    }

    public final void setFadingLeftEdge(boolean z7) {
        if (this.f1659g != z7) {
            this.f1659g = z7;
            if (!z7) {
                this.f1662j = null;
            }
            invalidate();
            c();
        }
    }

    public final void setFadingLeftEdgeLength(int i6) {
        if (this.f1664l != i6) {
            this.f1664l = i6;
            if (i6 != 0) {
                this.f1663k = new LinearGradient(0.0f, 0.0f, this.f1664l, 0.0f, 0, -16777216, Shader.TileMode.CLAMP);
            } else {
                this.f1663k = null;
            }
            invalidate();
        }
    }

    public final void setFadingLeftEdgeOffset(int i6) {
        if (this.f1665m != i6) {
            this.f1665m = i6;
            invalidate();
        }
    }

    public final void setFadingRightEdge(boolean z7) {
        if (this.f1660h != z7) {
            this.f1660h = z7;
            if (!z7) {
                this.f1666n = null;
            }
            invalidate();
            c();
        }
    }

    public final void setFadingRightEdgeLength(int i6) {
        if (this.f1668p != i6) {
            this.f1668p = i6;
            if (i6 != 0) {
                this.f1667o = new LinearGradient(0.0f, 0.0f, this.f1668p, 0.0f, -16777216, 0, Shader.TileMode.CLAMP);
            } else {
                this.f1667o = null;
            }
            invalidate();
        }
    }

    public final void setFadingRightEdgeOffset(int i6) {
        if (this.f1669q != i6) {
            this.f1669q = i6;
            invalidate();
        }
    }

    public void setNumRows(int i6) {
        GridLayoutManager gridLayoutManager = this.f1841a;
        if (i6 < 0) {
            gridLayoutManager.getClass();
            throw new IllegalArgumentException();
        }
        gridLayoutManager.F = i6;
        requestLayout();
    }

    public void setRowHeight(TypedArray typedArray) {
        if (typedArray.peekValue(1) != null) {
            setRowHeight(typedArray.getLayoutDimension(1, 0));
        }
    }

    public HorizontalGridView(Context context, AttributeSet attributeSet, int i6) {
        super(context, attributeSet, i6);
        this.f1661i = new Paint();
        this.f1670r = new Rect();
        this.f1841a.setOrientation(0);
        b(context, attributeSet);
        int[] iArr = m0.f1861b;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr);
        n0.s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        setRowHeight(typedArrayObtainStyledAttributes);
        setNumRows(typedArrayObtainStyledAttributes.getInt(0, 1));
        typedArrayObtainStyledAttributes.recycle();
        c();
        Paint paint = new Paint();
        this.f1661i = paint;
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    }

    public void setRowHeight(int i6) {
        this.f1841a.I(i6);
        requestLayout();
    }
}
