package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class h2 extends s1 {

    /* renamed from: m, reason: collision with root package name */
    public final int f731m;

    /* renamed from: n, reason: collision with root package name */
    public final int f732n;

    /* renamed from: o, reason: collision with root package name */
    public d2 f733o;

    /* renamed from: p, reason: collision with root package name */
    public k.n f734p;

    public h2(Context context, boolean z7) {
        super(context, z7);
        if (1 == g2.a(context.getResources().getConfiguration())) {
            this.f731m = 21;
            this.f732n = 22;
        } else {
            this.f731m = 22;
            this.f732n = 21;
        }
    }

    @Override // androidx.appcompat.widget.s1, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        k.i iVar;
        int headersCount;
        int iPointToPosition;
        int i6;
        if (this.f733o != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                headersCount = headerViewListAdapter.getHeadersCount();
                iVar = (k.i) headerViewListAdapter.getWrappedAdapter();
            } else {
                iVar = (k.i) adapter;
                headersCount = 0;
            }
            k.n nVarB = (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i6 = iPointToPosition - headersCount) < 0 || i6 >= iVar.getCount()) ? null : iVar.getItem(i6);
            k.n nVar = this.f734p;
            if (nVar != nVarB) {
                k.l lVar = iVar.f7604a;
                if (nVar != null) {
                    this.f733o.k(lVar, nVar);
                }
                this.f734p = nVarB;
                if (nVarB != null) {
                    this.f733o.d(lVar, nVarB);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i6, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i6 == this.f731m) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i6 != this.f732n) {
            return super.onKeyDown(i6, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (k.i) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (k.i) adapter).f7604a.c(false);
        return true;
    }

    public void setHoverListener(d2 d2Var) {
        this.f733o = d2Var;
    }

    @Override // androidx.appcompat.widget.s1, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
