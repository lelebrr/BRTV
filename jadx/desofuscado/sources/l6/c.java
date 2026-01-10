package l6;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends Drawable {

    /* renamed from: b, reason: collision with root package name */
    public final Paint f7994b;

    /* renamed from: h, reason: collision with root package name */
    public float f7998h;

    /* renamed from: i, reason: collision with root package name */
    public int f7999i;

    /* renamed from: j, reason: collision with root package name */
    public int f8000j;

    /* renamed from: k, reason: collision with root package name */
    public int f8001k;

    /* renamed from: l, reason: collision with root package name */
    public int f8002l;

    /* renamed from: m, reason: collision with root package name */
    public int f8003m;

    /* renamed from: o, reason: collision with root package name */
    public u6.m f8005o;

    /* renamed from: p, reason: collision with root package name */
    public ColorStateList f8006p;

    /* renamed from: a, reason: collision with root package name */
    public final u6.o f7993a = u6.n.f10410a;

    /* renamed from: c, reason: collision with root package name */
    public final Path f7995c = new Path();
    public final Rect d = new Rect();

    /* renamed from: e, reason: collision with root package name */
    public final RectF f7996e = new RectF();
    public final RectF f = new RectF();

    /* renamed from: g, reason: collision with root package name */
    public final i3.c f7997g = new i3.c(this);

    /* renamed from: n, reason: collision with root package name */
    public boolean f8004n = true;

    public c(u6.m mVar) {
        this.f8005o = mVar;
        Paint paint = new Paint(1);
        this.f7994b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        boolean z7 = this.f8004n;
        Paint paint = this.f7994b;
        Rect rect = this.d;
        if (z7) {
            copyBounds(rect);
            float fHeight = this.f7998h / rect.height();
            paint.setShader(new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{f0.a.f(this.f7999i, this.f8003m), f0.a.f(this.f8000j, this.f8003m), f0.a.f(f0.a.h(this.f8000j, 0), this.f8003m), f0.a.f(f0.a.h(this.f8002l, 0), this.f8003m), f0.a.f(this.f8002l, this.f8003m), f0.a.f(this.f8001k, this.f8003m)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP));
            this.f8004n = false;
        }
        float strokeWidth = paint.getStrokeWidth() / 2.0f;
        copyBounds(rect);
        RectF rectF = this.f7996e;
        rectF.set(rect);
        u6.c cVar = this.f8005o.f10403e;
        RectF rectF2 = this.f;
        rectF2.set(getBounds());
        float fMin = Math.min(cVar.a(rectF2), rectF.width() / 2.0f);
        u6.m mVar = this.f8005o;
        rectF2.set(getBounds());
        if (mVar.e(rectF2)) {
            rectF.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(rectF, fMin, fMin, paint);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f7997g;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return this.f7998h > 0.0f ? -3 : -2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        u6.m mVar = this.f8005o;
        RectF rectF = this.f;
        rectF.set(getBounds());
        if (mVar.e(rectF)) {
            u6.c cVar = this.f8005o.f10403e;
            rectF.set(getBounds());
            outline.setRoundRect(getBounds(), cVar.a(rectF));
            return;
        }
        Rect rect = this.d;
        copyBounds(rect);
        RectF rectF2 = this.f7996e;
        rectF2.set(rect);
        u6.m mVar2 = this.f8005o;
        Path path = this.f7995c;
        this.f7993a.a(mVar2, 1.0f, rectF2, null, path);
        if (path.isConvex()) {
            outline.setConvexPath(path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        u6.m mVar = this.f8005o;
        RectF rectF = this.f;
        rectF.set(getBounds());
        if (!mVar.e(rectF)) {
            return true;
        }
        int iRound = Math.round(this.f7998h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList = this.f8006p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        this.f8004n = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f8006p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f8003m)) != this.f8003m) {
            this.f8004n = true;
            this.f8003m = colorForState;
        }
        if (this.f8004n) {
            invalidateSelf();
        }
        return this.f8004n;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        this.f7994b.setAlpha(i6);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f7994b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
