package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class j3 {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f742a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f743b = {-16842910};

    /* renamed from: c, reason: collision with root package name */
    public static final int[] f744c = {R.attr.state_focused};
    public static final int[] d = {R.attr.state_pressed};

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f745e = {R.attr.state_checked};
    public static final int[] f = new int[0];

    /* renamed from: g, reason: collision with root package name */
    public static final int[] f746g = new int[1];

    public static void a(View view, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(e.a.f6355k);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(117)) {
                Log.e("ThemeUtils", "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i6) {
        ColorStateList colorStateListD = d(context, i6);
        if (colorStateListD != null && colorStateListD.isStateful()) {
            return colorStateListD.getColorForState(f743b, colorStateListD.getDefaultColor());
        }
        ThreadLocal threadLocal = f742a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValue, true);
        float f3 = typedValue.getFloat();
        return f0.a.h(c(context, i6), Math.round(Color.alpha(r4) * f3));
    }

    public static int c(Context context, int i6) {
        int[] iArr = f746g;
        iArr[0] = i6;
        a1.b bVarB = a1.b.B(context, null, iArr);
        try {
            return ((TypedArray) bVarB.f48c).getColor(0, 0);
        } finally {
            bVarB.F();
        }
    }

    public static ColorStateList d(Context context, int i6) {
        int[] iArr = f746g;
        iArr[0] = i6;
        a1.b bVarB = a1.b.B(context, null, iArr);
        try {
            return bVarB.s(0);
        } finally {
            bVarB.F();
        }
    }
}
