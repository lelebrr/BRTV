package androidx.appcompat.widget;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.media3.common.C;
import com.p2elite.brtv2.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class y3 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* renamed from: k, reason: collision with root package name */
    public static y3 f896k;

    /* renamed from: l, reason: collision with root package name */
    public static y3 f897l;

    /* renamed from: a, reason: collision with root package name */
    public final View f898a;

    /* renamed from: b, reason: collision with root package name */
    public final CharSequence f899b;

    /* renamed from: c, reason: collision with root package name */
    public final int f900c;
    public final x3 d;

    /* renamed from: e, reason: collision with root package name */
    public final x3 f901e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f902g;

    /* renamed from: h, reason: collision with root package name */
    public z3 f903h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f904i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f905j;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.appcompat.widget.x3] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.appcompat.widget.x3] */
    public y3(View view, CharSequence charSequence) {
        final int i6 = 0;
        this.d = new Runnable(this) { // from class: androidx.appcompat.widget.x3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y3 f893b;

            {
                this.f893b = this;
            }

            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                switch (i6) {
                    case 0:
                        this.f893b.c(false);
                        break;
                    default:
                        this.f893b.a();
                        break;
                }
            }
        };
        final int i10 = 1;
        this.f901e = new Runnable(this) { // from class: androidx.appcompat.widget.x3

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ y3 f893b;

            {
                this.f893b = this;
            }

            @Override // java.lang.Runnable
            public final void run() throws Resources.NotFoundException {
                switch (i10) {
                    case 0:
                        this.f893b.c(false);
                        break;
                    default:
                        this.f893b.a();
                        break;
                }
            }
        };
        this.f898a = view;
        this.f899b = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = n0.w0.f8362a;
        this.f900c = Build.VERSION.SDK_INT >= 28 ? n0.u0.a(viewConfiguration) : viewConfiguration.getScaledTouchSlop() / 2;
        this.f905j = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(y3 y3Var) {
        y3 y3Var2 = f896k;
        if (y3Var2 != null) {
            y3Var2.f898a.removeCallbacks(y3Var2.d);
        }
        f896k = y3Var;
        if (y3Var != null) {
            y3Var.f898a.postDelayed(y3Var.d, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        y3 y3Var = f897l;
        View view = this.f898a;
        if (y3Var == this) {
            f897l = null;
            z3 z3Var = this.f903h;
            if (z3Var != null) {
                View view2 = (View) z3Var.f913b;
                if (view2.getParent() != null) {
                    ((WindowManager) ((Context) z3Var.f912a).getSystemService("window")).removeView(view2);
                }
                this.f903h = null;
                this.f905j = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f896k == this) {
            b(null);
        }
        view.removeCallbacks(this.f901e);
    }

    public final void c(boolean z7) throws Resources.NotFoundException {
        int height;
        int i6;
        String str;
        int i10;
        String str2;
        long longPressTimeout;
        long j10;
        long j11;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        View view = this.f898a;
        if (view.isAttachedToWindow()) {
            b(null);
            y3 y3Var = f897l;
            if (y3Var != null) {
                y3Var.a();
            }
            f897l = this;
            this.f904i = z7;
            Context context = view.getContext();
            z3 z3Var = new z3();
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            z3Var.d = layoutParams;
            z3Var.f915e = new Rect();
            z3Var.f = new int[2];
            z3Var.f916g = new int[2];
            z3Var.f912a = context;
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
            z3Var.f913b = viewInflate;
            z3Var.f914c = (TextView) viewInflate.findViewById(R.id.message);
            layoutParams.setTitle(z3.class.getSimpleName());
            layoutParams.packageName = context.getPackageName();
            layoutParams.type = 1002;
            layoutParams.width = -2;
            layoutParams.height = -2;
            layoutParams.format = -3;
            layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
            layoutParams.flags = 24;
            this.f903h = z3Var;
            int width = this.f;
            int i11 = this.f902g;
            boolean z10 = this.f904i;
            View view2 = (View) z3Var.f913b;
            ViewParent parent = view2.getParent();
            Context context2 = (Context) z3Var.f912a;
            if (parent != null && view2.getParent() != null) {
                ((WindowManager) context2.getSystemService("window")).removeView(view2);
            }
            ((TextView) z3Var.f914c).setText(this.f899b);
            WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) z3Var.d;
            layoutParams2.token = view.getApplicationWindowToken();
            int dimensionPixelOffset = context2.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
            if (view.getWidth() < dimensionPixelOffset) {
                width = view.getWidth() / 2;
            }
            if (view.getHeight() >= dimensionPixelOffset) {
                int dimensionPixelOffset2 = context2.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
                height = i11 + dimensionPixelOffset2;
                i6 = i11 - dimensionPixelOffset2;
            } else {
                height = view.getHeight();
                i6 = 0;
            }
            layoutParams2.gravity = 49;
            int dimensionPixelOffset3 = context2.getResources().getDimensionPixelOffset(z10 ? R.dimen.tooltip_y_offset_touch : R.dimen.tooltip_y_offset_non_touch);
            View rootView = view.getRootView();
            ViewGroup.LayoutParams layoutParams3 = rootView.getLayoutParams();
            if (!(layoutParams3 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams3).type != 2) {
                Context context3 = view.getContext();
                while (true) {
                    if (!(context3 instanceof ContextWrapper)) {
                        break;
                    }
                    if (context3 instanceof Activity) {
                        rootView = ((Activity) context3).getWindow().getDecorView();
                        break;
                    }
                    context3 = ((ContextWrapper) context3).getBaseContext();
                }
            }
            if (rootView == null) {
                Log.e("TooltipPopup", "Cannot find app view");
                str2 = "window";
            } else {
                Rect rect = (Rect) z3Var.f915e;
                rootView.getWindowVisibleDisplayFrame(rect);
                if (rect.left >= 0 || rect.top >= 0) {
                    str = "window";
                    i10 = 0;
                } else {
                    Resources resources = context2.getResources();
                    str = "window";
                    int identifier = resources.getIdentifier("status_bar_height", "dimen", "android");
                    int dimensionPixelSize = identifier != 0 ? resources.getDimensionPixelSize(identifier) : 0;
                    DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                    i10 = 0;
                    rect.set(0, dimensionPixelSize, displayMetrics.widthPixels, displayMetrics.heightPixels);
                }
                int[] iArr = (int[]) z3Var.f916g;
                rootView.getLocationOnScreen(iArr);
                int[] iArr2 = (int[]) z3Var.f;
                view.getLocationOnScreen(iArr2);
                int i12 = iArr2[i10] - iArr[i10];
                iArr2[i10] = i12;
                iArr2[1] = iArr2[1] - iArr[1];
                layoutParams2.x = (i12 + width) - (rootView.getWidth() / 2);
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i10, i10);
                view2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredHeight = view2.getMeasuredHeight();
                int i13 = iArr2[1];
                int iG = a.e.g(i13, i6, dimensionPixelOffset3, measuredHeight);
                int i14 = i13 + height + dimensionPixelOffset3;
                if (z10) {
                    if (iG >= 0) {
                        layoutParams2.y = iG;
                    } else {
                        layoutParams2.y = i14;
                    }
                } else if (measuredHeight + i14 <= rect.height()) {
                    layoutParams2.y = i14;
                } else {
                    layoutParams2.y = iG;
                }
                str2 = str;
            }
            ((WindowManager) context2.getSystemService(str2)).addView(view2, layoutParams2);
            view.addOnAttachStateChangeListener(this);
            if (this.f904i) {
                j11 = 2500;
            } else {
                if ((view.getWindowSystemUiVisibility() & 1) == 1) {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j10 = C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
                } else {
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                    j10 = C.DEFAULT_SEEK_FORWARD_INCREMENT_MS;
                }
                j11 = j10 - longPressTimeout;
            }
            x3 x3Var = this.f901e;
            view.removeCallbacks(x3Var);
            view.postDelayed(x3Var, j11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0066  */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            androidx.appcompat.widget.z3 r4 = r3.f903h
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.f904i
            if (r4 == 0) goto La
            return r0
        La:
            android.view.View r4 = r3.f898a
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            return r0
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.f905j = r4
            r3.a()
            goto L6f
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            androidx.appcompat.widget.z3 r4 = r3.f903h
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.f905j
            if (r1 != 0) goto L66
            int r1 = r3.f
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.f900c
            if (r1 > r2) goto L66
            int r1 = r3.f902g
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.f = r4
            r3.f902g = r5
            r3.f905j = r0
            b(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.y3.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) throws Resources.NotFoundException {
        this.f = view.getWidth() / 2;
        this.f902g = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
