package k;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public abstract class t implements c0, y, AdapterView.OnItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    public Rect f7666a;

    public static int o(ListAdapter listAdapter, Context context, int i6) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        FrameLayout frameLayout = null;
        View view = null;
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < count; i12++) {
            int itemViewType = listAdapter.getItemViewType(i12);
            if (itemViewType != i11) {
                view = null;
                i11 = itemViewType;
            }
            if (frameLayout == null) {
                frameLayout = new FrameLayout(context);
            }
            view = listAdapter.getView(i12, view, frameLayout);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i6) {
                return i6;
            }
            if (measuredWidth > i10) {
                i10 = measuredWidth;
            }
        }
        return i10;
    }

    public static boolean w(l lVar) {
        int size = lVar.f.size();
        for (int i6 = 0; i6 < size; i6++) {
            MenuItem item = lVar.getItem(i6);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    @Override // k.y
    public final boolean d(n nVar) {
        return false;
    }

    @Override // k.y
    public final boolean f(n nVar) {
        return false;
    }

    @Override // k.y
    public final int getId() {
        return 0;
    }

    public abstract void n(l lVar);

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i6, long j10) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        (listAdapter instanceof HeaderViewListAdapter ? (i) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (i) listAdapter).f7604a.q((MenuItem) listAdapter.getItem(i6), this, !(this instanceof f) ? 0 : 4);
    }

    public abstract void p(View view);

    public abstract void q(boolean z7);

    public abstract void r(int i6);

    public abstract void s(int i6);

    public abstract void t(PopupWindow.OnDismissListener onDismissListener);

    public abstract void u(boolean z7);

    public abstract void v(int i6);

    @Override // k.y
    public final void k(Context context, l lVar) {
    }
}
