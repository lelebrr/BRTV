package androidx.appcompat.widget;

import android.view.KeyEvent;
import android.widget.TextView;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v2 implements TextView.OnEditorActionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchView f861a;

    public v2(SearchView searchView) {
        this.f861a = searchView;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i6, KeyEvent keyEvent) {
        this.f861a.s();
        return true;
    }
}
