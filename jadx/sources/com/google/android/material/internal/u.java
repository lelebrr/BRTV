package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import java.lang.reflect.Constructor;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u {

    /* renamed from: m, reason: collision with root package name */
    public static final int f5065m;

    /* renamed from: n, reason: collision with root package name */
    public static boolean f5066n;

    /* renamed from: o, reason: collision with root package name */
    public static Constructor f5067o;

    /* renamed from: p, reason: collision with root package name */
    public static TextDirectionHeuristic f5068p;

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f5069a;

    /* renamed from: b, reason: collision with root package name */
    public final TextPaint f5070b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5071c;
    public int d;

    /* renamed from: k, reason: collision with root package name */
    public boolean f5077k;

    /* renamed from: e, reason: collision with root package name */
    public Layout.Alignment f5072e = Layout.Alignment.ALIGN_NORMAL;
    public int f = Integer.MAX_VALUE;

    /* renamed from: g, reason: collision with root package name */
    public float f5073g = 0.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f5074h = 1.0f;

    /* renamed from: i, reason: collision with root package name */
    public int f5075i = f5065m;

    /* renamed from: j, reason: collision with root package name */
    public boolean f5076j = true;

    /* renamed from: l, reason: collision with root package name */
    public TextUtils.TruncateAt f5078l = null;

    static {
        f5065m = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    public u(CharSequence charSequence, TextPaint textPaint, int i6) {
        this.f5069a = charSequence;
        this.f5070b = textPaint;
        this.f5071c = i6;
        this.d = charSequence.length();
    }

    public final StaticLayout a() throws NoSuchMethodException, SecurityException, t {
        if (this.f5069a == null) {
            this.f5069a = "";
        }
        int iMax = Math.max(0, this.f5071c);
        CharSequence charSequenceEllipsize = this.f5069a;
        int i6 = this.f;
        TextPaint textPaint = this.f5070b;
        if (i6 == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint, iMax, this.f5078l);
        }
        int iMin = Math.min(charSequenceEllipsize.length(), this.d);
        this.d = iMin;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23) {
            if (this.f5077k && this.f == 1) {
                this.f5072e = Layout.Alignment.ALIGN_OPPOSITE;
            }
            StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, 0, iMin, textPaint, iMax);
            builderObtain.setAlignment(this.f5072e);
            builderObtain.setIncludePad(this.f5076j);
            builderObtain.setTextDirection(this.f5077k ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
            TextUtils.TruncateAt truncateAt = this.f5078l;
            if (truncateAt != null) {
                builderObtain.setEllipsize(truncateAt);
            }
            builderObtain.setMaxLines(this.f);
            float f = this.f5073g;
            if (f != 0.0f || this.f5074h != 1.0f) {
                builderObtain.setLineSpacing(f, this.f5074h);
            }
            if (this.f > 1) {
                builderObtain.setHyphenationFrequency(this.f5075i);
            }
            return builderObtain.build();
        }
        if (!f5066n) {
            try {
                f5068p = this.f5077k && i10 >= 23 ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
                Class cls = Integer.TYPE;
                Class cls2 = Float.TYPE;
                Constructor declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, cls, cls, TextPaint.class, cls, Layout.Alignment.class, TextDirectionHeuristic.class, cls2, cls2, Boolean.TYPE, TextUtils.TruncateAt.class, cls, cls);
                f5067o = declaredConstructor;
                declaredConstructor.setAccessible(true);
                f5066n = true;
            } catch (Exception e5) {
                throw new t(e5);
            }
        }
        try {
            Constructor constructor = f5067o;
            constructor.getClass();
            Integer numValueOf = Integer.valueOf(this.d);
            Integer numValueOf2 = Integer.valueOf(iMax);
            Layout.Alignment alignment = this.f5072e;
            TextDirectionHeuristic textDirectionHeuristic = f5068p;
            textDirectionHeuristic.getClass();
            return (StaticLayout) constructor.newInstance(charSequenceEllipsize, 0, numValueOf, textPaint, numValueOf2, alignment, textDirectionHeuristic, Float.valueOf(1.0f), Float.valueOf(0.0f), Boolean.valueOf(this.f5076j), null, Integer.valueOf(iMax), Integer.valueOf(this.f));
        } catch (Exception e10) {
            throw new t(e10);
        }
    }
}
