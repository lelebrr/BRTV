package r6;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.Log;
import android.util.TypedValue;
import e0.n;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final ColorStateList f9592a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9593b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9594c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public final float f9595e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final float f9596g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f9597h;

    /* renamed from: i, reason: collision with root package name */
    public final float f9598i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f9599j;

    /* renamed from: k, reason: collision with root package name */
    public float f9600k;

    /* renamed from: l, reason: collision with root package name */
    public final int f9601l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f9602m = false;

    /* renamed from: n, reason: collision with root package name */
    public Typeface f9603n;

    public d(Context context, int i6) throws Resources.NotFoundException {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i6, x5.a.Z);
        this.f9600k = typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
        this.f9599j = com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 3);
        com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 4);
        com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 5);
        this.f9594c = typedArrayObtainStyledAttributes.getInt(2, 0);
        this.d = typedArrayObtainStyledAttributes.getInt(1, 1);
        int i10 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
        this.f9601l = typedArrayObtainStyledAttributes.getResourceId(i10, 0);
        this.f9593b = typedArrayObtainStyledAttributes.getString(i10);
        typedArrayObtainStyledAttributes.getBoolean(14, false);
        this.f9592a = com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 6);
        this.f9595e = typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
        this.f = typedArrayObtainStyledAttributes.getFloat(8, 0.0f);
        this.f9596g = typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(i6, x5.a.H);
        this.f9597h = typedArrayObtainStyledAttributes2.hasValue(0);
        this.f9598i = typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
        typedArrayObtainStyledAttributes2.recycle();
    }

    public final void a() {
        String str;
        Typeface typeface = this.f9603n;
        int i6 = this.f9594c;
        if (typeface == null && (str = this.f9593b) != null) {
            this.f9603n = Typeface.create(str, i6);
        }
        if (this.f9603n == null) {
            int i10 = this.d;
            if (i10 == 1) {
                this.f9603n = Typeface.SANS_SERIF;
            } else if (i10 == 2) {
                this.f9603n = Typeface.SERIF;
            } else if (i10 != 3) {
                this.f9603n = Typeface.DEFAULT;
            } else {
                this.f9603n = Typeface.MONOSPACE;
            }
            this.f9603n = Typeface.create(this.f9603n, i6);
        }
    }

    public final Typeface b(Context context) {
        if (this.f9602m) {
            return this.f9603n;
        }
        if (!context.isRestricted()) {
            try {
                Typeface typefaceB = n.b(context, this.f9601l);
                this.f9603n = typefaceB;
                if (typefaceB != null) {
                    this.f9603n = Typeface.create(typefaceB, this.f9594c);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception e5) {
                Log.d("TextAppearance", "Error loading font " + this.f9593b, e5);
            }
        }
        a();
        this.f9602m = true;
        return this.f9603n;
    }

    public final void c(Context context, l5.a aVar) {
        if (d(context)) {
            b(context);
        } else {
            a();
        }
        int i6 = this.f9601l;
        if (i6 == 0) {
            this.f9602m = true;
        }
        if (this.f9602m) {
            aVar.E(this.f9603n, true);
            return;
        }
        try {
            b bVar = new b(this, aVar);
            ThreadLocal threadLocal = n.f6394a;
            if (context.isRestricted()) {
                bVar.a(-4);
            } else {
                n.c(context, i6, new TypedValue(), 0, bVar, false, false);
            }
        } catch (Resources.NotFoundException unused) {
            this.f9602m = true;
            aVar.D(1);
        } catch (Exception e5) {
            Log.d("TextAppearance", "Error loading font " + this.f9593b, e5);
            this.f9602m = true;
            aVar.D(-3);
        }
    }

    public final boolean d(Context context) throws Resources.NotFoundException {
        Typeface typefaceC = null;
        int i6 = this.f9601l;
        if (i6 != 0) {
            ThreadLocal threadLocal = n.f6394a;
            if (!context.isRestricted()) {
                typefaceC = n.c(context, i6, new TypedValue(), 0, null, false, true);
            }
        }
        return typefaceC != null;
    }

    public final void e(Context context, TextPaint textPaint, l5.a aVar) {
        f(context, textPaint, aVar);
        ColorStateList colorStateList = this.f9599j;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        ColorStateList colorStateList2 = this.f9592a;
        textPaint.setShadowLayer(this.f9596g, this.f9595e, this.f, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public final void f(Context context, TextPaint textPaint, l5.a aVar) {
        if (d(context)) {
            g(context, textPaint, b(context));
            return;
        }
        a();
        g(context, textPaint, this.f9603n);
        c(context, new c(this, context, textPaint, aVar));
    }

    public final void g(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface typefaceC = n5.d.C(context.getResources().getConfiguration(), typeface);
        if (typefaceC != null) {
            typeface = typefaceC;
        }
        textPaint.setTypeface(typeface);
        int i6 = (~typeface.getStyle()) & this.f9594c;
        textPaint.setFakeBoldText((i6 & 1) != 0);
        textPaint.setTextSkewX((i6 & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.f9600k);
        if (this.f9597h) {
            textPaint.setLetterSpacing(this.f9598i);
        }
    }
}
