package g0;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import com.alibaba.fastjson.asm.Opcodes;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f7041a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7042b;

    /* renamed from: e, reason: collision with root package name */
    public final BitmapShader f7044e;

    /* renamed from: g, reason: collision with root package name */
    public float f7045g;

    /* renamed from: k, reason: collision with root package name */
    public final int f7049k;

    /* renamed from: l, reason: collision with root package name */
    public final int f7050l;

    /* renamed from: c, reason: collision with root package name */
    public final int f7043c = 119;
    public final Paint d = new Paint(3);
    public final Matrix f = new Matrix();

    /* renamed from: h, reason: collision with root package name */
    public final Rect f7046h = new Rect();

    /* renamed from: i, reason: collision with root package name */
    public final RectF f7047i = new RectF();

    /* renamed from: j, reason: collision with root package name */
    public boolean f7048j = true;

    public g(Resources resources, Bitmap bitmap) {
        this.f7042b = Opcodes.IF_ICMPNE;
        if (resources != null) {
            this.f7042b = resources.getDisplayMetrics().densityDpi;
        }
        this.f7041a = bitmap;
        if (bitmap == null) {
            this.f7050l = -1;
            this.f7049k = -1;
            this.f7044e = null;
        } else {
            int i6 = this.f7042b;
            this.f7049k = bitmap.getScaledWidth(i6);
            this.f7050l = bitmap.getScaledHeight(i6);
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f7044e = new BitmapShader(bitmap, tileMode, tileMode);
        }
    }

    public final void a(float f) {
        if (this.f7045g == f) {
            return;
        }
        boolean z7 = f > 0.05f;
        Paint paint = this.d;
        if (z7) {
            paint.setShader(this.f7044e);
        } else {
            paint.setShader(null);
        }
        this.f7045g = f;
        invalidateSelf();
    }

    public final void b() {
        if (this.f7048j) {
            Gravity.apply(this.f7043c, this.f7049k, this.f7050l, getBounds(), this.f7046h, 0);
            RectF rectF = this.f7047i;
            rectF.set(this.f7046h);
            BitmapShader bitmapShader = this.f7044e;
            if (bitmapShader != null) {
                Matrix matrix = this.f;
                matrix.setTranslate(rectF.left, rectF.top);
                float fWidth = rectF.width();
                Bitmap bitmap = this.f7041a;
                matrix.preScale(fWidth / bitmap.getWidth(), rectF.height() / bitmap.getHeight());
                bitmapShader.setLocalMatrix(matrix);
                this.d.setShader(bitmapShader);
            }
            this.f7048j = false;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Bitmap bitmap = this.f7041a;
        if (bitmap == null) {
            return;
        }
        b();
        Paint paint = this.d;
        if (paint.getShader() == null) {
            canvas.drawBitmap(bitmap, (Rect) null, this.f7046h, paint);
            return;
        }
        RectF rectF = this.f7047i;
        float f = this.f7045g;
        canvas.drawRoundRect(rectF, f, f, paint);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.d.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.d.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f7050l;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f7049k;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Bitmap bitmap;
        return (this.f7043c != 119 || (bitmap = this.f7041a) == null || bitmap.hasAlpha() || this.d.getAlpha() < 255 || this.f7045g > 0.05f) ? -3 : -1;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        b();
        outline.setRoundRect(this.f7046h, this.f7045g);
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f7048j = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        Paint paint = this.d;
        if (i6 != paint.getAlpha()) {
            paint.setAlpha(i6);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.d.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setDither(boolean z7) {
        this.d.setDither(z7);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setFilterBitmap(boolean z7) {
        this.d.setFilterBitmap(z7);
        invalidateSelf();
    }
}
