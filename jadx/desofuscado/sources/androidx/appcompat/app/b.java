package androidx.appcompat.app;

import android.view.View;
import android.widget.AbsListView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements AbsListView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f225a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f226b;

    public b(View view, View view2) {
        this.f225a = view;
        this.f226b = view2;
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScroll(AbsListView absListView, int i6, int i10, int i11) {
        h.b(absListView, this.f225a, this.f226b);
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public final void onScrollStateChanged(AbsListView absListView, int i6) {
    }
}
