package k;

import android.view.MenuItem;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements MenuItem.OnActionExpandListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f7661a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f7662b;

    public q(s sVar, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f7662b = sVar;
        this.f7661a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f7661a.onMenuItemActionCollapse(this.f7662b.g(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f7661a.onMenuItemActionExpand(this.f7662b.g(menuItem));
    }
}
