package androidx.appcompat.app;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.q3;
import androidx.appcompat.widget.v3;
import com.p2elite.brtv2.R;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s0 extends l5.a {

    /* renamed from: r, reason: collision with root package name */
    public final v3 f356r;

    /* renamed from: s, reason: collision with root package name */
    public final z f357s;

    /* renamed from: t, reason: collision with root package name */
    public final q0 f358t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f359u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f360v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f361w;

    /* renamed from: x, reason: collision with root package name */
    public final ArrayList f362x = new ArrayList();

    /* renamed from: y, reason: collision with root package name */
    public final a.f f363y = new a.f(1, this);

    public s0(Toolbar toolbar, CharSequence charSequence, z zVar) {
        q0 q0Var = new q0(this);
        v3 v3Var = new v3(toolbar, false);
        this.f356r = v3Var;
        zVar.getClass();
        this.f357s = zVar;
        v3Var.f870k = zVar;
        toolbar.setOnMenuItemClickListener(q0Var);
        if (!v3Var.f866g) {
            v3Var.f867h = charSequence;
            if ((v3Var.f863b & 8) != 0) {
                Toolbar toolbar2 = v3Var.f862a;
                toolbar2.setTitle(charSequence);
                if (v3Var.f866g) {
                    n0.s0.r(toolbar2.getRootView(), charSequence);
                }
            }
        }
        this.f358t = new q0(this);
    }

    @Override // l5.a
    public final void C() {
        this.f356r.f862a.removeCallbacks(this.f363y);
    }

    @Override // l5.a
    public final boolean F(int i6, KeyEvent keyEvent) {
        Menu menuV = V();
        if (menuV == null) {
            return false;
        }
        menuV.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuV.performShortcut(i6, keyEvent, 0);
    }

    @Override // l5.a
    public final boolean G(KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1) {
            H();
        }
        return true;
    }

    @Override // l5.a
    public final boolean H() {
        return this.f356r.f862a.v();
    }

    @Override // l5.a
    public final void K(boolean z7) {
        v3 v3Var = this.f356r;
        v3Var.a((v3Var.f863b & (-5)) | 4);
    }

    @Override // l5.a
    public final void L() {
        v3 v3Var = this.f356r;
        Drawable drawableH = com.bumptech.glide.c.h(v3Var.f862a.getContext(), R.drawable.quantum_ic_keyboard_arrow_down_white_36);
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
    public final void O(String str) {
        this.f356r.b(str);
    }

    @Override // l5.a
    public final void P(String str) {
        v3 v3Var = this.f356r;
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
        v3 v3Var = this.f356r;
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

    public final Menu V() {
        boolean z7 = this.f360v;
        v3 v3Var = this.f356r;
        if (!z7) {
            r0 r0Var = new r0(0, this);
            q0 q0Var = new q0(this);
            Toolbar toolbar = v3Var.f862a;
            toolbar.N = r0Var;
            toolbar.O = q0Var;
            ActionMenuView actionMenuView = toolbar.f630a;
            if (actionMenuView != null) {
                actionMenuView.f472u = r0Var;
                actionMenuView.f473v = q0Var;
            }
            this.f360v = true;
        }
        return v3Var.f862a.getMenu();
    }

    @Override // l5.a
    public final boolean h() {
        androidx.appcompat.widget.k kVar;
        ActionMenuView actionMenuView = this.f356r.f862a.f630a;
        return (actionMenuView == null || (kVar = actionMenuView.f471t) == null || !kVar.c()) ? false : true;
    }

    @Override // l5.a
    public final boolean i() {
        k.n nVar;
        q3 q3Var = this.f356r.f862a.M;
        if (q3Var == null || (nVar = q3Var.f814b) == null) {
            return false;
        }
        if (q3Var == null) {
            nVar = null;
        }
        if (nVar == null) {
            return true;
        }
        nVar.collapseActionView();
        return true;
    }

    @Override // l5.a
    public final void r(boolean z7) {
        if (z7 == this.f361w) {
            return;
        }
        this.f361w = z7;
        ArrayList arrayList = this.f362x;
        if (arrayList.size() > 0) {
            throw a.e.k(0, arrayList);
        }
    }

    @Override // l5.a
    public final int u() {
        return this.f356r.f863b;
    }

    @Override // l5.a
    public final Context v() {
        return this.f356r.f862a.getContext();
    }

    @Override // l5.a
    public final boolean w() {
        v3 v3Var = this.f356r;
        Toolbar toolbar = v3Var.f862a;
        a.f fVar = this.f363y;
        toolbar.removeCallbacks(fVar);
        Toolbar toolbar2 = v3Var.f862a;
        WeakHashMap weakHashMap = n0.s0.f8353a;
        toolbar2.postOnAnimation(fVar);
        return true;
    }

    @Override // l5.a
    public final void B() {
    }

    @Override // l5.a
    public final void J(boolean z7) {
    }

    @Override // l5.a
    public final void N(boolean z7) {
    }
}
