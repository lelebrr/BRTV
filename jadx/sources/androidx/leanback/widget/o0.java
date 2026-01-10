package androidx.leanback.widget;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o0 implements View.OnFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1867a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f1868b;

    public /* synthetic */ o0(SearchBar searchBar, int i6) {
        this.f1867a = i6;
        this.f1868b = searchBar;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z7) {
        switch (this.f1867a) {
            case 0:
                SearchBar searchBar = this.f1868b;
                if (z7) {
                    searchBar.f1740h.post(new p0(searchBar, 1));
                } else {
                    searchBar.f1741i.hideSoftInputFromWindow(searchBar.f1735a.getWindowToken(), 0);
                }
                searchBar.d(z7);
                break;
            default:
                SearchBar searchBar2 = this.f1868b;
                if (z7) {
                    searchBar2.f1741i.hideSoftInputFromWindow(searchBar2.f1735a.getWindowToken(), 0);
                    if (searchBar2.f1742j) {
                        searchBar2.a();
                        searchBar2.f1742j = false;
                    }
                } else {
                    searchBar2.b();
                }
                searchBar2.d(z7);
                break;
        }
    }
}
