package k;

import android.view.MenuItem;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f7663a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ s f7664b;

    public r(s sVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f7664b = sVar;
        this.f7663a = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f7663a.onMenuItemClick(this.f7664b.g(menuItem));
    }
}
