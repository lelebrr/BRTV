package k3;

import android.view.View;
import android.view.ViewTreeObserver;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d implements ViewTreeObserver.OnDrawListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f7710a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ e f7711b;

    public d(e eVar, View view) {
        this.f7711b = eVar;
        this.f7710a = view;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        r3.n.f().post(new a3.c(this, 19, this));
    }
}
