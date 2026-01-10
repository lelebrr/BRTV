package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.Arrays;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x0 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f881a;

    /* renamed from: b, reason: collision with root package name */
    public l3 f882b;

    /* renamed from: c, reason: collision with root package name */
    public l3 f883c;
    public l3 d;

    /* renamed from: e, reason: collision with root package name */
    public l3 f884e;
    public l3 f;

    /* renamed from: g, reason: collision with root package name */
    public l3 f885g;

    /* renamed from: h, reason: collision with root package name */
    public l3 f886h;

    /* renamed from: i, reason: collision with root package name */
    public final g1 f887i;

    /* renamed from: j, reason: collision with root package name */
    public int f888j = 0;

    /* renamed from: k, reason: collision with root package name */
    public int f889k = -1;

    /* renamed from: l, reason: collision with root package name */
    public Typeface f890l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f891m;

    public x0(TextView textView) {
        this.f881a = textView;
        this.f887i = new g1(textView);
    }

    public static l3 c(Context context, w wVar, int i6) {
        ColorStateList colorStateListI;
        synchronized (wVar) {
            colorStateListI = wVar.f877a.i(context, i6);
        }
        if (colorStateListI == null) {
            return null;
        }
        l3 l3Var = new l3();
        l3Var.d = true;
        l3Var.f781a = colorStateListI;
        return l3Var;
    }

    public static void h(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 30 || inputConnection == null) {
            return;
        }
        CharSequence text = textView.getText();
        if (i6 >= 30) {
            s0.b.a(editorInfo, text);
            return;
        }
        text.getClass();
        if (i6 >= 30) {
            s0.b.a(editorInfo, text);
            return;
        }
        int i10 = editorInfo.initialSelStart;
        int i11 = editorInfo.initialSelEnd;
        int i12 = i10 > i11 ? i11 : i10;
        if (i10 <= i11) {
            i10 = i11;
        }
        int length = text.length();
        if (i12 < 0 || i10 > length) {
            s0.c.a(editorInfo, null, 0, 0);
            return;
        }
        int i13 = editorInfo.inputType & 4095;
        if (i13 == 129 || i13 == 225 || i13 == 18) {
            s0.c.a(editorInfo, null, 0, 0);
            return;
        }
        if (length <= 2048) {
            s0.c.a(editorInfo, text, i12, i10);
            return;
        }
        int i14 = i10 - i12;
        int i15 = i14 > 1024 ? 0 : i14;
        int i16 = 2048 - i15;
        int iMin = Math.min(text.length() - i10, i16 - Math.min(i12, (int) (i16 * 0.8d)));
        int iMin2 = Math.min(i12, i16 - iMin);
        int i17 = i12 - iMin2;
        if (Character.isLowSurrogate(text.charAt(i17))) {
            i17++;
            iMin2--;
        }
        if (Character.isHighSurrogate(text.charAt((i10 + iMin) - 1))) {
            iMin--;
        }
        int i18 = iMin2 + i15;
        s0.c.a(editorInfo, i15 != i14 ? TextUtils.concat(text.subSequence(i17, i17 + iMin2), text.subSequence(i10, iMin + i10)) : text.subSequence(i17, i18 + iMin + i17), iMin2, i18);
    }

    public final void a(Drawable drawable, l3 l3Var) {
        if (drawable == null || l3Var == null) {
            return;
        }
        w.e(drawable, l3Var, this.f881a.getDrawableState());
    }

    public final void b() {
        l3 l3Var = this.f882b;
        TextView textView = this.f881a;
        if (l3Var != null || this.f883c != null || this.d != null || this.f884e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.f882b);
            a(compoundDrawables[1], this.f883c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.f884e);
        }
        if (this.f == null && this.f885g == null) {
            return;
        }
        Drawable[] drawableArrA = s0.a(textView);
        a(drawableArrA[0], this.f);
        a(drawableArrA[2], this.f885g);
    }

    public final ColorStateList d() {
        l3 l3Var = this.f886h;
        if (l3Var != null) {
            return l3Var.f781a;
        }
        return null;
    }

    public final PorterDuff.Mode e() {
        l3 l3Var = this.f886h;
        if (l3Var != null) {
            return l3Var.f782b;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x011e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void f(android.util.AttributeSet r28, int r29) {
        /*
            Method dump skipped, instructions count: 1132
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.x0.f(android.util.AttributeSet, int):void");
    }

    public final void g(Context context, int i6) throws Resources.NotFoundException {
        String string;
        ColorStateList colorStateListS;
        ColorStateList colorStateListS2;
        ColorStateList colorStateListS3;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i6, e.a.f6369y);
        a1.b bVar = new a1.b(context, typedArrayObtainStyledAttributes);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(14);
        TextView textView = this.f881a;
        if (zHasValue) {
            textView.setAllCaps(typedArrayObtainStyledAttributes.getBoolean(14, false));
        }
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 23) {
            if (typedArrayObtainStyledAttributes.hasValue(3) && (colorStateListS3 = bVar.s(3)) != null) {
                textView.setTextColor(colorStateListS3);
            }
            if (typedArrayObtainStyledAttributes.hasValue(5) && (colorStateListS2 = bVar.s(5)) != null) {
                textView.setLinkTextColor(colorStateListS2);
            }
            if (typedArrayObtainStyledAttributes.hasValue(4) && (colorStateListS = bVar.s(4)) != null) {
                textView.setHintTextColor(colorStateListS);
            }
        }
        if (typedArrayObtainStyledAttributes.hasValue(0) && typedArrayObtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        n(context, bVar);
        if (i10 >= 26 && typedArrayObtainStyledAttributes.hasValue(13) && (string = typedArrayObtainStyledAttributes.getString(13)) != null) {
            v0.d(textView, string);
        }
        bVar.F();
        Typeface typeface = this.f890l;
        if (typeface != null) {
            textView.setTypeface(typeface, this.f888j);
        }
    }

    public final void i(int i6, int i10, int i11, int i12) {
        g1 g1Var = this.f887i;
        if (g1Var.j()) {
            DisplayMetrics displayMetrics = g1Var.f726j.getResources().getDisplayMetrics();
            g1Var.k(TypedValue.applyDimension(i12, i6, displayMetrics), TypedValue.applyDimension(i12, i10, displayMetrics), TypedValue.applyDimension(i12, i11, displayMetrics));
            if (g1Var.h()) {
                g1Var.a();
            }
        }
    }

    public final void j(int[] iArr, int i6) {
        g1 g1Var = this.f887i;
        if (g1Var.j()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i6 == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = g1Var.f726j.getResources().getDisplayMetrics();
                    for (int i10 = 0; i10 < length; i10++) {
                        iArrCopyOf[i10] = Math.round(TypedValue.applyDimension(i6, iArr[i10], displayMetrics));
                    }
                }
                g1Var.f = g1.b(iArrCopyOf);
                if (!g1Var.i()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                g1Var.f723g = false;
            }
            if (g1Var.h()) {
                g1Var.a();
            }
        }
    }

    public final void k(int i6) {
        g1 g1Var = this.f887i;
        if (g1Var.j()) {
            if (i6 == 0) {
                g1Var.f719a = 0;
                g1Var.d = -1.0f;
                g1Var.f722e = -1.0f;
                g1Var.f721c = -1.0f;
                g1Var.f = new int[0];
                g1Var.f720b = false;
                return;
            }
            if (i6 != 1) {
                throw new IllegalArgumentException(a.e.n(i6, "Unknown auto-size text type: "));
            }
            DisplayMetrics displayMetrics = g1Var.f726j.getResources().getDisplayMetrics();
            g1Var.k(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (g1Var.h()) {
                g1Var.a();
            }
        }
    }

    public final void l(ColorStateList colorStateList) {
        if (this.f886h == null) {
            this.f886h = new l3();
        }
        l3 l3Var = this.f886h;
        l3Var.f781a = colorStateList;
        l3Var.d = colorStateList != null;
        this.f882b = l3Var;
        this.f883c = l3Var;
        this.d = l3Var;
        this.f884e = l3Var;
        this.f = l3Var;
        this.f885g = l3Var;
    }

    public final void m(PorterDuff.Mode mode) {
        if (this.f886h == null) {
            this.f886h = new l3();
        }
        l3 l3Var = this.f886h;
        l3Var.f782b = mode;
        l3Var.f783c = mode != null;
        this.f882b = l3Var;
        this.f883c = l3Var;
        this.d = l3Var;
        this.f884e = l3Var;
        this.f = l3Var;
        this.f885g = l3Var;
    }

    public final void n(Context context, a1.b bVar) {
        String string;
        int i6 = this.f888j;
        TypedArray typedArray = (TypedArray) bVar.f48c;
        this.f888j = typedArray.getInt(2, i6);
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            int i11 = typedArray.getInt(11, -1);
            this.f889k = i11;
            if (i11 != -1) {
                this.f888j &= 2;
            }
        }
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.f891m = false;
                int i12 = typedArray.getInt(1, 1);
                if (i12 == 1) {
                    this.f890l = Typeface.SANS_SERIF;
                    return;
                } else if (i12 == 2) {
                    this.f890l = Typeface.SERIF;
                    return;
                } else {
                    if (i12 != 3) {
                        return;
                    }
                    this.f890l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f890l = null;
        int i13 = typedArray.hasValue(12) ? 12 : 10;
        int i14 = this.f889k;
        int i15 = this.f888j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceV = bVar.v(i13, this.f888j, new q0(this, i14, i15, new WeakReference(this.f881a)));
                if (typefaceV != null) {
                    if (i10 < 28 || this.f889k == -1) {
                        this.f890l = typefaceV;
                    } else {
                        this.f890l = w0.a(Typeface.create(typefaceV, 0), this.f889k, (this.f888j & 2) != 0);
                    }
                }
                this.f891m = this.f890l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f890l != null || (string = typedArray.getString(i13)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f889k == -1) {
            this.f890l = Typeface.create(string, this.f888j);
        } else {
            this.f890l = w0.a(Typeface.create(string, 0), this.f889k, (this.f888j & 2) != 0);
        }
    }
}
