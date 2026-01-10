package androidx.appcompat.app;

import android.R;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.j1;
import androidx.appcompat.widget.q3;
import androidx.appcompat.widget.u3;
import androidx.appcompat.widget.v3;
import java.util.ArrayList;
import java.util.WeakHashMap;
import n0.a1;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class x0 extends l5.a implements androidx.appcompat.widget.d {
    public static final AccelerateInterpolator P = new AccelerateInterpolator();
    public static final DecelerateInterpolator Q = new DecelerateInterpolator();
    public w0 A;
    public a7.f B;
    public boolean C;
    public final ArrayList D;
    public int E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public j.j J;
    public boolean K;
    public boolean L;
    public final v0 M;
    public final v0 N;
    public final a0.b O;

    /* renamed from: r, reason: collision with root package name */
    public Context f376r;

    /* renamed from: s, reason: collision with root package name */
    public Context f377s;

    /* renamed from: t, reason: collision with root package name */
    public ActionBarOverlayLayout f378t;

    /* renamed from: u, reason: collision with root package name */
    public ActionBarContainer f379u;

    /* renamed from: v, reason: collision with root package name */
    public j1 f380v;

    /* renamed from: w, reason: collision with root package name */
    public ActionBarContextView f381w;

    /* renamed from: x, reason: collision with root package name */
    public final View f382x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f383y;

    /* renamed from: z, reason: collision with root package name */
    public w0 f384z;

    public x0(Activity activity, boolean z7) {
        new ArrayList();
        this.D = new ArrayList();
        this.E = 0;
        this.F = true;
        this.I = true;
        this.M = new v0(this, 0);
        this.N = new v0(this, 1);
        this.O = new a0.b(3, this);
        View decorView = activity.getWindow().getDecorView();
        W(decorView);
        if (z7) {
            return;
        }
        this.f382x = decorView.findViewById(R.id.content);
    }

    @Override // l5.a
    public final void B() {
        X(this.f376r.getResources().getBoolean(com.p2elite.brtv2.R.bool.abc_action_bar_embed_tabs));
    }

    @Override // l5.a
    public final boolean F(int i6, KeyEvent keyEvent) {
        k.l lVar;
        w0 w0Var = this.f384z;
        if (w0Var == null || (lVar = w0Var.d) == null) {
            return false;
        }
        lVar.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return lVar.performShortcut(i6, keyEvent, 0);
    }

    @Override // l5.a
    public final void J(boolean z7) {
        if (this.f383y) {
            return;
        }
        K(z7);
    }

    @Override // l5.a
    public final void K(boolean z7) {
        int i6 = z7 ? 4 : 0;
        v3 v3Var = (v3) this.f380v;
        int i10 = v3Var.f863b;
        this.f383y = true;
        v3Var.a((i6 & 4) | (i10 & (-5)));
    }

    @Override // l5.a
    public final void L() {
        v3 v3Var = (v3) this.f380v;
        Drawable drawableH = com.bumptech.glide.c.h(v3Var.f862a.getContext(), com.p2elite.brtv2.R.drawable.quantum_ic_keyboard_arrow_down_white_36);
        v3Var.f = drawableH;
        int i6 = v3Var.f863b & 4;
        Toolbar toolbar = v3Var.f862a;
        if (i6 == 0) {
            toolbar.setNavigationIcon((Drawable) null);
            return;
        }
        if (drawableH == null) {
            drawableH = v3Var.f874o;
        }
        toolbar.setNavigationIcon(drawableH);
    }

    @Override // l5.a
    public final void N(boolean z7) {
        j.j jVar;
        this.K = z7;
        if (z7 || (jVar = this.J) == null) {
            return;
        }
        jVar.a();
    }

    @Override // l5.a
    public final void O(String str) {
        ((v3) this.f380v).b(str);
    }

    @Override // l5.a
    public final void P(String str) {
        v3 v3Var = (v3) this.f380v;
        v3Var.f866g = true;
        v3Var.f867h = str;
        if ((v3Var.f863b & 8) != 0) {
            Toolbar toolbar = v3Var.f862a;
            toolbar.setTitle(str);
            if (v3Var.f866g) {
                n0.s0.r(toolbar.getRootView(), str);
            }
        }
    }

    @Override // l5.a
    public final void R(CharSequence charSequence) {
        v3 v3Var = (v3) this.f380v;
        if (v3Var.f866g) {
            return;
        }
        v3Var.f867h = charSequence;
        if ((v3Var.f863b & 8) != 0) {
            Toolbar toolbar = v3Var.f862a;
            toolbar.setTitle(charSequence);
            if (v3Var.f866g) {
                n0.s0.r(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // l5.a
    public final j.a T(a7.f fVar) {
        w0 w0Var = this.f384z;
        if (w0Var != null) {
            w0Var.a();
        }
        this.f378t.setHideOnContentScrollEnabled(false);
        this.f381w.e();
        w0 w0Var2 = new w0(this, this.f381w.getContext(), fVar);
        k.l lVar = w0Var2.d;
        lVar.y();
        try {
            if (!((a0.f) w0Var2.f374e.f169b).h(w0Var2, lVar)) {
                return null;
            }
            this.f384z = w0Var2;
            w0Var2.g();
            this.f381w.c(w0Var2);
            V(true);
            return w0Var2;
        } finally {
            lVar.x();
        }
    }

    public final void V(boolean z7) {
        a1 a1VarI;
        a1 a1VarI2;
        if (z7) {
            if (!this.H) {
                this.H = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f378t;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                Y(false);
            }
        } else if (this.H) {
            this.H = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f378t;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            Y(false);
        }
        ActionBarContainer actionBarContainer = this.f379u;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        if (!actionBarContainer.isLaidOut()) {
            if (z7) {
                ((v3) this.f380v).f862a.setVisibility(4);
                this.f381w.setVisibility(0);
                return;
            } else {
                ((v3) this.f380v).f862a.setVisibility(0);
                this.f381w.setVisibility(8);
                return;
            }
        }
        if (z7) {
            v3 v3Var = (v3) this.f380v;
            a1VarI = n0.s0.a(v3Var.f862a);
            a1VarI.a(0.0f);
            a1VarI.c(100L);
            a1VarI.d(new u3(v3Var, 4));
            a1VarI2 = this.f381w.i(0, 200L);
        } else {
            v3 v3Var2 = (v3) this.f380v;
            a1 a1VarA = n0.s0.a(v3Var2.f862a);
            a1VarA.a(1.0f);
            a1VarA.c(200L);
            a1VarA.d(new u3(v3Var2, 0));
            a1VarI = this.f381w.i(8, 100L);
            a1VarI2 = a1VarA;
        }
        j.j jVar = new j.j();
        ArrayList arrayList = jVar.f7410a;
        arrayList.add(a1VarI);
        View view = (View) a1VarI.f8296a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        View view2 = (View) a1VarI2.f8296a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        arrayList.add(a1VarI2);
        jVar.b();
    }

    public final void W(View view) {
        j1 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(com.p2elite.brtv2.R.id.decor_content_parent);
        this.f378t = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback callbackFindViewById = view.findViewById(com.p2elite.brtv2.R.id.action_bar);
        if (callbackFindViewById instanceof j1) {
            wrapper = (j1) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) callbackFindViewById).getWrapper();
        }
        this.f380v = wrapper;
        this.f381w = (ActionBarContextView) view.findViewById(com.p2elite.brtv2.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(com.p2elite.brtv2.R.id.action_bar_container);
        this.f379u = actionBarContainer;
        j1 j1Var = this.f380v;
        if (j1Var == null || this.f381w == null || actionBarContainer == null) {
            throw new IllegalStateException(x0.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        Context context = ((v3) j1Var).f862a.getContext();
        this.f376r = context;
        if ((((v3) this.f380v).f863b & 4) != 0) {
            this.f383y = true;
        }
        int i6 = context.getApplicationInfo().targetSdkVersion;
        this.f380v.getClass();
        X(context.getResources().getBoolean(com.p2elite.brtv2.R.bool.abc_action_bar_embed_tabs));
        TypedArray typedArrayObtainStyledAttributes = this.f376r.obtainStyledAttributes(null, e.a.f6347a, com.p2elite.brtv2.R.attr.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(14, false)) {
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f378t;
            if (!actionBarOverlayLayout2.f447h) {
                throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.L = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(12, 0);
        if (dimensionPixelSize != 0) {
            ActionBarContainer actionBarContainer2 = this.f379u;
            WeakHashMap weakHashMap = n0.s0.f8353a;
            n0.g0.s(actionBarContainer2, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void X(boolean z7) {
        if (z7) {
            this.f379u.setTabContainer(null);
            ((v3) this.f380v).getClass();
        } else {
            ((v3) this.f380v).getClass();
            this.f379u.setTabContainer(null);
        }
        this.f380v.getClass();
        ((v3) this.f380v).f862a.setCollapsible(false);
        this.f378t.setHasNonEmbeddedTabs(false);
    }

    public final void Y(boolean z7) {
        boolean z10 = this.H || !this.G;
        View view = this.f382x;
        final a0.b bVar = this.O;
        if (!z10) {
            if (this.I) {
                this.I = false;
                j.j jVar = this.J;
                if (jVar != null) {
                    jVar.a();
                }
                int i6 = this.E;
                v0 v0Var = this.M;
                if (i6 != 0 || (!this.K && !z7)) {
                    v0Var.a();
                    return;
                }
                this.f379u.setAlpha(1.0f);
                this.f379u.setTransitioning(true);
                j.j jVar2 = new j.j();
                float f = -this.f379u.getHeight();
                if (z7) {
                    this.f379u.getLocationInWindow(new int[]{0, 0});
                    f -= r12[1];
                }
                a1 a1VarA = n0.s0.a(this.f379u);
                a1VarA.e(f);
                final View view2 = (View) a1VarA.f8296a.get();
                if (view2 != null) {
                    view2.animate().setUpdateListener(bVar != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: n0.z0
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            ((View) ((androidx.appcompat.app.x0) bVar.f32b).f379u.getParent()).invalidate();
                        }
                    } : null);
                }
                boolean z11 = jVar2.f7413e;
                ArrayList arrayList = jVar2.f7410a;
                if (!z11) {
                    arrayList.add(a1VarA);
                }
                if (this.F && view != null) {
                    a1 a1VarA2 = n0.s0.a(view);
                    a1VarA2.e(f);
                    if (!jVar2.f7413e) {
                        arrayList.add(a1VarA2);
                    }
                }
                AccelerateInterpolator accelerateInterpolator = P;
                boolean z12 = jVar2.f7413e;
                if (!z12) {
                    jVar2.f7412c = accelerateInterpolator;
                }
                if (!z12) {
                    jVar2.f7411b = 250L;
                }
                if (!z12) {
                    jVar2.d = v0Var;
                }
                this.J = jVar2;
                jVar2.b();
                return;
            }
            return;
        }
        if (this.I) {
            return;
        }
        this.I = true;
        j.j jVar3 = this.J;
        if (jVar3 != null) {
            jVar3.a();
        }
        this.f379u.setVisibility(0);
        int i10 = this.E;
        v0 v0Var2 = this.N;
        if (i10 == 0 && (this.K || z7)) {
            this.f379u.setTranslationY(0.0f);
            float f3 = -this.f379u.getHeight();
            if (z7) {
                this.f379u.getLocationInWindow(new int[]{0, 0});
                f3 -= r12[1];
            }
            this.f379u.setTranslationY(f3);
            j.j jVar4 = new j.j();
            a1 a1VarA3 = n0.s0.a(this.f379u);
            a1VarA3.e(0.0f);
            final View view3 = (View) a1VarA3.f8296a.get();
            if (view3 != null) {
                view3.animate().setUpdateListener(bVar != null ? new ValueAnimator.AnimatorUpdateListener() { // from class: n0.z0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ((View) ((androidx.appcompat.app.x0) bVar.f32b).f379u.getParent()).invalidate();
                    }
                } : null);
            }
            boolean z13 = jVar4.f7413e;
            ArrayList arrayList2 = jVar4.f7410a;
            if (!z13) {
                arrayList2.add(a1VarA3);
            }
            if (this.F && view != null) {
                view.setTranslationY(f3);
                a1 a1VarA4 = n0.s0.a(view);
                a1VarA4.e(0.0f);
                if (!jVar4.f7413e) {
                    arrayList2.add(a1VarA4);
                }
            }
            DecelerateInterpolator decelerateInterpolator = Q;
            boolean z14 = jVar4.f7413e;
            if (!z14) {
                jVar4.f7412c = decelerateInterpolator;
            }
            if (!z14) {
                jVar4.f7411b = 250L;
            }
            if (!z14) {
                jVar4.d = v0Var2;
            }
            this.J = jVar4;
            jVar4.b();
        } else {
            this.f379u.setAlpha(1.0f);
            this.f379u.setTranslationY(0.0f);
            if (this.F && view != null) {
                view.setTranslationY(0.0f);
            }
            v0Var2.a();
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f378t;
        if (actionBarOverlayLayout != null) {
            WeakHashMap weakHashMap = n0.s0.f8353a;
            n0.e0.c(actionBarOverlayLayout);
        }
    }

    @Override // l5.a
    public final boolean i() {
        q3 q3Var;
        j1 j1Var = this.f380v;
        if (j1Var == null || (q3Var = ((v3) j1Var).f862a.M) == null || q3Var.f814b == null) {
            return false;
        }
        q3 q3Var2 = ((v3) j1Var).f862a.M;
        k.n nVar = q3Var2 == null ? null : q3Var2.f814b;
        if (nVar == null) {
            return true;
        }
        nVar.collapseActionView();
        return true;
    }

    @Override // l5.a
    public final void r(boolean z7) {
        if (z7 == this.C) {
            return;
        }
        this.C = z7;
        ArrayList arrayList = this.D;
        if (arrayList.size() > 0) {
            throw a.e.k(0, arrayList);
        }
    }

    @Override // l5.a
    public final int u() {
        return ((v3) this.f380v).f863b;
    }

    @Override // l5.a
    public final Context v() {
        if (this.f377s == null) {
            TypedValue typedValue = new TypedValue();
            this.f376r.getTheme().resolveAttribute(com.p2elite.brtv2.R.attr.actionBarWidgetTheme, typedValue, true);
            int i6 = typedValue.resourceId;
            if (i6 != 0) {
                this.f377s = new ContextThemeWrapper(this.f376r, i6);
            } else {
                this.f377s = this.f376r;
            }
        }
        return this.f377s;
    }

    public x0(Dialog dialog) {
        new ArrayList();
        this.D = new ArrayList();
        this.E = 0;
        this.F = true;
        this.I = true;
        this.M = new v0(this, 0);
        this.N = new v0(this, 1);
        this.O = new a0.b(3, this);
        W(dialog.getWindow().getDecorView());
    }
}
