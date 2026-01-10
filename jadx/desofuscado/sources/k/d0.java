package k;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.i2;
import androidx.appcompat.widget.s1;
import com.p2elite.brtv2.R;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d0 extends t implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: b, reason: collision with root package name */
    public final Context f7554b;

    /* renamed from: c, reason: collision with root package name */
    public final l f7555c;
    public final i d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7556e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f7557g;

    /* renamed from: h, reason: collision with root package name */
    public final i2 f7558h;

    /* renamed from: k, reason: collision with root package name */
    public u f7561k;

    /* renamed from: l, reason: collision with root package name */
    public View f7562l;

    /* renamed from: m, reason: collision with root package name */
    public View f7563m;

    /* renamed from: n, reason: collision with root package name */
    public x f7564n;

    /* renamed from: o, reason: collision with root package name */
    public ViewTreeObserver f7565o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f7566p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f7567q;

    /* renamed from: r, reason: collision with root package name */
    public int f7568r;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7570t;

    /* renamed from: i, reason: collision with root package name */
    public final androidx.appcompat.widget.q f7559i = new androidx.appcompat.widget.q(5, this);

    /* renamed from: j, reason: collision with root package name */
    public final com.google.android.material.textfield.k f7560j = new com.google.android.material.textfield.k(2, this);

    /* renamed from: s, reason: collision with root package name */
    public int f7569s = 0;

    public d0(int i6, Context context, View view, l lVar, boolean z7) {
        this.f7554b = context;
        this.f7555c = lVar;
        this.f7556e = z7;
        this.d = new i(lVar, LayoutInflater.from(context), z7, R.layout.abc_popup_menu_item_layout);
        this.f7557g = i6;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f7562l = view;
        this.f7558h = new i2(context, null, i6, 0);
        lVar.b(this, context);
    }

    @Override // k.c0
    public final void a() {
        View view;
        if (c()) {
            return;
        }
        if (this.f7566p || (view = this.f7562l) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.f7563m = view;
        i2 i2Var = this.f7558h;
        i2Var.f583y.setOnDismissListener(this);
        i2Var.f574p = this;
        i2Var.f582x = true;
        i2Var.f583y.setFocusable(true);
        View view2 = this.f7563m;
        boolean z7 = this.f7565o == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f7565o = viewTreeObserver;
        if (z7) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f7559i);
        }
        view2.addOnAttachStateChangeListener(this.f7560j);
        i2Var.f573o = view2;
        i2Var.f570l = this.f7569s;
        boolean z10 = this.f7567q;
        Context context = this.f7554b;
        i iVar = this.d;
        if (!z10) {
            this.f7568r = t.o(iVar, context, this.f);
            this.f7567q = true;
        }
        i2Var.r(this.f7568r);
        i2Var.f583y.setInputMethodMode(2);
        Rect rect = this.f7666a;
        i2Var.f581w = rect != null ? new Rect(rect) : null;
        i2Var.a();
        s1 s1Var = i2Var.f563c;
        s1Var.setOnKeyListener(this);
        if (this.f7570t) {
            l lVar = this.f7555c;
            if (lVar.f7619m != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) s1Var, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(lVar.f7619m);
                }
                frameLayout.setEnabled(false);
                s1Var.addHeaderView(frameLayout, null, false);
            }
        }
        i2Var.q(iVar);
        i2Var.a();
    }

    @Override // k.y
    public final void b(l lVar, boolean z7) {
        if (lVar != this.f7555c) {
            return;
        }
        dismiss();
        x xVar = this.f7564n;
        if (xVar != null) {
            xVar.b(lVar, z7);
        }
    }

    @Override // k.c0
    public final boolean c() {
        return !this.f7566p && this.f7558h.f583y.isShowing();
    }

    @Override // k.c0
    public final void dismiss() {
        if (c()) {
            this.f7558h.dismiss();
        }
    }

    @Override // k.y
    public final boolean e(e0 e0Var) {
        if (e0Var.hasVisibleItems()) {
            View view = this.f7563m;
            w wVar = new w(this.f7557g, this.f7554b, view, e0Var, this.f7556e);
            x xVar = this.f7564n;
            wVar.f7673h = xVar;
            t tVar = wVar.f7674i;
            if (tVar != null) {
                tVar.i(xVar);
            }
            boolean zW = t.w(e0Var);
            wVar.f7672g = zW;
            t tVar2 = wVar.f7674i;
            if (tVar2 != null) {
                tVar2.q(zW);
            }
            wVar.f7675j = this.f7561k;
            this.f7561k = null;
            this.f7555c.c(false);
            i2 i2Var = this.f7558h;
            int width = i2Var.f;
            int iO = i2Var.o();
            int i6 = this.f7569s;
            View view2 = this.f7562l;
            WeakHashMap weakHashMap = s0.f8353a;
            if ((Gravity.getAbsoluteGravity(i6, view2.getLayoutDirection()) & 7) == 5) {
                width += this.f7562l.getWidth();
            }
            if (!wVar.b()) {
                if (wVar.f7671e != null) {
                    wVar.d(width, iO, true, true);
                }
            }
            x xVar2 = this.f7564n;
            if (xVar2 != null) {
                xVar2.f(e0Var);
            }
            return true;
        }
        return false;
    }

    @Override // k.c0
    public final s1 h() {
        return this.f7558h.f563c;
    }

    @Override // k.y
    public final void i(x xVar) {
        this.f7564n = xVar;
    }

    @Override // k.y
    public final void j(boolean z7) {
        this.f7567q = false;
        i iVar = this.d;
        if (iVar != null) {
            iVar.notifyDataSetChanged();
        }
    }

    @Override // k.y
    public final boolean l() {
        return false;
    }

    @Override // k.y
    public final Parcelable m() {
        return null;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f7566p = true;
        this.f7555c.c(true);
        ViewTreeObserver viewTreeObserver = this.f7565o;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f7565o = this.f7563m.getViewTreeObserver();
            }
            this.f7565o.removeGlobalOnLayoutListener(this.f7559i);
            this.f7565o = null;
        }
        this.f7563m.removeOnAttachStateChangeListener(this.f7560j);
        u uVar = this.f7561k;
        if (uVar != null) {
            uVar.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i6, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i6 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // k.t
    public final void p(View view) {
        this.f7562l = view;
    }

    @Override // k.t
    public final void q(boolean z7) {
        this.d.f7606c = z7;
    }

    @Override // k.t
    public final void r(int i6) {
        this.f7569s = i6;
    }

    @Override // k.t
    public final void s(int i6) {
        this.f7558h.f = i6;
    }

    @Override // k.t
    public final void t(PopupWindow.OnDismissListener onDismissListener) {
        this.f7561k = (u) onDismissListener;
    }

    @Override // k.t
    public final void u(boolean z7) {
        this.f7570t = z7;
    }

    @Override // k.t
    public final void v(int i6) {
        this.f7558h.j(i6);
    }

    @Override // k.y
    public final void g(Parcelable parcelable) {
    }

    @Override // k.t
    public final void n(l lVar) {
    }
}
