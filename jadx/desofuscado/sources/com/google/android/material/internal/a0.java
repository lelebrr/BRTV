package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.material.appbar.MaterialToolbar;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.Locale;
import java.util.WeakHashMap;
import n0.g0;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class a0 {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f4980a = {R.attr.colorPrimary};

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f4981b = {R.attr.colorPrimaryVariant};

    /* renamed from: c, reason: collision with root package name */
    public static final a0.e f4982c = new a0.e(2);

    public static void a(Context context, AttributeSet attributeSet, int i6, int i10) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.f11023c0, i6, i10);
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(1, false);
        typedArrayObtainStyledAttributes.recycle();
        if (z7) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                c(context, f4981b, "Theme.MaterialComponents");
            }
        }
        c(context, f4980a, "Theme.AppCompat");
    }

    public static void b(Context context, AttributeSet attributeSet, int[] iArr, int i6, int i10, int... iArr2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, x5.a.f11023c0, i6, i10);
        boolean z7 = false;
        if (!typedArrayObtainStyledAttributes.getBoolean(2, false)) {
            typedArrayObtainStyledAttributes.recycle();
            return;
        }
        if (iArr2.length != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, i6, i10);
            for (int i11 : iArr2) {
                if (typedArrayObtainStyledAttributes2.getResourceId(i11, -1) == -1) {
                    typedArrayObtainStyledAttributes2.recycle();
                    break;
                }
            }
            typedArrayObtainStyledAttributes2.recycle();
            z7 = true;
        } else if (typedArrayObtainStyledAttributes.getResourceId(0, -1) != -1) {
            z7 = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!z7) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    public static void c(Context context, int[] iArr, String str) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i6 = 0; i6 < iArr.length; i6++) {
            if (!typedArrayObtainStyledAttributes.hasValue(i6)) {
                typedArrayObtainStyledAttributes.recycle();
                throw new IllegalArgumentException(a.e.r("The style on this component requires your app theme to be ", str, " (or a descendant)."));
            }
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void d(View view, d0 d0Var) {
        byte b8 = 0;
        WeakHashMap weakHashMap = s0.f8353a;
        int paddingStart = view.getPaddingStart();
        int paddingTop = view.getPaddingTop();
        int paddingEnd = view.getPaddingEnd();
        int paddingBottom = view.getPaddingBottom();
        e0 e0Var = new e0();
        e0Var.f5031a = paddingStart;
        e0Var.f5032b = paddingTop;
        e0Var.f5033c = paddingEnd;
        e0Var.d = paddingBottom;
        g0.u(view, new a7.f(13, d0Var, e0Var, false));
        if (view.isAttachedToWindow()) {
            n0.e0.c(view);
        } else {
            view.addOnAttachStateChangeListener(new c0(b8 == true ? 1 : 0));
        }
    }

    public static float e(Context context, int i6) {
        return TypedValue.applyDimension(1, i6, context.getResources().getDisplayMetrics());
    }

    public static ViewGroup f(View view) {
        if (view == null) {
            return null;
        }
        View rootView = view.getRootView();
        ViewGroup viewGroup = (ViewGroup) rootView.findViewById(android.R.id.content);
        if (viewGroup != null) {
            return viewGroup;
        }
        if (rootView == view || !(rootView instanceof ViewGroup)) {
            return null;
        }
        return (ViewGroup) rootView;
    }

    public static ArrayList g(MaterialToolbar materialToolbar, CharSequence charSequence) {
        ArrayList arrayList = new ArrayList();
        for (int i6 = 0; i6 < materialToolbar.getChildCount(); i6++) {
            View childAt = materialToolbar.getChildAt(i6);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    arrayList.add(textView);
                }
            }
        }
        return arrayList;
    }

    public static boolean h() {
        String str = Build.MANUFACTURER;
        Locale locale = Locale.ENGLISH;
        return str.toLowerCase(locale).equals("lge") || str.toLowerCase(locale).equals("samsung");
    }

    public static boolean i(View view) {
        WeakHashMap weakHashMap = s0.f8353a;
        return view.getLayoutDirection() == 1;
    }

    public static TypedArray j(Context context, AttributeSet attributeSet, int[] iArr, int i6, int i10, int... iArr2) {
        a(context, attributeSet, i6, i10);
        b(context, attributeSet, iArr, i6, i10, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i6, i10);
    }

    public static a1.b k(Context context, AttributeSet attributeSet, int[] iArr, int i6, int i10, int... iArr2) {
        a(context, attributeSet, i6, i10);
        b(context, attributeSet, iArr, i6, i10, iArr2);
        return new a1.b(context, context.obtainStyledAttributes(attributeSet, iArr, i6, i10));
    }

    public static PorterDuff.Mode l(int i6, PorterDuff.Mode mode) {
        if (i6 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i6 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i6 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i6) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
