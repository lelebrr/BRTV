package androidx.leanback.widget;

import android.view.KeyEvent;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class r0 implements TextView.OnEditorActionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchBar f1917a;

    public r0(SearchBar searchBar) {
        this.f1917a = searchBar;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i6, KeyEvent keyEvent) {
        SearchBar searchBar = this.f1917a;
        if (3 == i6 || i6 == 0) {
            searchBar.getClass();
        }
        if (1 == i6) {
            searchBar.getClass();
        }
        if (2 != i6) {
            return false;
        }
        searchBar.f1741i.hideSoftInputFromWindow(searchBar.f1735a.getWindowToken(), 0);
        searchBar.f1740h.postDelayed(new a(2, this), 500L);
        return true;
    }
}
