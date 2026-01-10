package u6;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.BitSet;
import java.util.Objects;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class h extends Drawable implements g0.h, x {

    /* renamed from: w, reason: collision with root package name */
    public static final Paint f10366w;

    /* renamed from: a, reason: collision with root package name */
    public g f10367a;

    /* renamed from: b, reason: collision with root package name */
    public final v[] f10368b;

    /* renamed from: c, reason: collision with root package name */
    public final v[] f10369c;
    public final BitSet d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10370e;
    public final Matrix f;

    /* renamed from: g, reason: collision with root package name */
    public final Path f10371g;

    /* renamed from: h, reason: collision with root package name */
    public final Path f10372h;

    /* renamed from: i, reason: collision with root package name */
    public final RectF f10373i;

    /* renamed from: j, reason: collision with root package name */
    public final RectF f10374j;

    /* renamed from: k, reason: collision with root package name */
    public final Region f10375k;

    /* renamed from: l, reason: collision with root package name */
    public final Region f10376l;

    /* renamed from: m, reason: collision with root package name */
    public m f10377m;

    /* renamed from: n, reason: collision with root package name */
    public final Paint f10378n;

    /* renamed from: o, reason: collision with root package name */
    public final Paint f10379o;

    /* renamed from: p, reason: collision with root package name */
    public final t6.a f10380p;

    /* renamed from: q, reason: collision with root package name */
    public final s2.c f10381q;

    /* renamed from: r, reason: collision with root package name */
    public final o f10382r;

    /* renamed from: s, reason: collision with root package name */
    public PorterDuffColorFilter f10383s;

    /* renamed from: t, reason: collision with root package name */
    public PorterDuffColorFilter f10384t;

    /* renamed from: u, reason: collision with root package name */
    public final RectF f10385u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f10386v;

    static {
        Paint paint = new Paint(1);
        f10366w = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public h() {
        this(new m());
    }

    public void a() {
        invalidateSelf();
    }

    public final void b(RectF rectF, Path path) {
        g gVar = this.f10367a;
        this.f10382r.a(gVar.f10350a, gVar.f10356i, rectF, this.f10381q, path);
        if (this.f10367a.f10355h != 1.0f) {
            Matrix matrix = this.f;
            matrix.reset();
            float f = this.f10367a.f10355h;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.f10385u, true);
    }

    public final int c(int i6) {
        g gVar = this.f10367a;
        float f = gVar.f10360m + 0.0f + gVar.f10359l;
        j6.a aVar = gVar.f10351b;
        return aVar != null ? aVar.a(i6, f) : i6;
    }

    public final void d(Canvas canvas) {
        if (this.d.cardinality() > 0) {
            Log.w(CmcdData.STREAMING_FORMAT_HLS, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i6 = this.f10367a.f10363p;
        Path path = this.f10371g;
        t6.a aVar = this.f10380p;
        if (i6 != 0) {
            canvas.drawPath(path, aVar.f10149a);
        }
        for (int i10 = 0; i10 < 4; i10++) {
            v vVar = this.f10368b[i10];
            int i11 = this.f10367a.f10362o;
            Matrix matrix = v.f10434a;
            vVar.a(matrix, aVar, i11, canvas);
            this.f10369c[i10].a(matrix, aVar, this.f10367a.f10362o, canvas);
        }
        if (this.f10386v) {
            g gVar = this.f10367a;
            int iSin = (int) (Math.sin(Math.toRadians(gVar.f10364q)) * gVar.f10363p);
            int iH = h();
            canvas.translate(-iSin, -iH);
            canvas.drawPath(path, f10366w);
            canvas.translate(iSin, iH);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00ef  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void draw(android.graphics.Canvas r19) {
        /*
            Method dump skipped, instructions count: 450
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: u6.h.draw(android.graphics.Canvas):void");
    }

    public final void e(Canvas canvas, Paint paint, Path path, m mVar, RectF rectF) {
        if (!mVar.e(rectF)) {
            canvas.drawPath(path, paint);
        } else {
            float fA = mVar.f.a(rectF) * this.f10367a.f10356i;
            canvas.drawRoundRect(rectF, fA, fA, paint);
        }
    }

    public void f(Canvas canvas) {
        Paint paint = this.f10379o;
        Path path = this.f10372h;
        m mVar = this.f10377m;
        RectF rectF = this.f10374j;
        rectF.set(g());
        float strokeWidth = j() ? paint.getStrokeWidth() / 2.0f : 0.0f;
        rectF.inset(strokeWidth, strokeWidth);
        e(canvas, paint, path, mVar, rectF);
    }

    public final RectF g() {
        RectF rectF = this.f10373i;
        rectF.set(getBounds());
        return rectF;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f10367a.f10358k;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f10367a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f10367a.f10361n == 2) {
            return;
        }
        if (l()) {
            outline.setRoundRect(getBounds(), i() * this.f10367a.f10356i);
            return;
        }
        RectF rectFG = g();
        Path path = this.f10371g;
        b(rectFG, path);
        if (path.isConvex() || Build.VERSION.SDK_INT >= 29) {
            try {
                outline.setConvexPath(path);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f10367a.f10354g;
        if (rect2 == null) {
            return super.getPadding(rect);
        }
        rect.set(rect2);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.f10375k;
        region.set(bounds);
        RectF rectFG = g();
        Path path = this.f10371g;
        b(rectFG, path);
        Region region2 = this.f10376l;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final int h() {
        g gVar = this.f10367a;
        return (int) (Math.cos(Math.toRadians(gVar.f10364q)) * gVar.f10363p);
    }

    public final float i() {
        return this.f10367a.f10350a.f10403e.a(g());
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.f10370e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        if (!super.isStateful() && ((colorStateList = this.f10367a.f10353e) == null || !colorStateList.isStateful())) {
            this.f10367a.getClass();
            ColorStateList colorStateList3 = this.f10367a.d;
            if ((colorStateList3 == null || !colorStateList3.isStateful()) && ((colorStateList2 = this.f10367a.f10352c) == null || !colorStateList2.isStateful())) {
                return false;
            }
        }
        return true;
    }

    public final boolean j() {
        Paint.Style style = this.f10367a.f10365r;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f10379o.getStrokeWidth() > 0.0f;
    }

    public final void k(Context context) {
        this.f10367a.f10351b = new j6.a(context);
        v();
    }

    public final boolean l() {
        return this.f10367a.f10350a.e(g());
    }

    public final void m(float f) {
        g gVar = this.f10367a;
        if (gVar.f10360m != f) {
            gVar.f10360m = f;
            v();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        g gVar = this.f10367a;
        g gVar2 = new g();
        gVar2.f10352c = null;
        gVar2.d = null;
        gVar2.f10353e = null;
        gVar2.f = PorterDuff.Mode.SRC_IN;
        gVar2.f10354g = null;
        gVar2.f10355h = 1.0f;
        gVar2.f10356i = 1.0f;
        gVar2.f10358k = 255;
        gVar2.f10359l = 0.0f;
        gVar2.f10360m = 0.0f;
        gVar2.f10361n = 0;
        gVar2.f10362o = 0;
        gVar2.f10363p = 0;
        gVar2.f10364q = 0;
        gVar2.f10365r = Paint.Style.FILL_AND_STROKE;
        gVar2.f10350a = gVar.f10350a;
        gVar2.f10351b = gVar.f10351b;
        gVar2.f10357j = gVar.f10357j;
        gVar2.f10352c = gVar.f10352c;
        gVar2.d = gVar.d;
        gVar2.f = gVar.f;
        gVar2.f10353e = gVar.f10353e;
        gVar2.f10358k = gVar.f10358k;
        gVar2.f10355h = gVar.f10355h;
        gVar2.f10363p = gVar.f10363p;
        gVar2.f10361n = gVar.f10361n;
        gVar2.f10356i = gVar.f10356i;
        gVar2.f10359l = gVar.f10359l;
        gVar2.f10360m = gVar.f10360m;
        gVar2.f10362o = gVar.f10362o;
        gVar2.f10364q = gVar.f10364q;
        gVar2.f10365r = gVar.f10365r;
        if (gVar.f10354g != null) {
            gVar2.f10354g = new Rect(gVar.f10354g);
        }
        this.f10367a = gVar2;
        return this;
    }

    public final void n(ColorStateList colorStateList) {
        g gVar = this.f10367a;
        if (gVar.f10352c != colorStateList) {
            gVar.f10352c = colorStateList;
            onStateChange(getState());
        }
    }

    public final void o(float f) {
        g gVar = this.f10367a;
        if (gVar.f10356i != f) {
            gVar.f10356i = f;
            this.f10370e = true;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f10370e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.w
    public boolean onStateChange(int[] iArr) {
        boolean z7 = t(iArr) || u();
        if (z7) {
            invalidateSelf();
        }
        return z7;
    }

    public final void p(Paint.Style style) {
        this.f10367a.f10365r = style;
        super.invalidateSelf();
    }

    public final void q() {
        this.f10380p.a(-12303292);
        this.f10367a.getClass();
        super.invalidateSelf();
    }

    public final void r() {
        g gVar = this.f10367a;
        if (gVar.f10361n != 2) {
            gVar.f10361n = 2;
            super.invalidateSelf();
        }
    }

    public final void s(ColorStateList colorStateList) {
        g gVar = this.f10367a;
        if (gVar.d != colorStateList) {
            gVar.d = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i6) {
        g gVar = this.f10367a;
        if (gVar.f10358k != i6) {
            gVar.f10358k = i6;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f10367a.getClass();
        super.invalidateSelf();
    }

    @Override // u6.x
    public final void setShapeAppearanceModel(m mVar) {
        this.f10367a.f10350a = mVar;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        setTintList(ColorStateList.valueOf(i6));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f10367a.f10353e = colorStateList;
        u();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        g gVar = this.f10367a;
        if (gVar.f != mode) {
            gVar.f = mode;
            u();
            super.invalidateSelf();
        }
    }

    public final boolean t(int[] iArr) {
        boolean z7;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f10367a.f10352c == null || color2 == (colorForState2 = this.f10367a.f10352c.getColorForState(iArr, (color2 = (paint2 = this.f10378n).getColor())))) {
            z7 = false;
        } else {
            paint2.setColor(colorForState2);
            z7 = true;
        }
        if (this.f10367a.d == null || color == (colorForState = this.f10367a.d.getColorForState(iArr, (color = (paint = this.f10379o).getColor())))) {
            return z7;
        }
        paint.setColor(colorForState);
        return true;
    }

    public final boolean u() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f10383s;
        PorterDuffColorFilter porterDuffColorFilter3 = this.f10384t;
        g gVar = this.f10367a;
        ColorStateList colorStateList = gVar.f10353e;
        PorterDuff.Mode mode = gVar.f;
        Paint paint = this.f10378n;
        if (colorStateList == null || mode == null) {
            int color = paint.getColor();
            int iC = c(color);
            porterDuffColorFilter = iC != color ? new PorterDuffColorFilter(iC, PorterDuff.Mode.SRC_IN) : null;
        } else {
            porterDuffColorFilter = new PorterDuffColorFilter(c(colorStateList.getColorForState(getState(), 0)), mode);
        }
        this.f10383s = porterDuffColorFilter;
        this.f10367a.getClass();
        this.f10384t = null;
        this.f10367a.getClass();
        return (Objects.equals(porterDuffColorFilter2, this.f10383s) && Objects.equals(porterDuffColorFilter3, this.f10384t)) ? false : true;
    }

    public final void v() {
        g gVar = this.f10367a;
        float f = gVar.f10360m + 0.0f;
        gVar.f10362o = (int) Math.ceil(0.75f * f);
        this.f10367a.f10363p = (int) Math.ceil(f * 0.25f);
        u();
        super.invalidateSelf();
    }

    public h(Context context, AttributeSet attributeSet, int i6, int i10) {
        this(m.b(context, attributeSet, i6, i10).a());
    }

    public h(m mVar) {
        g gVar = new g();
        gVar.f10352c = null;
        gVar.d = null;
        gVar.f10353e = null;
        gVar.f = PorterDuff.Mode.SRC_IN;
        gVar.f10354g = null;
        gVar.f10355h = 1.0f;
        gVar.f10356i = 1.0f;
        gVar.f10358k = 255;
        gVar.f10359l = 0.0f;
        gVar.f10360m = 0.0f;
        gVar.f10361n = 0;
        gVar.f10362o = 0;
        gVar.f10363p = 0;
        gVar.f10364q = 0;
        gVar.f10365r = Paint.Style.FILL_AND_STROKE;
        gVar.f10350a = mVar;
        gVar.f10351b = null;
        this(gVar);
    }

    public h(g gVar) {
        o oVar;
        this.f10368b = new v[4];
        this.f10369c = new v[4];
        this.d = new BitSet(8);
        this.f = new Matrix();
        this.f10371g = new Path();
        this.f10372h = new Path();
        this.f10373i = new RectF();
        this.f10374j = new RectF();
        this.f10375k = new Region();
        this.f10376l = new Region();
        Paint paint = new Paint(1);
        this.f10378n = paint;
        Paint paint2 = new Paint(1);
        this.f10379o = paint2;
        this.f10380p = new t6.a();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            oVar = n.f10410a;
        } else {
            oVar = new o();
        }
        this.f10382r = oVar;
        this.f10385u = new RectF();
        this.f10386v = true;
        this.f10367a = gVar;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        u();
        t(getState());
        this.f10381q = new s2.c(3, this);
    }
}
