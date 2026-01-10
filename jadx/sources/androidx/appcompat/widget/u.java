package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public int f839a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f840b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f841c;
    public Object d;

    /* renamed from: e, reason: collision with root package name */
    public Object f842e;
    public Object f;

    public u(View view) {
        this.f839a = -1;
        this.f840b = view;
        this.f841c = w.a();
    }

    public static u b(Context context, int i6) throws Resources.NotFoundException {
        a2.a.n("Cannot create a CalendarItemStyle with a styleResId of 0", i6 != 0);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i6, x5.a.B);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(2, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(3, 0));
        ColorStateList colorStateListK = com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 4);
        ColorStateList colorStateListK2 = com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 9);
        ColorStateList colorStateListK3 = com.bumptech.glide.d.k(context, typedArrayObtainStyledAttributes, 7);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        u6.m mVarA = u6.m.a(context, typedArrayObtainStyledAttributes.getResourceId(5, 0), typedArrayObtainStyledAttributes.getResourceId(6, 0), new u6.a(0)).a();
        typedArrayObtainStyledAttributes.recycle();
        return new u(colorStateListK, colorStateListK2, colorStateListK3, dimensionPixelSize, mVarA, rect);
    }

    public void a() {
        View view = (View) this.f840b;
        Drawable background = view.getBackground();
        if (background != null) {
            int i6 = Build.VERSION.SDK_INT;
            if (i6 <= 21 ? i6 == 21 : ((l3) this.d) != null) {
                if (((l3) this.f) == null) {
                    this.f = new l3();
                }
                l3 l3Var = (l3) this.f;
                l3Var.f781a = null;
                l3Var.d = false;
                l3Var.f782b = null;
                l3Var.f783c = false;
                WeakHashMap weakHashMap = n0.s0.f8353a;
                ColorStateList colorStateListG = n0.g0.g(view);
                if (colorStateListG != null) {
                    l3Var.d = true;
                    l3Var.f781a = colorStateListG;
                }
                PorterDuff.Mode modeH = n0.g0.h(view);
                if (modeH != null) {
                    l3Var.f783c = true;
                    l3Var.f782b = modeH;
                }
                if (l3Var.d || l3Var.f783c) {
                    w.e(background, l3Var, view.getDrawableState());
                    return;
                }
            }
            l3 l3Var2 = (l3) this.f842e;
            if (l3Var2 != null) {
                w.e(background, l3Var2, view.getDrawableState());
                return;
            }
            l3 l3Var3 = (l3) this.d;
            if (l3Var3 != null) {
                w.e(background, l3Var3, view.getDrawableState());
            }
        }
    }

    public ColorStateList c() {
        l3 l3Var = (l3) this.f842e;
        if (l3Var != null) {
            return l3Var.f781a;
        }
        return null;
    }

    public PorterDuff.Mode d() {
        l3 l3Var = (l3) this.f842e;
        if (l3Var != null) {
            return l3Var.f782b;
        }
        return null;
    }

    public void e(AttributeSet attributeSet, int i6) {
        ColorStateList colorStateListI;
        View view = (View) this.f840b;
        Context context = view.getContext();
        int[] iArr = e.a.B;
        a1.b bVarC = a1.b.C(context, attributeSet, iArr, i6);
        TypedArray typedArray = (TypedArray) bVarC.f48c;
        View view2 = (View) this.f840b;
        n0.s0.p(view2, view2.getContext(), iArr, attributeSet, (TypedArray) bVarC.f48c, i6, 0);
        try {
            if (typedArray.hasValue(0)) {
                this.f839a = typedArray.getResourceId(0, -1);
                w wVar = (w) this.f841c;
                Context context2 = view.getContext();
                int i10 = this.f839a;
                synchronized (wVar) {
                    colorStateListI = wVar.f877a.i(context2, i10);
                }
                if (colorStateListI != null) {
                    h(colorStateListI);
                }
            }
            if (typedArray.hasValue(1)) {
                n0.s0.s(view, bVarC.s(1));
            }
            if (typedArray.hasValue(2)) {
                PorterDuff.Mode modeC = m1.c(typedArray.getInt(2, -1), null);
                int i11 = Build.VERSION.SDK_INT;
                n0.g0.r(view, modeC);
                if (i11 == 21) {
                    Drawable background = view.getBackground();
                    boolean z7 = (n0.g0.g(view) == null && n0.g0.h(view) == null) ? false : true;
                    if (background != null && z7) {
                        if (background.isStateful()) {
                            background.setState(view.getDrawableState());
                        }
                        view.setBackground(background);
                    }
                }
            }
        } finally {
            bVarC.F();
        }
    }

    public void f() {
        this.f839a = -1;
        h(null);
        a();
    }

    public void g(int i6) {
        ColorStateList colorStateListI;
        this.f839a = i6;
        w wVar = (w) this.f841c;
        if (wVar != null) {
            Context context = ((View) this.f840b).getContext();
            synchronized (wVar) {
                colorStateListI = wVar.f877a.i(context, i6);
            }
        } else {
            colorStateListI = null;
        }
        h(colorStateListI);
        a();
    }

    public void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((l3) this.d) == null) {
                this.d = new l3();
            }
            l3 l3Var = (l3) this.d;
            l3Var.f781a = colorStateList;
            l3Var.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    public void i(ColorStateList colorStateList) {
        if (((l3) this.f842e) == null) {
            this.f842e = new l3();
        }
        l3 l3Var = (l3) this.f842e;
        l3Var.f781a = colorStateList;
        l3Var.d = true;
        a();
    }

    public void j(PorterDuff.Mode mode) {
        if (((l3) this.f842e) == null) {
            this.f842e = new l3();
        }
        l3 l3Var = (l3) this.f842e;
        l3Var.f782b = mode;
        l3Var.f783c = true;
        a();
    }

    public void k(TextView textView) {
        u6.h hVar = new u6.h();
        u6.h hVar2 = new u6.h();
        u6.m mVar = (u6.m) this.f;
        hVar.setShapeAppearanceModel(mVar);
        hVar2.setShapeAppearanceModel(mVar);
        hVar.n((ColorStateList) this.d);
        hVar.f10367a.f10357j = this.f839a;
        hVar.invalidateSelf();
        hVar.s((ColorStateList) this.f842e);
        ColorStateList colorStateList = (ColorStateList) this.f841c;
        textView.setTextColor(colorStateList);
        RippleDrawable rippleDrawable = new RippleDrawable(colorStateList.withAlpha(30), hVar, hVar2);
        Rect rect = (Rect) this.f840b;
        InsetDrawable insetDrawable = new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom);
        WeakHashMap weakHashMap = n0.s0.f8353a;
        textView.setBackground(insetDrawable);
    }

    public u(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i6, u6.m mVar, Rect rect) {
        a2.a.o(rect.left);
        a2.a.o(rect.top);
        a2.a.o(rect.right);
        a2.a.o(rect.bottom);
        this.f840b = rect;
        this.f841c = colorStateList2;
        this.d = colorStateList;
        this.f842e = colorStateList3;
        this.f839a = i6;
        this.f = mVar;
    }
}
