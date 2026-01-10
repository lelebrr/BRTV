package z1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import java.io.IOException;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class n extends e {

    /* renamed from: j, reason: collision with root package name */
    public static final PorterDuff.Mode f11503j = PorterDuff.Mode.SRC_IN;

    /* renamed from: b, reason: collision with root package name */
    public l f11504b;

    /* renamed from: c, reason: collision with root package name */
    public PorterDuffColorFilter f11505c;
    public ColorFilter d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f11506e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final float[] f11507g;

    /* renamed from: h, reason: collision with root package name */
    public final Matrix f11508h;

    /* renamed from: i, reason: collision with root package name */
    public final Rect f11509i;

    public n() {
        this.f = true;
        this.f11507g = new float[9];
        this.f11508h = new Matrix();
        this.f11509i = new Rect();
        l lVar = new l();
        lVar.f11494c = null;
        lVar.d = f11503j;
        lVar.f11493b = new k();
        this.f11504b = lVar;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.f11456a;
        if (drawable == null) {
            return false;
        }
        g0.a.b(drawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.f11509i;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.d;
        if (colorFilter == null) {
            colorFilter = this.f11505c;
        }
        Matrix matrix = this.f11508h;
        canvas.getMatrix(matrix);
        float[] fArr = this.f11507g;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, (int) (rect.height() * fAbs2));
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && n5.d.w(this) == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        l lVar = this.f11504b;
        Bitmap bitmap = lVar.f;
        if (bitmap == null || iMin != bitmap.getWidth() || iMin2 != lVar.f.getHeight()) {
            lVar.f = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            lVar.f11500k = true;
        }
        if (this.f) {
            l lVar2 = this.f11504b;
            if (lVar2.f11500k || lVar2.f11496g != lVar2.f11494c || lVar2.f11497h != lVar2.d || lVar2.f11499j != lVar2.f11495e || lVar2.f11498i != lVar2.f11493b.getRootAlpha()) {
                l lVar3 = this.f11504b;
                lVar3.f.eraseColor(0);
                Canvas canvas2 = new Canvas(lVar3.f);
                k kVar = lVar3.f11493b;
                kVar.a(kVar.f11483g, k.f11478p, canvas2, iMin, iMin2);
                l lVar4 = this.f11504b;
                lVar4.f11496g = lVar4.f11494c;
                lVar4.f11497h = lVar4.d;
                lVar4.f11498i = lVar4.f11493b.getRootAlpha();
                lVar4.f11499j = lVar4.f11495e;
                lVar4.f11500k = false;
            }
        } else {
            l lVar5 = this.f11504b;
            lVar5.f.eraseColor(0);
            Canvas canvas3 = new Canvas(lVar5.f);
            k kVar2 = lVar5.f11493b;
            kVar2.a(kVar2.f11483g, k.f11478p, canvas3, iMin, iMin2);
        }
        l lVar6 = this.f11504b;
        if (lVar6.f11493b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (lVar6.f11501l == null) {
                Paint paint2 = new Paint();
                lVar6.f11501l = paint2;
                paint2.setFilterBitmap(true);
            }
            lVar6.f11501l.setAlpha(lVar6.f11493b.getRootAlpha());
            lVar6.f11501l.setColorFilter(colorFilter);
            paint = lVar6.f11501l;
        }
        canvas.drawBitmap(lVar6.f, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.getAlpha() : this.f11504b.f11493b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f11504b.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.f11456a;
        return drawable != null ? g0.a.c(drawable) : this.d;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.f11456a != null && Build.VERSION.SDK_INT >= 24) {
            return new m(this.f11456a.getConstantState());
        }
        this.f11504b.f11492a = getChangingConfigurations();
        return this.f11504b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f11504b.f11493b.f11485i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f11504b.f11493b.f11484h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.isAutoMirrored() : this.f11504b.f11495e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (!super.isStateful()) {
            l lVar = this.f11504b;
            if (lVar != null) {
                k kVar = lVar.f11493b;
                if (kVar.f11490n == null) {
                    kVar.f11490n = Boolean.valueOf(kVar.f11483g.a());
                }
                if (kVar.f11490n.booleanValue() || ((colorStateList = this.f11504b.f11494c) != null && colorStateList.isStateful())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f11506e && super.mutate() == this) {
            l lVar = this.f11504b;
            l lVar2 = new l();
            lVar2.f11494c = null;
            lVar2.d = f11503j;
            if (lVar != null) {
                lVar2.f11492a = lVar.f11492a;
                k kVar = new k(lVar.f11493b);
                lVar2.f11493b = kVar;
                if (lVar.f11493b.f11482e != null) {
                    kVar.f11482e = new Paint(lVar.f11493b.f11482e);
                }
                if (lVar.f11493b.d != null) {
                    lVar2.f11493b.d = new Paint(lVar.f11493b.d);
                }
                lVar2.f11494c = lVar.f11494c;
                lVar2.d = lVar.d;
                lVar2.f11495e = lVar.f11495e;
            }
            this.f11504b = lVar2;
            this.f11506e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z7;
        PorterDuff.Mode mode;
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        l lVar = this.f11504b;
        ColorStateList colorStateList = lVar.f11494c;
        if (colorStateList == null || (mode = lVar.d) == null) {
            z7 = false;
        } else {
            this.f11505c = a(colorStateList, mode);
            invalidateSelf();
            z7 = true;
        }
        k kVar = lVar.f11493b;
        if (kVar.f11490n == null) {
            kVar.f11490n = Boolean.valueOf(kVar.f11483g.a());
        }
        if (kVar.f11490n.booleanValue()) {
            boolean zB = lVar.f11493b.f11483g.b(iArr);
            lVar.f11500k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z7;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j10) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j10);
        } else {
            super.scheduleSelf(runnable, j10);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i6) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.setAlpha(i6);
        } else if (this.f11504b.f11493b.getRootAlpha() != i6) {
            this.f11504b.f11493b.setRootAlpha(i6);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z7) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.setAutoMirrored(z7);
        } else {
            this.f11504b.f11495e = z7;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.d = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i6) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            n5.d.S(drawable, i6);
        } else {
            setTintList(ColorStateList.valueOf(i6));
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            g0.a.h(drawable, colorStateList);
            return;
        }
        l lVar = this.f11504b;
        if (lVar.f11494c != colorStateList) {
            lVar.f11494c = colorStateList;
            this.f11505c = a(colorStateList, lVar.d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            g0.a.i(drawable, mode);
            return;
        }
        l lVar = this.f11504b;
        if (lVar.d != mode) {
            lVar.d = mode;
            this.f11505c = a(lVar.f11494c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z7, boolean z10) {
        Drawable drawable = this.f11456a;
        return drawable != null ? drawable.setVisible(z7, z10) : super.setVisible(z7, z10);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        k kVar;
        int i6;
        Paint.Cap cap;
        Drawable drawable = this.f11456a;
        if (drawable != null) {
            g0.a.d(drawable, resources, xmlPullParser, attributeSet, theme);
            return;
        }
        l lVar = this.f11504b;
        lVar.f11493b = new k();
        TypedArray typedArrayH = e0.b.h(resources, theme, attributeSet, a.f11441a);
        l lVar2 = this.f11504b;
        k kVar2 = lVar2.f11493b;
        int iC = e0.b.c(typedArrayH, xmlPullParser, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i10 = 3;
        if (iC == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (iC != 5) {
            if (iC != 9) {
                switch (iC) {
                    case 14:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case 15:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        lVar2.d = mode;
        ColorStateList colorStateListA = null;
        if (e0.b.e(xmlPullParser, "tint")) {
            TypedValue typedValue = new TypedValue();
            typedArrayH.getValue(1, typedValue);
            int i11 = typedValue.type;
            if (i11 == 2) {
                throw new UnsupportedOperationException("Failed to resolve attribute at index 1: " + typedValue);
            }
            if (i11 >= 28 && i11 <= 31) {
                colorStateListA = ColorStateList.valueOf(typedValue.data);
            } else {
                Resources resources2 = typedArrayH.getResources();
                int resourceId = typedArrayH.getResourceId(1, 0);
                ThreadLocal threadLocal = e0.c.f6380a;
                try {
                    colorStateListA = e0.c.a(resources2, resources2.getXml(resourceId), theme);
                } catch (Exception e5) {
                    Log.e("CSLCompat", "Failed to inflate ColorStateList.", e5);
                }
            }
        }
        ColorStateList colorStateList = colorStateListA;
        if (colorStateList != null) {
            lVar2.f11494c = colorStateList;
        }
        boolean z7 = lVar2.f11495e;
        if (e0.b.e(xmlPullParser, "autoMirrored")) {
            z7 = typedArrayH.getBoolean(5, z7);
        }
        lVar2.f11495e = z7;
        float f = kVar2.f11486j;
        if (e0.b.e(xmlPullParser, "viewportWidth")) {
            f = typedArrayH.getFloat(7, f);
        }
        kVar2.f11486j = f;
        float f3 = kVar2.f11487k;
        if (e0.b.e(xmlPullParser, "viewportHeight")) {
            f3 = typedArrayH.getFloat(8, f3);
        }
        kVar2.f11487k = f3;
        if (kVar2.f11486j <= 0.0f) {
            throw new XmlPullParserException(typedArrayH.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (f3 > 0.0f) {
            kVar2.f11484h = typedArrayH.getDimension(3, kVar2.f11484h);
            float dimension = typedArrayH.getDimension(2, kVar2.f11485i);
            kVar2.f11485i = dimension;
            if (kVar2.f11484h <= 0.0f) {
                throw new XmlPullParserException(typedArrayH.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                float alpha = kVar2.getAlpha();
                if (e0.b.e(xmlPullParser, "alpha")) {
                    alpha = typedArrayH.getFloat(4, alpha);
                }
                kVar2.setAlpha(alpha);
                String string = typedArrayH.getString(0);
                if (string != null) {
                    kVar2.f11489m = string;
                    kVar2.f11491o.put(string, kVar2);
                }
                typedArrayH.recycle();
                lVar.f11492a = getChangingConfigurations();
                lVar.f11500k = true;
                l lVar3 = this.f11504b;
                k kVar3 = lVar3.f11493b;
                ArrayDeque arrayDeque = new ArrayDeque();
                arrayDeque.push(kVar3.f11483g);
                int eventType = xmlPullParser.getEventType();
                int depth = xmlPullParser.getDepth() + 1;
                boolean z10 = true;
                for (int i12 = 1; eventType != i12 && (xmlPullParser.getDepth() >= depth || eventType != i10); i12 = 1) {
                    if (eventType == 2) {
                        String name = xmlPullParser.getName();
                        h hVar = (h) arrayDeque.peek();
                        boolean zEquals = "path".equals(name);
                        p.e eVar = kVar3.f11491o;
                        kVar = kVar3;
                        if (zEquals) {
                            g gVar = new g();
                            gVar.f11457e = 0.0f;
                            gVar.f11458g = 1.0f;
                            gVar.f11459h = 1.0f;
                            gVar.f11460i = 0.0f;
                            gVar.f11461j = 1.0f;
                            gVar.f11462k = 0.0f;
                            Paint.Cap cap2 = Paint.Cap.BUTT;
                            gVar.f11463l = cap2;
                            Paint.Join join = Paint.Join.MITER;
                            gVar.f11464m = join;
                            i6 = depth;
                            gVar.f11465n = 4.0f;
                            TypedArray typedArrayH2 = e0.b.h(resources, theme, attributeSet, a.f11443c);
                            if (e0.b.e(xmlPullParser, "pathData")) {
                                String string2 = typedArrayH2.getString(0);
                                if (string2 != null) {
                                    gVar.f11476b = string2;
                                }
                                String string3 = typedArrayH2.getString(2);
                                if (string3 != null) {
                                    gVar.f11475a = com.bumptech.glide.d.f(string3);
                                }
                                gVar.f = e0.b.b(typedArrayH2, xmlPullParser, theme, "fillColor", 1);
                                float f4 = gVar.f11459h;
                                if (e0.b.e(xmlPullParser, "fillAlpha")) {
                                    f4 = typedArrayH2.getFloat(12, f4);
                                }
                                gVar.f11459h = f4;
                                int i13 = !e0.b.e(xmlPullParser, "strokeLineCap") ? -1 : typedArrayH2.getInt(8, -1);
                                Paint.Cap cap3 = gVar.f11463l;
                                if (i13 == 0) {
                                    cap = cap2;
                                } else if (i13 != 1) {
                                    cap = i13 != 2 ? cap3 : Paint.Cap.SQUARE;
                                } else {
                                    cap = Paint.Cap.ROUND;
                                }
                                gVar.f11463l = cap;
                                int i14 = !e0.b.e(xmlPullParser, "strokeLineJoin") ? -1 : typedArrayH2.getInt(9, -1);
                                Paint.Join join2 = gVar.f11464m;
                                if (i14 != 0) {
                                    if (i14 != 1) {
                                        join = i14 != 2 ? join2 : Paint.Join.BEVEL;
                                    } else {
                                        join = Paint.Join.ROUND;
                                    }
                                }
                                gVar.f11464m = join;
                                float f5 = gVar.f11465n;
                                if (e0.b.e(xmlPullParser, "strokeMiterLimit")) {
                                    f5 = typedArrayH2.getFloat(10, f5);
                                }
                                gVar.f11465n = f5;
                                gVar.d = e0.b.b(typedArrayH2, xmlPullParser, theme, "strokeColor", 3);
                                float f10 = gVar.f11458g;
                                if (e0.b.e(xmlPullParser, "strokeAlpha")) {
                                    f10 = typedArrayH2.getFloat(11, f10);
                                }
                                gVar.f11458g = f10;
                                float f11 = gVar.f11457e;
                                if (e0.b.e(xmlPullParser, "strokeWidth")) {
                                    f11 = typedArrayH2.getFloat(4, f11);
                                }
                                gVar.f11457e = f11;
                                float f12 = gVar.f11461j;
                                if (e0.b.e(xmlPullParser, "trimPathEnd")) {
                                    f12 = typedArrayH2.getFloat(6, f12);
                                }
                                gVar.f11461j = f12;
                                float f13 = gVar.f11462k;
                                if (e0.b.e(xmlPullParser, "trimPathOffset")) {
                                    f13 = typedArrayH2.getFloat(7, f13);
                                }
                                gVar.f11462k = f13;
                                float f14 = gVar.f11460i;
                                if (e0.b.e(xmlPullParser, "trimPathStart")) {
                                    f14 = typedArrayH2.getFloat(5, f14);
                                }
                                gVar.f11460i = f14;
                                int i15 = gVar.f11477c;
                                if (e0.b.e(xmlPullParser, "fillType")) {
                                    i15 = typedArrayH2.getInt(13, i15);
                                }
                                gVar.f11477c = i15;
                            }
                            typedArrayH2.recycle();
                            hVar.f11467b.add(gVar);
                            if (gVar.getPathName() != null) {
                                eVar.put(gVar.getPathName(), gVar);
                            }
                            lVar3.f11492a = lVar3.f11492a;
                            z10 = false;
                        } else {
                            i6 = depth;
                            if ("clip-path".equals(name)) {
                                f fVar = new f();
                                if (e0.b.e(xmlPullParser, "pathData")) {
                                    TypedArray typedArrayH3 = e0.b.h(resources, theme, attributeSet, a.d);
                                    String string4 = typedArrayH3.getString(0);
                                    if (string4 != null) {
                                        fVar.f11476b = string4;
                                    }
                                    String string5 = typedArrayH3.getString(1);
                                    if (string5 != null) {
                                        fVar.f11475a = com.bumptech.glide.d.f(string5);
                                    }
                                    fVar.f11477c = !e0.b.e(xmlPullParser, "fillType") ? 0 : typedArrayH3.getInt(2, 0);
                                    typedArrayH3.recycle();
                                }
                                hVar.f11467b.add(fVar);
                                if (fVar.getPathName() != null) {
                                    eVar.put(fVar.getPathName(), fVar);
                                }
                                lVar3.f11492a = lVar3.f11492a;
                            } else if ("group".equals(name)) {
                                h hVar2 = new h();
                                TypedArray typedArrayH4 = e0.b.h(resources, theme, attributeSet, a.f11442b);
                                float f15 = hVar2.f11468c;
                                if (e0.b.e(xmlPullParser, "rotation")) {
                                    f15 = typedArrayH4.getFloat(5, f15);
                                }
                                hVar2.f11468c = f15;
                                hVar2.d = typedArrayH4.getFloat(1, hVar2.d);
                                hVar2.f11469e = typedArrayH4.getFloat(2, hVar2.f11469e);
                                float f16 = hVar2.f;
                                if (e0.b.e(xmlPullParser, "scaleX")) {
                                    f16 = typedArrayH4.getFloat(3, f16);
                                }
                                hVar2.f = f16;
                                float f17 = hVar2.f11470g;
                                if (e0.b.e(xmlPullParser, "scaleY")) {
                                    f17 = typedArrayH4.getFloat(4, f17);
                                }
                                hVar2.f11470g = f17;
                                float f18 = hVar2.f11471h;
                                if (e0.b.e(xmlPullParser, "translateX")) {
                                    f18 = typedArrayH4.getFloat(6, f18);
                                }
                                hVar2.f11471h = f18;
                                float f19 = hVar2.f11472i;
                                if (e0.b.e(xmlPullParser, "translateY")) {
                                    f19 = typedArrayH4.getFloat(7, f19);
                                }
                                hVar2.f11472i = f19;
                                String string6 = typedArrayH4.getString(0);
                                if (string6 != null) {
                                    hVar2.f11474k = string6;
                                }
                                hVar2.c();
                                typedArrayH4.recycle();
                                hVar.f11467b.add(hVar2);
                                arrayDeque.push(hVar2);
                                if (hVar2.getGroupName() != null) {
                                    eVar.put(hVar2.getGroupName(), hVar2);
                                }
                                lVar3.f11492a = lVar3.f11492a;
                            }
                        }
                        i10 = 3;
                    } else {
                        kVar = kVar3;
                        i6 = depth;
                        i10 = 3;
                        if (eventType == 3 && "group".equals(xmlPullParser.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser.next();
                    kVar3 = kVar;
                    depth = i6;
                }
                if (!z10) {
                    this.f11505c = a(lVar.f11494c, lVar.d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(typedArrayH.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(typedArrayH.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    public n(l lVar) {
        this.f = true;
        this.f11507g = new float[9];
        this.f11508h = new Matrix();
        this.f11509i = new Rect();
        this.f11504b = lVar;
        this.f11505c = a(lVar.f11494c, lVar.d);
    }
}
