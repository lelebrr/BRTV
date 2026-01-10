package z6;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import androidx.appcompat.widget.s2;
import com.google.android.material.internal.w;
import com.google.android.material.internal.x;
import r6.d;
import u6.f;
import u6.h;
import u6.i;
import u6.l;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class a extends h implements w {
    public final x A;
    public final s2 B;
    public final Rect C;
    public int D;
    public int E;
    public int F;
    public int G;
    public int H;
    public int I;
    public float J;
    public float K;
    public float L;
    public float M;

    /* renamed from: x, reason: collision with root package name */
    public CharSequence f11669x;

    /* renamed from: y, reason: collision with root package name */
    public final Context f11670y;

    /* renamed from: z, reason: collision with root package name */
    public final Paint.FontMetrics f11671z;

    public a(Context context, int i6) {
        super(context, null, 0, i6);
        this.f11671z = new Paint.FontMetrics();
        x xVar = new x(this);
        this.A = xVar;
        this.B = new s2(3, this);
        this.C = new Rect();
        this.J = 1.0f;
        this.K = 1.0f;
        this.L = 0.5f;
        this.M = 1.0f;
        this.f11670y = context;
        TextPaint textPaint = xVar.f5081a;
        textPaint.density = context.getResources().getDisplayMetrics().density;
        textPaint.setTextAlign(Paint.Align.CENTER);
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        canvas.save();
        float fW = w();
        float f = (float) (-((Math.sqrt(2.0d) * this.H) - this.H));
        canvas.scale(this.J, this.K, (getBounds().width() * 0.5f) + getBounds().left, (getBounds().height() * this.L) + getBounds().top);
        canvas.translate(fW, f);
        super.draw(canvas);
        if (this.f11669x != null) {
            float fCenterY = getBounds().centerY();
            x xVar = this.A;
            TextPaint textPaint = xVar.f5081a;
            Paint.FontMetrics fontMetrics = this.f11671z;
            textPaint.getFontMetrics(fontMetrics);
            int i6 = (int) (fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f));
            d dVar = xVar.f;
            TextPaint textPaint2 = xVar.f5081a;
            if (dVar != null) {
                textPaint2.drawableState = getState();
                xVar.f.e(this.f11670y, textPaint2, xVar.f5082b);
                textPaint2.setAlpha((int) (this.M * 255.0f));
            }
            CharSequence charSequence = this.f11669x;
            canvas.drawText(charSequence, 0, charSequence.length(), r0.centerX(), i6, textPaint2);
        }
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) Math.max(this.A.f5081a.getTextSize(), this.F);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float f = this.D * 2;
        CharSequence charSequence = this.f11669x;
        return (int) Math.max(f + (charSequence == null ? 0.0f : this.A.a(charSequence.toString())), this.E);
    }

    @Override // u6.h, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        l lVarF = this.f10367a.f10350a.f();
        lVarF.f10397k = x();
        setShapeAppearanceModel(lVarF.a());
    }

    public final float w() {
        int i6;
        Rect rect = this.C;
        if (((rect.right - getBounds().right) - this.I) - this.G < 0) {
            i6 = ((rect.right - getBounds().right) - this.I) - this.G;
        } else {
            if (((rect.left - getBounds().left) - this.I) + this.G <= 0) {
                return 0.0f;
            }
            i6 = ((rect.left - getBounds().left) - this.I) + this.G;
        }
        return i6;
    }

    public final i x() {
        float f = -w();
        float fWidth = ((float) (getBounds().width() - (Math.sqrt(2.0d) * this.H))) / 2.0f;
        return new i(new f(this.H), Math.min(Math.max(f, -fWidth), fWidth));
    }
}
