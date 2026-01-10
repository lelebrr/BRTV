package androidx.leanback.widget;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class s0 implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchBar f1920a;

    public s0(SearchBar searchBar) {
        this.f1920a = searchBar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        SearchBar searchBar = this.f1920a;
        if (searchBar.f1754v) {
            searchBar.b();
        } else {
            searchBar.a();
        }
    }
}
