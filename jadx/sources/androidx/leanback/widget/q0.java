package androidx.leanback.widget;

import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q0 implements TextWatcher {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ p0 f1914a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchBar f1915b;

    public q0(SearchBar searchBar, p0 p0Var) {
        this.f1915b = searchBar;
        this.f1914a = p0Var;
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
        SearchBar searchBar = this.f1915b;
        if (searchBar.f1754v) {
            return;
        }
        Handler handler = searchBar.f1740h;
        p0 p0Var = this.f1914a;
        handler.removeCallbacks(p0Var);
        handler.post(p0Var);
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i6, int i10, int i11) {
    }
}
