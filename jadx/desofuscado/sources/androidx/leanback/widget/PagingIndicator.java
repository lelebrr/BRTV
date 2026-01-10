package androidx.leanback.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import com.p2elite.brtv2.R;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class PagingIndicator extends View {

    /* renamed from: w, reason: collision with root package name */
    public static final DecelerateInterpolator f1694w = new DecelerateInterpolator();

    /* renamed from: x, reason: collision with root package name */
    public static final f1 f1695x;

    /* renamed from: y, reason: collision with root package name */
    public static final f1 f1696y;

    /* renamed from: z, reason: collision with root package name */
    public static final f1 f1697z;

    /* renamed from: a, reason: collision with root package name */
    public boolean f1698a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1699b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1700c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1701e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1702g;

    /* renamed from: h, reason: collision with root package name */
    public final int f1703h;

    /* renamed from: i, reason: collision with root package name */
    public i0[] f1704i;

    /* renamed from: j, reason: collision with root package name */
    public int[] f1705j;

    /* renamed from: k, reason: collision with root package name */
    public int[] f1706k;

    /* renamed from: l, reason: collision with root package name */
    public int[] f1707l;

    /* renamed from: m, reason: collision with root package name */
    public int f1708m;

    /* renamed from: n, reason: collision with root package name */
    public int f1709n;

    /* renamed from: o, reason: collision with root package name */
    public int f1710o;

    /* renamed from: p, reason: collision with root package name */
    public int f1711p;

    /* renamed from: q, reason: collision with root package name */
    public final Paint f1712q;

    /* renamed from: r, reason: collision with root package name */
    public final Paint f1713r;

    /* renamed from: s, reason: collision with root package name */
    public Bitmap f1714s;

    /* renamed from: t, reason: collision with root package name */
    public Paint f1715t;

    /* renamed from: u, reason: collision with root package name */
    public final Rect f1716u;

    /* renamed from: v, reason: collision with root package name */
    public final float f1717v;

    static {
        Class<Float> cls = Float.class;
        f1695x = new f1("alpha", cls, 1);
        f1696y = new f1("diameter", cls, 2);
        f1697z = new f1("translation_x", cls, 3);
    }

    public PagingIndicator(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int getDesiredHeight() {
        return getPaddingBottom() + getPaddingTop() + this.f1701e + this.f1703h;
    }

    private int getDesiredWidth() {
        return getPaddingRight() + getPaddingLeft() + getRequiredWidth();
    }

    private int getRequiredWidth() {
        return ((this.f1709n - 3) * this.d) + (this.f1702g * 2) + (this.f1700c * 2);
    }

    private void setSelectedPage(int i6) {
        if (i6 == this.f1710o) {
            return;
        }
        this.f1710o = i6;
        a();
    }

    public final void a() {
        int i6;
        int i10 = 0;
        while (true) {
            i6 = this.f1710o;
            if (i10 >= i6) {
                break;
            }
            this.f1704i[i10].b();
            i0 i0Var = this.f1704i[i10];
            if (i10 != 0) {
                f = 1.0f;
            }
            i0Var.f1838h = f;
            i0Var.d = this.f1706k[i10];
            i10++;
        }
        i0 i0Var2 = this.f1704i[i6];
        i0Var2.f1835c = 0.0f;
        i0Var2.d = 0.0f;
        PagingIndicator pagingIndicator = i0Var2.f1840j;
        i0Var2.f1836e = pagingIndicator.f1701e;
        float f = pagingIndicator.f;
        i0Var2.f = f;
        i0Var2.f1837g = f * pagingIndicator.f1717v;
        i0Var2.f1833a = 1.0f;
        i0Var2.a();
        i0[] i0VarArr = this.f1704i;
        int i11 = this.f1710o;
        i0 i0Var3 = i0VarArr[i11];
        i0Var3.f1838h = i11 <= 0 ? 1.0f : -1.0f;
        i0Var3.d = this.f1705j[i11];
        while (true) {
            i11++;
            if (i11 >= this.f1709n) {
                return;
            }
            this.f1704i[i11].b();
            i0 i0Var4 = this.f1704i[i11];
            i0Var4.f1838h = 1.0f;
            i0Var4.d = this.f1707l[i11];
        }
    }

    public final void b() {
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int requiredWidth = getRequiredWidth();
        int i6 = (paddingLeft + width) / 2;
        int i10 = this.f1709n;
        int[] iArr = new int[i10];
        this.f1705j = iArr;
        int[] iArr2 = new int[i10];
        this.f1706k = iArr2;
        int[] iArr3 = new int[i10];
        this.f1707l = iArr3;
        boolean z7 = this.f1698a;
        int i11 = this.f1700c;
        int i12 = this.f1702g;
        int i13 = this.d;
        int i14 = 1;
        if (z7) {
            int i15 = i6 - (requiredWidth / 2);
            iArr[0] = ((i15 + i11) - i13) + i12;
            iArr2[0] = i15 + i11;
            iArr3[0] = (i12 * 2) + ((i15 + i11) - (i13 * 2));
            while (i14 < this.f1709n) {
                int[] iArr4 = this.f1705j;
                int[] iArr5 = this.f1706k;
                int i16 = i14 - 1;
                iArr4[i14] = iArr5[i16] + i12;
                iArr5[i14] = iArr5[i16] + i13;
                this.f1707l[i14] = iArr4[i16] + i12;
                i14++;
            }
        } else {
            int i17 = (requiredWidth / 2) + i6;
            iArr[0] = ((i17 - i11) + i13) - i12;
            iArr2[0] = i17 - i11;
            iArr3[0] = ((i13 * 2) + (i17 - i11)) - (i12 * 2);
            while (i14 < this.f1709n) {
                int[] iArr6 = this.f1705j;
                int[] iArr7 = this.f1706k;
                int i18 = i14 - 1;
                iArr6[i14] = iArr7[i18] - i12;
                iArr7[i14] = iArr7[i18] - i13;
                this.f1707l[i14] = iArr6[i18] - i12;
                i14++;
            }
        }
        this.f1708m = paddingTop + this.f;
        a();
    }

    public final ObjectAnimator c() {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, f1697z, (-this.f1702g) + this.d, 0.0f);
        objectAnimatorOfFloat.setDuration(417L);
        objectAnimatorOfFloat.setInterpolator(f1694w);
        return objectAnimatorOfFloat;
    }

    public final Bitmap d() {
        Bitmap bitmapDecodeResource = BitmapFactory.decodeResource(getResources(), R.drawable.lb_ic_nav_arrow);
        if (this.f1698a) {
            return bitmapDecodeResource;
        }
        Matrix matrix = new Matrix();
        matrix.preScale(-1.0f, 1.0f);
        return Bitmap.createBitmap(bitmapDecodeResource, 0, 0, bitmapDecodeResource.getWidth(), bitmapDecodeResource.getHeight(), matrix, false);
    }

    public int[] getDotSelectedLeftX() {
        return this.f1706k;
    }

    public int[] getDotSelectedRightX() {
        return this.f1707l;
    }

    public int[] getDotSelectedX() {
        return this.f1705j;
    }

    public int getPageCount() {
        return this.f1709n;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        for (int i6 = 0; i6 < this.f1709n; i6++) {
            i0 i0Var = this.f1704i[i6];
            float f = i0Var.d + i0Var.f1835c;
            PagingIndicator pagingIndicator = i0Var.f1840j;
            canvas.drawCircle(f, pagingIndicator.f1708m, i0Var.f, pagingIndicator.f1712q);
            if (i0Var.f1833a > 0.0f) {
                Paint paint = pagingIndicator.f1713r;
                paint.setColor(i0Var.f1834b);
                canvas.drawCircle(f, pagingIndicator.f1708m, i0Var.f, paint);
                Bitmap bitmap = pagingIndicator.f1714s;
                float f3 = i0Var.f1837g;
                float f4 = pagingIndicator.f1708m;
                canvas.drawBitmap(bitmap, pagingIndicator.f1716u, new Rect((int) (f - f3), (int) (f4 - f3), (int) (f + f3), (int) (f4 + f3)), pagingIndicator.f1715t);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        int desiredHeight = getDesiredHeight();
        int mode = View.MeasureSpec.getMode(i10);
        if (mode == Integer.MIN_VALUE) {
            desiredHeight = Math.min(desiredHeight, View.MeasureSpec.getSize(i10));
        } else if (mode == 1073741824) {
            desiredHeight = View.MeasureSpec.getSize(i10);
        }
        int desiredWidth = getDesiredWidth();
        int mode2 = View.MeasureSpec.getMode(i6);
        if (mode2 == Integer.MIN_VALUE) {
            desiredWidth = Math.min(desiredWidth, View.MeasureSpec.getSize(i6));
        } else if (mode2 == 1073741824) {
            desiredWidth = View.MeasureSpec.getSize(i6);
        }
        setMeasuredDimension(desiredWidth, desiredHeight);
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i6) {
        super.onRtlPropertiesChanged(i6);
        boolean z7 = i6 == 0;
        if (this.f1698a != z7) {
            this.f1698a = z7;
            this.f1714s = d();
            i0[] i0VarArr = this.f1704i;
            if (i0VarArr != null) {
                for (i0 i0Var : i0VarArr) {
                    i0Var.f1839i = i0Var.f1840j.f1698a ? 1.0f : -1.0f;
                }
            }
            b();
            invalidate();
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i6, int i10, int i11, int i12) {
        setMeasuredDimension(i6, i10);
        b();
    }

    public void setArrowBackgroundColor(int i6) {
        this.f1711p = i6;
    }

    public void setArrowColor(int i6) {
        if (this.f1715t == null) {
            this.f1715t = new Paint();
        }
        this.f1715t.setColorFilter(new PorterDuffColorFilter(i6, PorterDuff.Mode.SRC_IN));
    }

    public void setDotBackgroundColor(int i6) {
        this.f1712q.setColor(i6);
    }

    public void setPageCount(int i6) {
        if (i6 <= 0) {
            throw new IllegalArgumentException("The page count should be a positive integer");
        }
        this.f1709n = i6;
        this.f1704i = new i0[i6];
        for (int i10 = 0; i10 < this.f1709n; i10++) {
            this.f1704i[i10] = new i0(this);
        }
        b();
        setSelectedPage(0);
    }

    public PagingIndicator(Context context, AttributeSet attributeSet, int i6) throws Resources.NotFoundException {
        super(context, attributeSet, i6);
        AnimatorSet animatorSet = new AnimatorSet();
        Resources resources = getResources();
        int[] iArr = h1.a.f7161b;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        n0.s0.p(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i6, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(6, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_dot_radius));
        this.f1700c = dimensionPixelOffset;
        int i10 = dimensionPixelOffset * 2;
        this.f1699b = i10;
        int dimensionPixelOffset2 = typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_arrow_radius));
        this.f = dimensionPixelOffset2;
        int i11 = dimensionPixelOffset2 * 2;
        this.f1701e = i11;
        this.d = typedArrayObtainStyledAttributes.getDimensionPixelOffset(5, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_dot_gap));
        this.f1702g = typedArrayObtainStyledAttributes.getDimensionPixelOffset(4, getResources().getDimensionPixelOffset(R.dimen.lb_page_indicator_arrow_gap));
        int color = typedArrayObtainStyledAttributes.getColor(3, getResources().getColor(R.color.lb_page_indicator_dot));
        Paint paint = new Paint(1);
        this.f1712q = paint;
        paint.setColor(color);
        this.f1711p = typedArrayObtainStyledAttributes.getColor(0, getResources().getColor(R.color.lb_page_indicator_arrow_background));
        if (this.f1715t == null && typedArrayObtainStyledAttributes.hasValue(1)) {
            setArrowColor(typedArrayObtainStyledAttributes.getColor(1, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f1698a = resources.getConfiguration().getLayoutDirection() == 0;
        int color2 = resources.getColor(R.color.lb_page_indicator_arrow_shadow);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.lb_page_indicator_arrow_shadow_radius);
        this.f1703h = dimensionPixelSize;
        Paint paint2 = new Paint(1);
        this.f1713r = paint2;
        float dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.lb_page_indicator_arrow_shadow_offset);
        paint2.setShadowLayer(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize2, color2);
        this.f1714s = d();
        this.f1716u = new Rect(0, 0, this.f1714s.getWidth(), this.f1714s.getHeight());
        float f = i11;
        this.f1717v = this.f1714s.getWidth() / f;
        AnimatorSet animatorSet2 = new AnimatorSet();
        f1 f1Var = f1695x;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat((Object) null, f1Var, 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(167L);
        DecelerateInterpolator decelerateInterpolator = f1694w;
        objectAnimatorOfFloat.setInterpolator(decelerateInterpolator);
        float f3 = i10;
        f1 f1Var2 = f1696y;
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat((Object) null, f1Var2, f3, f);
        objectAnimatorOfFloat2.setDuration(417L);
        objectAnimatorOfFloat2.setInterpolator(decelerateInterpolator);
        animatorSet2.playTogether(objectAnimatorOfFloat, objectAnimatorOfFloat2, c());
        AnimatorSet animatorSet3 = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat((Object) null, f1Var, 1.0f, 0.0f);
        objectAnimatorOfFloat3.setDuration(167L);
        objectAnimatorOfFloat3.setInterpolator(decelerateInterpolator);
        ObjectAnimator objectAnimatorOfFloat4 = ObjectAnimator.ofFloat((Object) null, f1Var2, f, f3);
        objectAnimatorOfFloat4.setDuration(417L);
        objectAnimatorOfFloat4.setInterpolator(decelerateInterpolator);
        animatorSet3.playTogether(objectAnimatorOfFloat3, objectAnimatorOfFloat4, c());
        animatorSet.playTogether(animatorSet2, animatorSet3);
        setLayerType(1, null);
    }
}
