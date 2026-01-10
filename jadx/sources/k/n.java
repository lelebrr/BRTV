package k;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import java.util.ArrayList;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class n implements h0.a {
    public n0.c A;
    public MenuItem.OnActionExpandListener B;

    /* renamed from: a, reason: collision with root package name */
    public final int f7634a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7635b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7636c;
    public final int d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f7637e;
    public CharSequence f;

    /* renamed from: g, reason: collision with root package name */
    public Intent f7638g;

    /* renamed from: h, reason: collision with root package name */
    public char f7639h;

    /* renamed from: j, reason: collision with root package name */
    public char f7641j;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f7643l;

    /* renamed from: n, reason: collision with root package name */
    public final l f7645n;

    /* renamed from: o, reason: collision with root package name */
    public e0 f7646o;

    /* renamed from: p, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f7647p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence f7648q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f7649r;

    /* renamed from: y, reason: collision with root package name */
    public int f7656y;

    /* renamed from: z, reason: collision with root package name */
    public View f7657z;

    /* renamed from: i, reason: collision with root package name */
    public int f7640i = 4096;

    /* renamed from: k, reason: collision with root package name */
    public int f7642k = 4096;

    /* renamed from: m, reason: collision with root package name */
    public int f7644m = 0;

    /* renamed from: s, reason: collision with root package name */
    public ColorStateList f7650s = null;

    /* renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f7651t = null;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7652u = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f7653v = false;

    /* renamed from: w, reason: collision with root package name */
    public boolean f7654w = false;

    /* renamed from: x, reason: collision with root package name */
    public int f7655x = 16;
    public boolean C = false;

    public n(l lVar, int i6, int i10, int i11, int i12, CharSequence charSequence, int i13) {
        this.f7645n = lVar;
        this.f7634a = i10;
        this.f7635b = i6;
        this.f7636c = i11;
        this.d = i12;
        this.f7637e = charSequence;
        this.f7656y = i13;
    }

    public static void c(StringBuilder sb, int i6, int i10, String str) {
        if ((i6 & i10) == i10) {
            sb.append(str);
        }
    }

    @Override // h0.a
    public final n0.c a() {
        return this.A;
    }

    @Override // h0.a
    public final h0.a b(n0.c cVar) {
        n0.c cVar2 = this.A;
        if (cVar2 != null) {
            cVar2.f8300a = null;
        }
        this.f7657z = null;
        this.A = cVar;
        this.f7645n.p(true);
        n0.c cVar3 = this.A;
        if (cVar3 != null) {
            cVar3.d(new j7.c(2, this));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f7656y & 8) == 0) {
            return false;
        }
        if (this.f7657z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f7645n.d(this);
        }
        return false;
    }

    public final Drawable d(Drawable drawable) {
        if (drawable != null && this.f7654w && (this.f7652u || this.f7653v)) {
            drawable = n5.d.W(drawable).mutate();
            if (this.f7652u) {
                g0.a.h(drawable, this.f7650s);
            }
            if (this.f7653v) {
                g0.a.i(drawable, this.f7651t);
            }
            this.f7654w = false;
        }
        return drawable;
    }

    public final boolean e() {
        n0.c cVar;
        if ((this.f7656y & 8) == 0) {
            return false;
        }
        if (this.f7657z == null && (cVar = this.A) != null) {
            this.f7657z = cVar.b(this);
        }
        return this.f7657z != null;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!e()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f7645n.f(this);
        }
        return false;
    }

    public final boolean f() {
        return (this.f7655x & 32) == 32;
    }

    public final void g(boolean z7) {
        this.f7655x = (z7 ? 4 : 0) | (this.f7655x & (-5));
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.f7657z;
        if (view != null) {
            return view;
        }
        n0.c cVar = this.A;
        if (cVar == null) {
            return null;
        }
        View viewB = cVar.b(this);
        this.f7657z = viewB;
        return viewB;
    }

    @Override // h0.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f7642k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f7641j;
    }

    @Override // h0.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f7648q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f7635b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f7643l;
        if (drawable != null) {
            return d(drawable);
        }
        int i6 = this.f7644m;
        if (i6 == 0) {
            return null;
        }
        Drawable drawableH = com.bumptech.glide.c.h(this.f7645n.f7609a, i6);
        this.f7644m = 0;
        this.f7643l = drawableH;
        return d(drawableH);
    }

    @Override // h0.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f7650s;
    }

    @Override // h0.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f7651t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f7638g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f7634a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // h0.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f7640i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f7639h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f7636c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f7646o;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f7637e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f;
        return charSequence != null ? charSequence : this.f7637e;
    }

    @Override // h0.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f7649r;
    }

    public final void h(boolean z7) {
        if (z7) {
            this.f7655x |= 32;
        } else {
            this.f7655x &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f7646o != null;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f7655x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f7655x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f7655x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        n0.c cVar = this.A;
        return (cVar == null || !cVar.c()) ? (this.f7655x & 8) == 0 : (this.f7655x & 8) == 0 && this.A.a();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i6;
        this.f7657z = view;
        this.A = null;
        if (view != null && view.getId() == -1 && (i6 = this.f7634a) > 0) {
            view.setId(i6);
        }
        l lVar = this.f7645n;
        lVar.f7617k = true;
        lVar.p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c5) {
        if (this.f7641j == c5) {
            return this;
        }
        this.f7641j = Character.toLowerCase(c5);
        this.f7645n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z7) {
        int i6 = this.f7655x;
        int i10 = (z7 ? 1 : 0) | (i6 & (-2));
        this.f7655x = i10;
        if (i6 != i10) {
            this.f7645n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z7) {
        int i6 = this.f7655x;
        if ((i6 & 4) != 0) {
            l lVar = this.f7645n;
            lVar.getClass();
            ArrayList arrayList = lVar.f;
            int size = arrayList.size();
            lVar.y();
            for (int i10 = 0; i10 < size; i10++) {
                n nVar = (n) arrayList.get(i10);
                if (nVar.f7635b == this.f7635b && (nVar.f7655x & 4) != 0 && nVar.isCheckable()) {
                    boolean z10 = nVar == this;
                    int i11 = nVar.f7655x;
                    int i12 = (z10 ? 2 : 0) | (i11 & (-3));
                    nVar.f7655x = i12;
                    if (i11 != i12) {
                        nVar.f7645n.p(false);
                    }
                }
            }
            lVar.x();
        } else {
            int i13 = (i6 & (-3)) | (z7 ? 2 : 0);
            this.f7655x = i13;
            if (i6 != i13) {
                this.f7645n.p(false);
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z7) {
        if (z7) {
            this.f7655x |= 16;
        } else {
            this.f7655x &= -17;
        }
        this.f7645n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f7644m = 0;
        this.f7643l = drawable;
        this.f7654w = true;
        this.f7645n.p(false);
        return this;
    }

    @Override // h0.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f7650s = colorStateList;
        this.f7652u = true;
        this.f7654w = true;
        this.f7645n.p(false);
        return this;
    }

    @Override // h0.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f7651t = mode;
        this.f7653v = true;
        this.f7654w = true;
        this.f7645n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f7638g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c5) {
        if (this.f7639h == c5) {
            return this;
        }
        this.f7639h = c5;
        this.f7645n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f7647p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c5, char c8) {
        this.f7639h = c5;
        this.f7641j = Character.toLowerCase(c8);
        this.f7645n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i6) {
        int i10 = i6 & 3;
        if (i10 != 0 && i10 != 1 && i10 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f7656y = i6;
        l lVar = this.f7645n;
        lVar.f7617k = true;
        lVar.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i6) {
        setShowAsAction(i6);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f7637e = charSequence;
        this.f7645n.p(false);
        e0 e0Var = this.f7646o;
        if (e0Var != null) {
            e0Var.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        this.f7645n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z7) {
        int i6 = this.f7655x;
        int i10 = (z7 ? 0 : 8) | (i6 & (-9));
        this.f7655x = i10;
        if (i6 != i10) {
            l lVar = this.f7645n;
            lVar.f7614h = true;
            lVar.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f7637e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // h0.a, android.view.MenuItem
    public final h0.a setContentDescription(CharSequence charSequence) {
        this.f7648q = charSequence;
        this.f7645n.p(false);
        return this;
    }

    @Override // h0.a, android.view.MenuItem
    public final h0.a setTooltipText(CharSequence charSequence) {
        this.f7649r = charSequence;
        this.f7645n.p(false);
        return this;
    }

    @Override // h0.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c5, int i6) {
        if (this.f7641j == c5 && this.f7642k == i6) {
            return this;
        }
        this.f7641j = Character.toLowerCase(c5);
        this.f7642k = KeyEvent.normalizeMetaState(i6);
        this.f7645n.p(false);
        return this;
    }

    @Override // h0.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c5, int i6) {
        if (this.f7639h == c5 && this.f7640i == i6) {
            return this;
        }
        this.f7639h = c5;
        this.f7640i = KeyEvent.normalizeMetaState(i6);
        this.f7645n.p(false);
        return this;
    }

    @Override // h0.a, android.view.MenuItem
    public final MenuItem setShortcut(char c5, char c8, int i6, int i10) {
        this.f7639h = c5;
        this.f7640i = KeyEvent.normalizeMetaState(i6);
        this.f7641j = Character.toLowerCase(c8);
        this.f7642k = KeyEvent.normalizeMetaState(i10);
        this.f7645n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i6) {
        this.f7643l = null;
        this.f7644m = i6;
        this.f7654w = true;
        this.f7645n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i6) {
        setTitle(this.f7645n.f7609a.getString(i6));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i6) {
        int i10;
        Context context = this.f7645n.f7609a;
        View viewInflate = LayoutInflater.from(context).inflate(i6, (ViewGroup) new LinearLayout(context), false);
        this.f7657z = viewInflate;
        this.A = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i10 = this.f7634a) > 0) {
            viewInflate.setId(i10);
        }
        l lVar = this.f7645n;
        lVar.f7617k = true;
        lVar.p(true);
        return this;
    }
}
