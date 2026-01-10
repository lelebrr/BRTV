package androidx.mediarouter.app;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.View;
import androidx.fragment.app.FragmentActivity;
import q1.u0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class MediaRouteButton extends View {

    /* renamed from: p, reason: collision with root package name */
    public static final SparseArray f2519p = new SparseArray(2);

    /* renamed from: q, reason: collision with root package name */
    public static final int[] f2520q = {R.attr.state_checked};

    /* renamed from: r, reason: collision with root package name */
    public static final int[] f2521r = {R.attr.state_checkable};

    /* renamed from: a, reason: collision with root package name */
    public final u0 f2522a;

    /* renamed from: b, reason: collision with root package name */
    public final i0 f2523b;

    /* renamed from: c, reason: collision with root package name */
    public q1.l0 f2524c;
    public w d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2525e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public a f2526g;

    /* renamed from: h, reason: collision with root package name */
    public Drawable f2527h;

    /* renamed from: i, reason: collision with root package name */
    public int f2528i;

    /* renamed from: j, reason: collision with root package name */
    public int f2529j;

    /* renamed from: k, reason: collision with root package name */
    public int f2530k;

    /* renamed from: l, reason: collision with root package name */
    public final ColorStateList f2531l;

    /* renamed from: m, reason: collision with root package name */
    public final int f2532m;

    /* renamed from: n, reason: collision with root package name */
    public final int f2533n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f2534o;

    public MediaRouteButton(Context context, AttributeSet attributeSet, int i6) {
        Drawable.ConstantState constantState;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, o9.d.q(context));
        int iS = o9.d.s(contextThemeWrapper, com.p2elite.brtv2.R.attr.mediaRouteTheme);
        super(iS != 0 ? new ContextThemeWrapper(contextThemeWrapper, iS) : contextThemeWrapper, attributeSet, i6);
        this.f2524c = q1.l0.f9055c;
        this.d = w.f2731a;
        Context context2 = getContext();
        int[] iArr = p1.a.f8862a;
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, i6, 0);
        n0.s0.p(this, context2, iArr, attributeSet, typedArrayObtainStyledAttributes, i6, 0);
        if (isInEditMode()) {
            this.f2522a = null;
            this.f2523b = null;
            this.f2527h = com.bumptech.glide.c.h(context2, typedArrayObtainStyledAttributes.getResourceId(3, 0));
            return;
        }
        this.f2522a = u0.d(context2);
        this.f2523b = new i0(this, 1);
        q1.s0 s0VarF = u0.f();
        int i10 = !s0VarF.d() ? s0VarF.f9135i : 0;
        this.f2530k = i10;
        this.f2529j = i10;
        this.f2531l = typedArrayObtainStyledAttributes.getColorStateList(4);
        this.f2532m = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        this.f2533n = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(3, 0);
        this.f2528i = typedArrayObtainStyledAttributes.getResourceId(2, 0);
        typedArrayObtainStyledAttributes.recycle();
        int i11 = this.f2528i;
        SparseArray sparseArray = f2519p;
        if (i11 != 0 && (constantState = (Drawable.ConstantState) sparseArray.get(i11)) != null) {
            setRemoteIndicatorDrawable(constantState.newDrawable());
        }
        if (this.f2527h == null) {
            if (resourceId != 0) {
                Drawable.ConstantState constantState2 = (Drawable.ConstantState) sparseArray.get(resourceId);
                if (constantState2 != null) {
                    setRemoteIndicatorDrawableInternal(constantState2.newDrawable());
                } else {
                    a aVar = new a(this, resourceId, getContext());
                    this.f2526g = aVar;
                    aVar.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
                }
            } else {
                a();
            }
        }
        d();
        setClickable(true);
    }

    private Activity getActivity() {
        for (Context context = getContext(); context instanceof ContextWrapper; context = ((ContextWrapper) context).getBaseContext()) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
        }
        return null;
    }

    private androidx.fragment.app.j0 getFragmentManager() {
        Activity activity = getActivity();
        if (activity instanceof FragmentActivity) {
            return ((FragmentActivity) activity).k();
        }
        return null;
    }

    public final void a() {
        if (this.f2528i > 0) {
            a aVar = this.f2526g;
            if (aVar != null) {
                aVar.cancel(false);
            }
            a aVar2 = new a(this, this.f2528i, getContext());
            this.f2526g = aVar2;
            this.f2528i = 0;
            aVar2.executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, new Void[0]);
        }
    }

    public final void b() {
        this.f2522a.getClass();
        q1.s0 s0VarF = u0.f();
        int i6 = !s0VarF.d() ? s0VarF.f9135i : 0;
        if (this.f2530k != i6) {
            this.f2530k = i6;
            d();
            refreshDrawableState();
        }
        if (i6 == 1) {
            a();
        }
    }

    public final boolean c() {
        androidx.fragment.app.j0 fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            throw new IllegalStateException("The activity must be a subclass of FragmentActivity");
        }
        this.f2522a.getClass();
        if (u0.f().d()) {
            if (fragmentManager.z("android.support.v7.mediarouter:MediaRouteChooserDialogFragment") != null) {
                Log.w("MediaRouteButton", "showDialog(): Route chooser dialog already showing!");
                return false;
            }
            this.d.getClass();
            g gVar = new g();
            q1.l0 l0Var = this.f2524c;
            if (l0Var == null) {
                throw new IllegalArgumentException("selector must not be null");
            }
            gVar.T();
            if (!gVar.f2602m0.equals(l0Var)) {
                gVar.f2602m0 = l0Var;
                Bundle bundle = gVar.f1524g;
                if (bundle == null) {
                    bundle = new Bundle();
                }
                bundle.putBundle("selector", l0Var.f9056a);
                gVar.O(bundle);
                androidx.appcompat.app.i0 i0Var = gVar.f2601l0;
                if (i0Var != null) {
                    if (gVar.f2600k0) {
                        ((c0) i0Var).j(l0Var);
                    } else {
                        ((f) i0Var).k(l0Var);
                    }
                }
            }
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(fragmentManager);
            aVar.f(0, gVar, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment", 1);
            aVar.e(true);
        } else {
            if (fragmentManager.z("android.support.v7.mediarouter:MediaRouteControllerDialogFragment") != null) {
                Log.w("MediaRouteButton", "showDialog(): Route controller dialog already showing!");
                return false;
            }
            this.d.getClass();
            v vVar = new v();
            q1.l0 l0Var2 = this.f2524c;
            if (l0Var2 == null) {
                throw new IllegalArgumentException("selector must not be null");
            }
            if (vVar.f2730m0 == null) {
                Bundle bundle2 = vVar.f1524g;
                if (bundle2 != null) {
                    vVar.f2730m0 = q1.l0.b(bundle2.getBundle("selector"));
                }
                if (vVar.f2730m0 == null) {
                    vVar.f2730m0 = q1.l0.f9055c;
                }
            }
            if (!vVar.f2730m0.equals(l0Var2)) {
                vVar.f2730m0 = l0Var2;
                Bundle bundle3 = vVar.f1524g;
                if (bundle3 == null) {
                    bundle3 = new Bundle();
                }
                bundle3.putBundle("selector", l0Var2.f9056a);
                vVar.O(bundle3);
                androidx.appcompat.app.i0 i0Var2 = vVar.f2729l0;
                if (i0Var2 != null && vVar.f2728k0) {
                    ((q0) i0Var2).l(l0Var2);
                }
            }
            androidx.fragment.app.a aVar2 = new androidx.fragment.app.a(fragmentManager);
            aVar2.f(0, vVar, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment", 1);
            aVar2.e(true);
        }
        return true;
    }

    public final void d() {
        int i6 = this.f2530k;
        String string = getContext().getString(i6 != 1 ? i6 != 2 ? com.p2elite.brtv2.R.string.mr_cast_button_disconnected : com.p2elite.brtv2.R.string.mr_cast_button_connected : com.p2elite.brtv2.R.string.mr_cast_button_connecting);
        setContentDescription(string);
        if (!this.f2534o || TextUtils.isEmpty(string)) {
            string = null;
        }
        r4.b.L(this, string);
    }

    @Override // android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f2527h != null) {
            this.f2527h.setState(getDrawableState());
            if (this.f2527h.getCurrent() instanceof AnimationDrawable) {
                AnimationDrawable animationDrawable = (AnimationDrawable) this.f2527h.getCurrent();
                int i6 = this.f2530k;
                if (i6 == 1 || this.f2529j != i6) {
                    if (!animationDrawable.isRunning()) {
                        animationDrawable.start();
                    }
                } else if (i6 == 2 && !animationDrawable.isRunning()) {
                    animationDrawable.selectDrawable(animationDrawable.getNumberOfFrames() - 1);
                }
            }
            invalidate();
        }
        this.f2529j = this.f2530k;
    }

    public w getDialogFactory() {
        return this.d;
    }

    public q1.l0 getRouteSelector() {
        return this.f2524c;
    }

    @Override // android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f2527h;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        this.f2525e = true;
        if (!this.f2524c.d()) {
            this.f2522a.a(this.f2524c, this.f2523b, 0);
        }
        b();
    }

    @Override // android.view.View
    public final int[] onCreateDrawableState(int i6) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i6 + 1);
        if (this.f2522a == null || this.f) {
            return iArrOnCreateDrawableState;
        }
        int i10 = this.f2530k;
        if (i10 == 1) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2521r);
        } else if (i10 == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f2520q);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        if (!isInEditMode()) {
            this.f2525e = false;
            if (!this.f2524c.d()) {
                this.f2522a.h(this.f2523b);
            }
        }
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f2527h != null) {
            int paddingLeft = getPaddingLeft();
            int width = getWidth() - getPaddingRight();
            int paddingTop = getPaddingTop();
            int height = getHeight() - getPaddingBottom();
            int intrinsicWidth = this.f2527h.getIntrinsicWidth();
            int intrinsicHeight = this.f2527h.getIntrinsicHeight();
            int i6 = (((width - paddingLeft) - intrinsicWidth) / 2) + paddingLeft;
            int i10 = (((height - paddingTop) - intrinsicHeight) / 2) + paddingTop;
            this.f2527h.setBounds(i6, i10, intrinsicWidth + i6, intrinsicHeight + i10);
            this.f2527h.draw(canvas);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i6, int i10) {
        int paddingRight;
        int size = View.MeasureSpec.getSize(i6);
        int size2 = View.MeasureSpec.getSize(i10);
        int mode = View.MeasureSpec.getMode(i6);
        int mode2 = View.MeasureSpec.getMode(i10);
        Drawable drawable = this.f2527h;
        int paddingBottom = 0;
        if (drawable != null) {
            paddingRight = getPaddingRight() + getPaddingLeft() + drawable.getIntrinsicWidth();
        } else {
            paddingRight = 0;
        }
        int iMax = Math.max(this.f2532m, paddingRight);
        Drawable drawable2 = this.f2527h;
        if (drawable2 != null) {
            paddingBottom = getPaddingBottom() + getPaddingTop() + drawable2.getIntrinsicHeight();
        }
        int iMax2 = Math.max(this.f2533n, paddingBottom);
        if (mode == Integer.MIN_VALUE) {
            size = Math.min(size, iMax);
        } else if (mode != 1073741824) {
            size = iMax;
        }
        if (mode2 == Integer.MIN_VALUE) {
            size2 = Math.min(size2, iMax2);
        } else if (mode2 != 1073741824) {
            size2 = iMax2;
        }
        setMeasuredDimension(size, size2);
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0124  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean performClick() {
        /*
            Method dump skipped, instructions count: 307
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.mediarouter.app.MediaRouteButton.performClick():boolean");
    }

    public void setCheatSheetEnabled(boolean z7) {
        if (z7 != this.f2534o) {
            this.f2534o = z7;
            d();
        }
    }

    public void setDialogFactory(w wVar) {
        if (wVar == null) {
            throw new IllegalArgumentException("factory must not be null");
        }
        this.d = wVar;
    }

    public void setRemoteIndicatorDrawable(Drawable drawable) {
        this.f2528i = 0;
        setRemoteIndicatorDrawableInternal(drawable);
    }

    public void setRemoteIndicatorDrawableInternal(Drawable drawable) {
        a aVar = this.f2526g;
        if (aVar != null) {
            aVar.cancel(false);
        }
        Drawable drawable2 = this.f2527h;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f2527h);
        }
        if (drawable != null) {
            ColorStateList colorStateList = this.f2531l;
            if (colorStateList != null) {
                drawable = n5.d.W(drawable.mutate());
                g0.a.h(drawable, colorStateList);
            }
            drawable.setCallback(this);
            drawable.setState(getDrawableState());
            drawable.setVisible(getVisibility() == 0, false);
        }
        this.f2527h = drawable;
        refreshDrawableState();
    }

    public void setRouteSelector(q1.l0 l0Var) {
        if (l0Var == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f2524c.equals(l0Var)) {
            return;
        }
        if (this.f2525e) {
            boolean zD = this.f2524c.d();
            i0 i0Var = this.f2523b;
            u0 u0Var = this.f2522a;
            if (!zD) {
                u0Var.h(i0Var);
            }
            if (!l0Var.d()) {
                u0Var.a(l0Var, i0Var, 0);
            }
        }
        this.f2524c = l0Var;
        b();
    }

    @Override // android.view.View
    public void setVisibility(int i6) {
        super.setVisibility(i6);
        Drawable drawable = this.f2527h;
        if (drawable != null) {
            drawable.setVisible(i6 == 0, false);
        }
    }

    @Override // android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f2527h;
    }

    @Deprecated
    public void setAlwaysVisible(boolean z7) {
    }

    public MediaRouteButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, com.p2elite.brtv2.R.attr.mediaRouteButtonStyle);
    }
}
