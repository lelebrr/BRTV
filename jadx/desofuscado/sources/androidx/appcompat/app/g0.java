package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.c4;
import androidx.appcompat.widget.i1;
import androidx.appcompat.widget.v3;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import n0.a1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class g0 extends q implements k.j, LayoutInflater.Factory2 {

    /* renamed from: j0, reason: collision with root package name */
    public static final p.l f262j0 = new p.l(0);

    /* renamed from: k0, reason: collision with root package name */
    public static final int[] f263k0 = {R.attr.windowBackground};

    /* renamed from: l0, reason: collision with root package name */
    public static final boolean f264l0 = !"robolectric".equals(Build.FINGERPRINT);

    /* renamed from: m0, reason: collision with root package name */
    public static final boolean f265m0 = true;
    public boolean A;
    public ViewGroup B;
    public TextView C;
    public View D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public boolean L;
    public f0[] M;
    public f0 N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public boolean R;
    public Configuration S;
    public final int T;
    public int U;
    public int V;
    public boolean W;
    public a0 X;
    public a0 Y;
    public boolean Z;

    /* renamed from: b0, reason: collision with root package name */
    public int f266b0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f268d0;

    /* renamed from: e0, reason: collision with root package name */
    public Rect f269e0;

    /* renamed from: f0, reason: collision with root package name */
    public Rect f270f0;

    /* renamed from: g0, reason: collision with root package name */
    public k0 f271g0;

    /* renamed from: h0, reason: collision with root package name */
    public OnBackInvokedDispatcher f272h0;
    public OnBackInvokedCallback i0;

    /* renamed from: j, reason: collision with root package name */
    public final Object f273j;

    /* renamed from: k, reason: collision with root package name */
    public final Context f274k;

    /* renamed from: l, reason: collision with root package name */
    public Window f275l;

    /* renamed from: m, reason: collision with root package name */
    public z f276m;

    /* renamed from: n, reason: collision with root package name */
    public final Object f277n;

    /* renamed from: o, reason: collision with root package name */
    public l5.a f278o;

    /* renamed from: p, reason: collision with root package name */
    public j.i f279p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence f280q;

    /* renamed from: r, reason: collision with root package name */
    public i1 f281r;

    /* renamed from: s, reason: collision with root package name */
    public s f282s;

    /* renamed from: t, reason: collision with root package name */
    public s f283t;

    /* renamed from: u, reason: collision with root package name */
    public j.a f284u;

    /* renamed from: v, reason: collision with root package name */
    public ActionBarContextView f285v;

    /* renamed from: w, reason: collision with root package name */
    public PopupWindow f286w;

    /* renamed from: x, reason: collision with root package name */
    public r f287x;

    /* renamed from: y, reason: collision with root package name */
    public a1 f288y = null;

    /* renamed from: z, reason: collision with root package name */
    public final boolean f289z = true;

    /* renamed from: c0, reason: collision with root package name */
    public final r f267c0 = new r(this, 0);

    public g0(Context context, Window window, m mVar, Object obj) {
        AppCompatActivity appCompatActivity = null;
        this.T = -100;
        this.f274k = context;
        this.f273j = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof AppCompatActivity)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        } else {
                            context = ((ContextWrapper) context).getBaseContext();
                        }
                    } else {
                        appCompatActivity = (AppCompatActivity) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (appCompatActivity != null) {
                this.T = ((g0) appCompatActivity.m()).T;
            }
        }
        if (this.T == -100) {
            p.l lVar = f262j0;
            Integer num = (Integer) lVar.get(this.f273j.getClass().getName());
            if (num != null) {
                this.T = num.intValue();
                lVar.remove(this.f273j.getClass().getName());
            }
        }
        if (window != null) {
            o(window);
        }
        androidx.appcompat.widget.w.d();
    }

    public static j0.i p(Context context) {
        j0.i iVar;
        j0.i iVarB;
        int i6 = Build.VERSION.SDK_INT;
        if (i6 >= 33 || (iVar = q.f343c) == null) {
            return null;
        }
        j0.i iVarZ = z(context.getApplicationContext().getResources().getConfiguration());
        j0.k kVar = iVar.f7420a;
        int i10 = 0;
        if (i6 < 24) {
            iVarB = kVar.isEmpty() ? j0.i.f7419b : j0.i.b(kVar.get(0).toString());
        } else if (kVar.isEmpty()) {
            iVarB = j0.i.f7419b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (i10 < iVarZ.f7420a.size() + kVar.size()) {
                Locale locale = i10 < kVar.size() ? kVar.get(i10) : iVarZ.f7420a.get(i10 - kVar.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i10++;
            }
            iVarB = j0.i.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return iVarB.f7420a.isEmpty() ? iVarZ : iVarB;
    }

    public static Configuration t(Context context, int i6, j0.i iVar, Configuration configuration, boolean z7) {
        int i10 = i6 != 1 ? i6 != 2 ? z7 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i10 | (configuration2.uiMode & (-49));
        if (iVar != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                w.d(configuration2, iVar);
            } else {
                j0.k kVar = iVar.f7420a;
                u.b(configuration2, kVar.get(0));
                u.a(configuration2, kVar.get(0));
            }
        }
        return configuration2;
    }

    public static j0.i z(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? w.b(configuration) : j0.i.b(v.a(configuration.locale));
    }

    public final f0 A(int i6) {
        f0[] f0VarArr = this.M;
        if (f0VarArr == null || f0VarArr.length <= i6) {
            f0[] f0VarArr2 = new f0[i6 + 1];
            if (f0VarArr != null) {
                System.arraycopy(f0VarArr, 0, f0VarArr2, 0, f0VarArr.length);
            }
            this.M = f0VarArr2;
            f0VarArr = f0VarArr2;
        }
        f0 f0Var = f0VarArr[i6];
        if (f0Var != null) {
            return f0Var;
        }
        f0 f0Var2 = new f0();
        f0Var2.f248a = i6;
        f0Var2.f259n = false;
        f0VarArr[i6] = f0Var2;
        return f0Var2;
    }

    public final void B() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        w();
        if (this.G && this.f278o == null) {
            Object obj = this.f273j;
            if (obj instanceof Activity) {
                this.f278o = new x0((Activity) obj, this.H);
            } else if (obj instanceof Dialog) {
                this.f278o = new x0((Dialog) obj);
            }
            l5.a aVar = this.f278o;
            if (aVar != null) {
                aVar.J(this.f268d0);
            }
        }
    }

    public final void C(int i6) {
        this.f266b0 = (1 << i6) | this.f266b0;
        if (this.Z) {
            return;
        }
        View decorView = this.f275l.getDecorView();
        r rVar = this.f267c0;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        decorView.postOnAnimation(rVar);
        this.Z = true;
    }

    public final int D(Context context, int i6) {
        if (i6 == -100) {
            return -1;
        }
        if (i6 != -1) {
            if (i6 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return y(context).f();
                }
                return -1;
            }
            if (i6 != 1 && i6 != 2) {
                if (i6 != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.Y == null) {
                    this.Y = new a0(this, context);
                }
                return this.Y.f();
            }
        }
        return i6;
    }

    public final boolean E() {
        boolean z7 = this.O;
        this.O = false;
        f0 f0VarA = A(0);
        if (f0VarA.f258m) {
            if (!z7) {
                s(f0VarA, true);
            }
            return true;
        }
        j.a aVar = this.f284u;
        if (aVar != null) {
            aVar.a();
            return true;
        }
        B();
        l5.a aVar2 = this.f278o;
        return aVar2 != null && aVar2.i();
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0173, code lost:
    
        if (r3.f.getCount() > 0) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void F(androidx.appcompat.app.f0 r18, android.view.KeyEvent r19) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 472
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.g0.F(androidx.appcompat.app.f0, android.view.KeyEvent):void");
    }

    public final boolean G(f0 f0Var, int i6, KeyEvent keyEvent) {
        k.l lVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((f0Var.f256k || H(f0Var, keyEvent)) && (lVar = f0Var.f253h) != null) {
            return lVar.performShortcut(i6, keyEvent, 1);
        }
        return false;
    }

    public final boolean H(f0 f0Var, KeyEvent keyEvent) {
        i1 i1Var;
        i1 i1Var2;
        Resources.Theme themeNewTheme;
        i1 i1Var3;
        i1 i1Var4;
        if (this.R) {
            return false;
        }
        if (f0Var.f256k) {
            return true;
        }
        f0 f0Var2 = this.N;
        if (f0Var2 != null && f0Var2 != f0Var) {
            s(f0Var2, false);
        }
        Window.Callback callback = this.f275l.getCallback();
        int i6 = f0Var.f248a;
        if (callback != null) {
            f0Var.f252g = callback.onCreatePanelView(i6);
        }
        boolean z7 = i6 == 0 || i6 == 108;
        if (z7 && (i1Var4 = this.f281r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) i1Var4;
            actionBarOverlayLayout.k();
            ((v3) actionBarOverlayLayout.f445e).f871l = true;
        }
        if (f0Var.f252g == null && (!z7 || !(this.f278o instanceof s0))) {
            k.l lVar = f0Var.f253h;
            if (lVar == null || f0Var.f260o) {
                if (lVar == null) {
                    Context context = this.f274k;
                    if ((i6 == 0 || i6 == 108) && this.f281r != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = context.getTheme();
                        theme.resolveAttribute(com.p2elite.brtv2.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            themeNewTheme = context.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            themeNewTheme.resolveAttribute(com.p2elite.brtv2.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme.resolveAttribute(com.p2elite.brtv2.R.attr.actionBarWidgetTheme, typedValue, true);
                            themeNewTheme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (themeNewTheme == null) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                            }
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                        }
                        if (themeNewTheme != null) {
                            j.d dVar = new j.d(context, 0);
                            dVar.getTheme().setTo(themeNewTheme);
                            context = dVar;
                        }
                    }
                    k.l lVar2 = new k.l(context);
                    lVar2.f7612e = this;
                    k.l lVar3 = f0Var.f253h;
                    if (lVar2 != lVar3) {
                        if (lVar3 != null) {
                            lVar3.r(f0Var.f254i);
                        }
                        f0Var.f253h = lVar2;
                        k.h hVar = f0Var.f254i;
                        if (hVar != null) {
                            lVar2.b(hVar, lVar2.f7609a);
                        }
                    }
                    if (f0Var.f253h == null) {
                        return false;
                    }
                }
                if (z7 && (i1Var2 = this.f281r) != null) {
                    if (this.f282s == null) {
                        this.f282s = new s(this, 2);
                    }
                    ((ActionBarOverlayLayout) i1Var2).l(f0Var.f253h, this.f282s);
                }
                f0Var.f253h.y();
                if (!callback.onCreatePanelMenu(i6, f0Var.f253h)) {
                    k.l lVar4 = f0Var.f253h;
                    if (lVar4 != null) {
                        if (lVar4 != null) {
                            lVar4.r(f0Var.f254i);
                        }
                        f0Var.f253h = null;
                    }
                    if (z7 && (i1Var = this.f281r) != null) {
                        ((ActionBarOverlayLayout) i1Var).l(null, this.f282s);
                    }
                    return false;
                }
                f0Var.f260o = false;
            }
            f0Var.f253h.y();
            Bundle bundle = f0Var.f261p;
            if (bundle != null) {
                f0Var.f253h.s(bundle);
                f0Var.f261p = null;
            }
            if (!callback.onPreparePanel(0, f0Var.f252g, f0Var.f253h)) {
                if (z7 && (i1Var3 = this.f281r) != null) {
                    ((ActionBarOverlayLayout) i1Var3).l(null, this.f282s);
                }
                f0Var.f253h.x();
                return false;
            }
            f0Var.f253h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            f0Var.f253h.x();
        }
        f0Var.f256k = true;
        f0Var.f257l = false;
        this.N = f0Var;
        return true;
    }

    public final void I() {
        if (this.A) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void J() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z7 = false;
            if (this.f272h0 != null && (A(0).f258m || this.f284u != null)) {
                z7 = true;
            }
            if (z7 && this.i0 == null) {
                this.i0 = y.b(this.f272h0, this);
            } else {
                if (z7 || (onBackInvokedCallback = this.i0) == null) {
                    return;
                }
                y.c(this.f272h0, onBackInvokedCallback);
            }
        }
    }

    @Override // androidx.appcompat.app.q
    public final void a() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f274k);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof g0) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // androidx.appcompat.app.q
    public final void b() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.f278o != null) {
            B();
            if (this.f278o.w()) {
                return;
            }
            C(0);
        }
    }

    @Override // androidx.appcompat.app.q
    public final void d() throws IllegalAccessException, NoSuchFieldException, PackageManager.NameNotFoundException, SecurityException, IllegalArgumentException {
        String strB;
        this.P = true;
        m(false, true);
        x();
        Object obj = this.f273j;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    strB = a2.a.B(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e5) {
                    throw new IllegalArgumentException(e5);
                }
            } catch (IllegalArgumentException unused) {
                strB = null;
            }
            if (strB != null) {
                l5.a aVar = this.f278o;
                if (aVar == null) {
                    this.f268d0 = true;
                } else {
                    aVar.J(true);
                }
            }
            synchronized (q.f346h) {
                q.f(this);
                q.f345g.add(new WeakReference(this));
            }
        }
        this.S = new Configuration(this.f274k.getResources().getConfiguration());
        this.Q = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // androidx.appcompat.app.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void e() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f273j
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = androidx.appcompat.app.q.f346h
            monitor-enter(r0)
            androidx.appcompat.app.q.f(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.Z
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.f275l
            android.view.View r0 = r0.getDecorView()
            androidx.appcompat.app.r r1 = r3.f267c0
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.R = r0
            int r0 = r3.T
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.f273j
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            p.l r0 = androidx.appcompat.app.g0.f262j0
            java.lang.Object r1 = r3.f273j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.T
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            p.l r0 = androidx.appcompat.app.g0.f262j0
            java.lang.Object r1 = r3.f273j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            l5.a r0 = r3.f278o
            if (r0 == 0) goto L63
            r0.C()
        L63:
            androidx.appcompat.app.a0 r0 = r3.X
            if (r0 == 0) goto L6a
            r0.c()
        L6a:
            androidx.appcompat.app.a0 r0 = r3.Y
            if (r0 == 0) goto L71
            r0.c()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.g0.e():void");
    }

    @Override // androidx.appcompat.app.q
    public final boolean g(int i6) {
        if (i6 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i6 = 108;
        } else if (i6 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i6 = 109;
        }
        if (this.K && i6 == 108) {
            return false;
        }
        if (this.G && i6 == 1) {
            this.G = false;
        }
        if (i6 == 1) {
            I();
            this.K = true;
            return true;
        }
        if (i6 == 2) {
            I();
            this.E = true;
            return true;
        }
        if (i6 == 5) {
            I();
            this.F = true;
            return true;
        }
        if (i6 == 10) {
            I();
            this.I = true;
            return true;
        }
        if (i6 == 108) {
            I();
            this.G = true;
            return true;
        }
        if (i6 != 109) {
            return this.f275l.requestFeature(i6);
        }
        I();
        this.H = true;
        return true;
    }

    @Override // androidx.appcompat.app.q
    public final void h(int i6) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        w();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f274k).inflate(i6, viewGroup);
        this.f276m.a(this.f275l.getCallback());
    }

    @Override // androidx.appcompat.app.q
    public final void i(View view) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        w();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f276m.a(this.f275l.getCallback());
    }

    @Override // k.j
    public final boolean j(k.l lVar, MenuItem menuItem) {
        f0 f0Var;
        Window.Callback callback = this.f275l.getCallback();
        if (callback != null && !this.R) {
            k.l lVarK = lVar.k();
            f0[] f0VarArr = this.M;
            int length = f0VarArr != null ? f0VarArr.length : 0;
            int i6 = 0;
            while (true) {
                if (i6 < length) {
                    f0Var = f0VarArr[i6];
                    if (f0Var != null && f0Var.f253h == lVarK) {
                        break;
                    }
                    i6++;
                } else {
                    f0Var = null;
                    break;
                }
            }
            if (f0Var != null) {
                return callback.onMenuItemSelected(f0Var.f248a, menuItem);
            }
        }
        return false;
    }

    @Override // androidx.appcompat.app.q
    public final void k(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        w();
        ViewGroup viewGroup = (ViewGroup) this.B.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f276m.a(this.f275l.getCallback());
    }

    @Override // androidx.appcompat.app.q
    public final void l(CharSequence charSequence) {
        this.f280q = charSequence;
        i1 i1Var = this.f281r;
        if (i1Var != null) {
            i1Var.setWindowTitle(charSequence);
            return;
        }
        l5.a aVar = this.f278o;
        if (aVar != null) {
            aVar.R(charSequence);
            return;
        }
        TextView textView = this.C;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:185:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x0263  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0267 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:197:0x027b  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x02ae  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x01f7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x01c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean m(boolean r17, boolean r18) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, android.content.pm.PackageManager.NameNotFoundException, java.lang.SecurityException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 694
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.g0.m(boolean, boolean):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r6.h() != false) goto L20;
     */
    @Override // k.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void n(k.l r6) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r5 = this;
            androidx.appcompat.widget.i1 r6 = r5.f281r
            r0 = 1
            r1 = 0
            if (r6 == 0) goto Ld3
            androidx.appcompat.widget.ActionBarOverlayLayout r6 = (androidx.appcompat.widget.ActionBarOverlayLayout) r6
            r6.k()
            androidx.appcompat.widget.j1 r6 = r6.f445e
            androidx.appcompat.widget.v3 r6 = (androidx.appcompat.widget.v3) r6
            androidx.appcompat.widget.Toolbar r6 = r6.f862a
            int r2 = r6.getVisibility()
            if (r2 != 0) goto Ld3
            androidx.appcompat.widget.ActionMenuView r6 = r6.f630a
            if (r6 == 0) goto Ld3
            boolean r6 = r6.f470s
            if (r6 == 0) goto Ld3
            android.content.Context r6 = r5.f274k
            android.view.ViewConfiguration r6 = android.view.ViewConfiguration.get(r6)
            boolean r6 = r6.hasPermanentMenuKey()
            if (r6 == 0) goto L4a
            androidx.appcompat.widget.i1 r6 = r5.f281r
            androidx.appcompat.widget.ActionBarOverlayLayout r6 = (androidx.appcompat.widget.ActionBarOverlayLayout) r6
            r6.k()
            androidx.appcompat.widget.j1 r6 = r6.f445e
            androidx.appcompat.widget.v3 r6 = (androidx.appcompat.widget.v3) r6
            androidx.appcompat.widget.Toolbar r6 = r6.f862a
            androidx.appcompat.widget.ActionMenuView r6 = r6.f630a
            if (r6 == 0) goto Ld3
            androidx.appcompat.widget.k r6 = r6.f471t
            if (r6 == 0) goto Ld3
            androidx.appcompat.widget.g r2 = r6.f759v
            if (r2 != 0) goto L4a
            boolean r6 = r6.h()
            if (r6 == 0) goto Ld3
        L4a:
            android.view.Window r6 = r5.f275l
            android.view.Window$Callback r6 = r6.getCallback()
            androidx.appcompat.widget.i1 r2 = r5.f281r
            androidx.appcompat.widget.ActionBarOverlayLayout r2 = (androidx.appcompat.widget.ActionBarOverlayLayout) r2
            r2.k()
            androidx.appcompat.widget.j1 r2 = r2.f445e
            androidx.appcompat.widget.v3 r2 = (androidx.appcompat.widget.v3) r2
            androidx.appcompat.widget.Toolbar r2 = r2.f862a
            boolean r2 = r2.p()
            r3 = 108(0x6c, float:1.51E-43)
            if (r2 == 0) goto L8c
            androidx.appcompat.widget.i1 r0 = r5.f281r
            androidx.appcompat.widget.ActionBarOverlayLayout r0 = (androidx.appcompat.widget.ActionBarOverlayLayout) r0
            r0.k()
            androidx.appcompat.widget.j1 r0 = r0.f445e
            androidx.appcompat.widget.v3 r0 = (androidx.appcompat.widget.v3) r0
            androidx.appcompat.widget.Toolbar r0 = r0.f862a
            androidx.appcompat.widget.ActionMenuView r0 = r0.f630a
            if (r0 == 0) goto L7e
            androidx.appcompat.widget.k r0 = r0.f471t
            if (r0 == 0) goto L7e
            boolean r0 = r0.c()
        L7e:
            boolean r0 = r5.R
            if (r0 != 0) goto Le0
            androidx.appcompat.app.f0 r0 = r5.A(r1)
            k.l r0 = r0.f253h
            r6.onPanelClosed(r3, r0)
            goto Le0
        L8c:
            if (r6 == 0) goto Le0
            boolean r2 = r5.R
            if (r2 != 0) goto Le0
            boolean r2 = r5.Z
            if (r2 == 0) goto La9
            int r2 = r5.f266b0
            r0 = r0 & r2
            if (r0 == 0) goto La9
            android.view.Window r0 = r5.f275l
            android.view.View r0 = r0.getDecorView()
            androidx.appcompat.app.r r2 = r5.f267c0
            r0.removeCallbacks(r2)
            r2.run()
        La9:
            androidx.appcompat.app.f0 r0 = r5.A(r1)
            k.l r2 = r0.f253h
            if (r2 == 0) goto Le0
            boolean r4 = r0.f260o
            if (r4 != 0) goto Le0
            android.view.View r4 = r0.f252g
            boolean r1 = r6.onPreparePanel(r1, r4, r2)
            if (r1 == 0) goto Le0
            k.l r0 = r0.f253h
            r6.onMenuOpened(r3, r0)
            androidx.appcompat.widget.i1 r6 = r5.f281r
            androidx.appcompat.widget.ActionBarOverlayLayout r6 = (androidx.appcompat.widget.ActionBarOverlayLayout) r6
            r6.k()
            androidx.appcompat.widget.j1 r6 = r6.f445e
            androidx.appcompat.widget.v3 r6 = (androidx.appcompat.widget.v3) r6
            androidx.appcompat.widget.Toolbar r6 = r6.f862a
            r6.v()
            goto Le0
        Ld3:
            androidx.appcompat.app.f0 r6 = r5.A(r1)
            r6.f259n = r0
            r5.s(r6, r1)
            r0 = 0
            r5.F(r6, r0)
        Le0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.g0.n(k.l):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void o(android.view.Window r4) {
        /*
            r3 = this;
            android.view.Window r0 = r3.f275l
            java.lang.String r1 = "AppCompat has already installed itself into the Window"
            if (r0 != 0) goto L66
            android.view.Window$Callback r0 = r4.getCallback()
            boolean r2 = r0 instanceof androidx.appcompat.app.z
            if (r2 != 0) goto L60
            androidx.appcompat.app.z r1 = new androidx.appcompat.app.z
            r1.<init>(r3, r0)
            r3.f276m = r1
            r4.setCallback(r1)
            int[] r0 = androidx.appcompat.app.g0.f263k0
            android.content.Context r1 = r3.f274k
            r2 = 0
            a1.b r0 = a1.b.B(r1, r2, r0)
            r1 = 0
            android.graphics.drawable.Drawable r1 = r0.u(r1)
            if (r1 == 0) goto L2b
            r4.setBackgroundDrawable(r1)
        L2b:
            r0.F()
            r3.f275l = r4
            int r4 = android.os.Build.VERSION.SDK_INT
            r0 = 33
            if (r4 < r0) goto L5f
            android.window.OnBackInvokedDispatcher r4 = r3.f272h0
            if (r4 != 0) goto L5f
            if (r4 == 0) goto L45
            android.window.OnBackInvokedCallback r0 = r3.i0
            if (r0 == 0) goto L45
            androidx.appcompat.app.y.c(r4, r0)
            r3.i0 = r2
        L45:
            java.lang.Object r4 = r3.f273j
            boolean r0 = r4 instanceof android.app.Activity
            if (r0 == 0) goto L5a
            android.app.Activity r4 = (android.app.Activity) r4
            android.view.Window r0 = r4.getWindow()
            if (r0 == 0) goto L5a
            android.window.OnBackInvokedDispatcher r4 = androidx.appcompat.app.y.a(r4)
            r3.f272h0 = r4
            goto L5c
        L5a:
            r3.f272h0 = r2
        L5c:
            r3.J()
        L5f:
            return
        L60:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            r4.<init>(r1)
            throw r4
        L66:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            r4.<init>(r1)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.g0.o(android.view.Window):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009a  */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r8v3 */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.view.View onCreateView(android.view.View r18, java.lang.String r19, android.content.Context r20, android.util.AttributeSet r21) {
        /*
            Method dump skipped, instructions count: 738
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.g0.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    public final void q(int i6, f0 f0Var, k.l lVar) {
        if (lVar == null) {
            if (f0Var == null && i6 >= 0) {
                f0[] f0VarArr = this.M;
                if (i6 < f0VarArr.length) {
                    f0Var = f0VarArr[i6];
                }
            }
            if (f0Var != null) {
                lVar = f0Var.f253h;
            }
        }
        if ((f0Var == null || f0Var.f258m) && !this.R) {
            z zVar = this.f276m;
            Window.Callback callback = this.f275l.getCallback();
            zVar.getClass();
            try {
                zVar.f388e = true;
                callback.onPanelClosed(i6, lVar);
            } finally {
                zVar.f388e = false;
            }
        }
    }

    public final void r(k.l lVar) {
        androidx.appcompat.widget.k kVar;
        if (this.L) {
            return;
        }
        this.L = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f281r;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((v3) actionBarOverlayLayout.f445e).f862a.f630a;
        if (actionMenuView != null && (kVar = actionMenuView.f471t) != null) {
            kVar.c();
            androidx.appcompat.widget.e eVar = kVar.f758u;
            if (eVar != null && eVar.b()) {
                eVar.f7674i.dismiss();
            }
        }
        Window.Callback callback = this.f275l.getCallback();
        if (callback != null && !this.R) {
            callback.onPanelClosed(108, lVar);
        }
        this.L = false;
    }

    public final void s(f0 f0Var, boolean z7) {
        d0 d0Var;
        i1 i1Var;
        if (z7 && f0Var.f248a == 0 && (i1Var = this.f281r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) i1Var;
            actionBarOverlayLayout.k();
            if (((v3) actionBarOverlayLayout.f445e).f862a.p()) {
                r(f0Var.f253h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f274k.getSystemService("window");
        if (windowManager != null && f0Var.f258m && (d0Var = f0Var.f251e) != null) {
            windowManager.removeView(d0Var);
            if (z7) {
                q(f0Var.f248a, f0Var, null);
            }
        }
        f0Var.f256k = false;
        f0Var.f257l = false;
        f0Var.f258m = false;
        f0Var.f = null;
        f0Var.f259n = true;
        if (this.N == f0Var) {
            this.N = null;
        }
        if (f0Var.f248a == 0) {
            J();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x00f2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean u(android.view.KeyEvent r7) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.g0.u(android.view.KeyEvent):boolean");
    }

    public final void v(int i6) {
        f0 f0VarA = A(i6);
        if (f0VarA.f253h != null) {
            Bundle bundle = new Bundle();
            f0VarA.f253h.u(bundle);
            if (bundle.size() > 0) {
                f0VarA.f261p = bundle;
            }
            f0VarA.f253h.y();
            f0VarA.f253h.clear();
        }
        f0VarA.f260o = true;
        f0VarA.f259n = true;
        if ((i6 == 108 || i6 == 0) && this.f281r != null) {
            f0 f0VarA2 = A(0);
            f0VarA2.f256k = false;
            H(f0VarA2, null);
        }
    }

    public final void w() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ViewGroup viewGroup;
        int i6 = 1;
        int i10 = 0;
        if (this.A) {
            return;
        }
        int[] iArr = e.a.f6355k;
        Context context = this.f274k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(117)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(126, false)) {
            g(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(117, false)) {
            g(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(118, false)) {
            g(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(119, false)) {
            g(10);
        }
        this.J = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        x();
        this.f275l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.K) {
            viewGroup = this.I ? (ViewGroup) layoutInflaterFrom.inflate(com.p2elite.brtv2.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(com.p2elite.brtv2.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.J) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(com.p2elite.brtv2.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.H = false;
            this.G = false;
        } else if (this.G) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.p2elite.brtv2.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new j.d(context, typedValue.resourceId) : context).inflate(com.p2elite.brtv2.R.layout.abc_screen_toolbar, (ViewGroup) null);
            i1 i1Var = (i1) viewGroup.findViewById(com.p2elite.brtv2.R.id.decor_content_parent);
            this.f281r = i1Var;
            i1Var.setWindowCallback(this.f275l.getCallback());
            if (this.H) {
                ((ActionBarOverlayLayout) this.f281r).h(109);
            }
            if (this.E) {
                ((ActionBarOverlayLayout) this.f281r).h(2);
            }
            if (this.F) {
                ((ActionBarOverlayLayout) this.f281r).h(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.G + ", windowActionBarOverlay: " + this.H + ", android:windowIsFloating: " + this.J + ", windowActionModeOverlay: " + this.I + ", windowNoTitle: " + this.K + " }");
        }
        s sVar = new s(this, i10);
        WeakHashMap weakHashMap = n0.s0.f8353a;
        n0.g0.u(viewGroup, sVar);
        if (this.f281r == null) {
            this.C = (TextView) viewGroup.findViewById(com.p2elite.brtv2.R.id.title);
        }
        Method method = c4.f678a;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, null);
        } catch (IllegalAccessException e5) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e5);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e10) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e10);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.p2elite.brtv2.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f275l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f275l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new s(this, i6));
        this.B = viewGroup;
        Object obj = this.f273j;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f280q;
        if (!TextUtils.isEmpty(title)) {
            i1 i1Var2 = this.f281r;
            if (i1Var2 != null) {
                i1Var2.setWindowTitle(title);
            } else {
                l5.a aVar = this.f278o;
                if (aVar != null) {
                    aVar.R(title);
                } else {
                    TextView textView = this.C;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.B.findViewById(R.id.content);
        View decorView = this.f275l.getDecorView();
        contentFrameLayout2.f545g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        WeakHashMap weakHashMap2 = n0.s0.f8353a;
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(122)) {
            typedArrayObtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(123)) {
            typedArrayObtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(120)) {
            typedArrayObtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(121)) {
            typedArrayObtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.A = true;
        f0 f0VarA = A(0);
        if (this.R || f0VarA.f253h != null) {
            return;
        }
        C(108);
    }

    public final void x() {
        if (this.f275l == null) {
            Object obj = this.f273j;
            if (obj instanceof Activity) {
                o(((Activity) obj).getWindow());
            }
        }
        if (this.f275l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final c0 y(Context context) {
        if (this.X == null) {
            if (a1.b.f45e == null) {
                Context applicationContext = context.getApplicationContext();
                a1.b.f45e = new a1.b(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.X = new a0(this, a1.b.f45e);
        }
        return this.X;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
