package k;

import android.widget.PopupWindow;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class u implements PopupWindow.OnDismissListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ w f7667a;

    public u(w wVar) {
        this.f7667a = wVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f7667a.c();
    }
}
