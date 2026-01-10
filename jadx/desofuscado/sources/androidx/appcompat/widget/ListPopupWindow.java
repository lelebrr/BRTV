package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import com.p2elite.brtv2.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class ListPopupWindow implements k.c0 {
    public static final Method A;
    public static final Method B;

    /* renamed from: z, reason: collision with root package name */
    public static final Method f560z;

    /* renamed from: a, reason: collision with root package name */
    public final Context f561a;

    /* renamed from: b, reason: collision with root package name */
    public ListAdapter f562b;

    /* renamed from: c, reason: collision with root package name */
    public s1 f563c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public int f564e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f565g;

    /* renamed from: h, reason: collision with root package name */
    public final int f566h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f567i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f568j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f569k;

    /* renamed from: l, reason: collision with root package name */
    public int f570l;

    /* renamed from: m, reason: collision with root package name */
    public final int f571m;

    /* renamed from: n, reason: collision with root package name */
    public a2 f572n;

    /* renamed from: o, reason: collision with root package name */
    public View f573o;

    /* renamed from: p, reason: collision with root package name */
    public AdapterView.OnItemClickListener f574p;

    /* renamed from: q, reason: collision with root package name */
    public final z1 f575q;

    /* renamed from: r, reason: collision with root package name */
    public final c2 f576r;

    /* renamed from: s, reason: collision with root package name */
    public final b2 f577s;

    /* renamed from: t, reason: collision with root package name */
    public final z1 f578t;

    /* renamed from: u, reason: collision with root package name */
    public final Handler f579u;

    /* renamed from: v, reason: collision with root package name */
    public final Rect f580v;

    /* renamed from: w, reason: collision with root package name */
    public Rect f581w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f582x;

    /* renamed from: y, reason: collision with root package name */
    public final PopupWindow f583y;

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                f560z = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                B = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                A = PopupWindow.class.getDeclaredMethod("getMaxAvailableHeight", View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException unused3) {
                Log.i("ListPopupWindow", "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well.");
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    @Override // k.c0
    public final void a() {
        int i6;
        int iA;
        int paddingBottom;
        s1 s1Var;
        s1 s1Var2 = this.f563c;
        PopupWindow popupWindow = this.f583y;
        Context context = this.f561a;
        if (s1Var2 == null) {
            s1 s1VarB = b(context, !this.f582x);
            this.f563c = s1VarB;
            s1VarB.setAdapter(this.f562b);
            this.f563c.setOnItemClickListener(this.f574p);
            this.f563c.setFocusable(true);
            this.f563c.setFocusableInTouchMode(true);
            this.f563c.setOnItemSelectedListener(new w1(i, this));
            this.f563c.setOnScrollListener(this.f577s);
            popupWindow.setContentView(this.f563c);
        }
        Drawable background = popupWindow.getBackground();
        Rect rect = this.f580v;
        if (background != null) {
            background.getPadding(rect);
            int i10 = rect.top;
            i6 = rect.bottom + i10;
            if (!this.f567i) {
                this.f565g = -i10;
            }
        } else {
            rect.setEmpty();
            i6 = 0;
        }
        boolean z7 = popupWindow.getInputMethodMode() == 2;
        View view = this.f573o;
        int i11 = this.f565g;
        if (Build.VERSION.SDK_INT <= 23) {
            Method method = A;
            if (method != null) {
                try {
                    iA = ((Integer) method.invoke(popupWindow, view, Integer.valueOf(i11), Boolean.valueOf(z7))).intValue();
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version.");
                }
            } else {
                iA = popupWindow.getMaxAvailableHeight(view, i11);
            }
        } else {
            iA = x1.a(popupWindow, view, i11, z7);
        }
        int i12 = this.d;
        if (i12 == -1) {
            paddingBottom = iA + i6;
        } else {
            int i13 = this.f564e;
            int iA2 = this.f563c.a(i13 != -2 ? i13 != -1 ? View.MeasureSpec.makeMeasureSpec(i13, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), iA);
            paddingBottom = iA2 + (iA2 > 0 ? this.f563c.getPaddingBottom() + this.f563c.getPaddingTop() + i6 : 0);
        }
        boolean z10 = this.f583y.getInputMethodMode() == 2;
        l5.a.Q(popupWindow, this.f566h);
        if (popupWindow.isShowing()) {
            View view2 = this.f573o;
            WeakHashMap weakHashMap = n0.s0.f8353a;
            if (view2.isAttachedToWindow()) {
                int width = this.f564e;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.f573o.getWidth();
                }
                if (i12 == -1) {
                    i12 = z10 ? paddingBottom : -1;
                    if (z10) {
                        popupWindow.setWidth(this.f564e == -1 ? -1 : 0);
                        popupWindow.setHeight(0);
                    } else {
                        popupWindow.setWidth(this.f564e == -1 ? -1 : 0);
                        popupWindow.setHeight(-1);
                    }
                } else if (i12 == -2) {
                    i12 = paddingBottom;
                }
                popupWindow.setOutsideTouchable(true);
                popupWindow.update(this.f573o, this.f, this.f565g, width < 0 ? -1 : width, i12 < 0 ? -1 : i12);
                return;
            }
            return;
        }
        int width2 = this.f564e;
        if (width2 == -1) {
            width2 = -1;
        } else if (width2 == -2) {
            width2 = this.f573o.getWidth();
        }
        if (i12 == -1) {
            i12 = -1;
        } else if (i12 == -2) {
            i12 = paddingBottom;
        }
        popupWindow.setWidth(width2);
        popupWindow.setHeight(i12);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = f560z;
            if (method2 != null) {
                try {
                    method2.invoke(popupWindow, Boolean.TRUE);
                } catch (Exception unused2) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            y1.b(popupWindow, true);
        }
        popupWindow.setOutsideTouchable(true);
        popupWindow.setTouchInterceptor(this.f576r);
        if (this.f569k) {
            l5.a.M(popupWindow, this.f568j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method3 = B;
            if (method3 != null) {
                try {
                    method3.invoke(popupWindow, this.f581w);
                } catch (Exception e5) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e5);
                }
            }
        } else {
            y1.a(popupWindow, this.f581w);
        }
        popupWindow.showAsDropDown(this.f573o, this.f, this.f565g, this.f570l);
        this.f563c.setSelection(-1);
        if ((!this.f582x || this.f563c.isInTouchMode()) && (s1Var = this.f563c) != null) {
            s1Var.setListSelectionHidden(true);
            s1Var.requestLayout();
        }
        if (this.f582x) {
            return;
        }
        this.f579u.post(this.f578t);
    }

    public s1 b(Context context, boolean z7) {
        return new s1(context, z7);
    }

    @Override // k.c0
    public final boolean c() {
        return this.f583y.isShowing();
    }

    @Override // k.c0
    public final void dismiss() {
        PopupWindow popupWindow = this.f583y;
        popupWindow.dismiss();
        popupWindow.setContentView(null);
        this.f563c = null;
        this.f579u.removeCallbacks(this.f575q);
    }

    public final int e() {
        return this.f;
    }

    public final Drawable f() {
        return this.f583y.getBackground();
    }

    @Override // k.c0
    public final s1 h() {
        return this.f563c;
    }

    public final void i(Drawable drawable) {
        this.f583y.setBackgroundDrawable(drawable);
    }

    public final void j(int i6) {
        this.f565g = i6;
        this.f567i = true;
    }

    public final void m(int i6) {
        this.f = i6;
    }

    public final int o() {
        if (this.f567i) {
            return this.f565g;
        }
        return 0;
    }

    public void q(ListAdapter listAdapter) {
        a2 a2Var = this.f572n;
        if (a2Var == null) {
            this.f572n = new a2(0, this);
        } else {
            ListAdapter listAdapter2 = this.f562b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(a2Var);
            }
        }
        this.f562b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.f572n);
        }
        s1 s1Var = this.f563c;
        if (s1Var != null) {
            s1Var.setAdapter(this.f562b);
        }
    }

    public final void r(int i6) {
        Drawable background = this.f583y.getBackground();
        if (background == null) {
            this.f564e = i6;
            return;
        }
        Rect rect = this.f580v;
        background.getPadding(rect);
        this.f564e = rect.left + rect.right + i6;
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i6) {
        this(context, attributeSet, i6, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i6, int i10) {
        this.d = -2;
        this.f564e = -2;
        this.f566h = 1002;
        this.f570l = 0;
        this.f571m = Integer.MAX_VALUE;
        this.f575q = new z1(this, 1);
        this.f576r = new c2(0, this);
        this.f577s = new b2(this);
        this.f578t = new z1(this, 0);
        this.f580v = new Rect();
        this.f561a = context;
        this.f579u = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.a.f6360p, i6, 0);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f565g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f567i = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i6, 0);
        appCompatPopupWindow.a(context, attributeSet, i6);
        this.f583y = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }
}
