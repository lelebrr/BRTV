package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public class e0 extends l implements SubMenu {
    public final n A;

    /* renamed from: z, reason: collision with root package name */
    public final l f7574z;

    public e0(Context context, l lVar, n nVar) {
        super(context);
        this.f7574z = lVar;
        this.A = nVar;
    }

    @Override // k.l
    public final boolean d(n nVar) {
        return this.f7574z.d(nVar);
    }

    @Override // k.l
    public final boolean e(l lVar, MenuItem menuItem) {
        return super.e(lVar, menuItem) || this.f7574z.e(lVar, menuItem);
    }

    @Override // k.l
    public final boolean f(n nVar) {
        return this.f7574z.f(nVar);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.A;
    }

    @Override // k.l
    public final String j() {
        n nVar = this.A;
        int i6 = nVar != null ? nVar.f7634a : 0;
        if (i6 == 0) {
            return null;
        }
        return a.e.n(i6, "android:menu:actionviewstates:");
    }

    @Override // k.l
    public final l k() {
        return this.f7574z.k();
    }

    @Override // k.l
    public final boolean m() {
        return this.f7574z.m();
    }

    @Override // k.l
    public final boolean n() {
        return this.f7574z.n();
    }

    @Override // k.l
    public final boolean o() {
        return this.f7574z.o();
    }

    @Override // k.l, android.view.Menu
    public final void setGroupDividerEnabled(boolean z7) {
        this.f7574z.setGroupDividerEnabled(z7);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        w(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        w(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        w(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.A.setIcon(drawable);
        return this;
    }

    @Override // k.l, android.view.Menu
    public final void setQwertyMode(boolean z7) {
        this.f7574z.setQwertyMode(z7);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i6) {
        w(0, null, i6, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i6) {
        w(i6, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i6) {
        this.A.setIcon(i6);
        return this;
    }
}
