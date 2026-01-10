package androidx.appcompat.widget;

import android.os.Handler;
import android.widget.AbsListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b2 implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListPopupWindow f672a;

    public b2(ListPopupWindow listPopupWindow) {
        this.f672a = listPopupWindow;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i6) {
        if (i6 == 1) {
            ListPopupWindow listPopupWindow = this.f672a;
            if (listPopupWindow.f583y.getInputMethodMode() == 2 || listPopupWindow.f583y.getContentView() == null) {
                return;
            }
            Handler handler = listPopupWindow.f579u;
            z1 z1Var = listPopupWindow.f575q;
            handler.removeCallbacks(z1Var);
            z1Var.run();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i6, int i10, int i11) {
    }
}
