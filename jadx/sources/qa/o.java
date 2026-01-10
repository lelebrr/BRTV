package qa;

import android.app.Activity;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f9431a;

    /* renamed from: b, reason: collision with root package name */
    public final w8.i f9432b;

    public o(Activity activity) {
        j9.i.f(activity, a2.a.s("btadNX3f7w==\n", "DbnzQRinmyI=\n"));
        this.f9431a = activity;
        this.f9432b = new w8.i(new a(2, this));
    }

    public final void a() {
        l lVarB = b();
        if (lVarB.d == null || !lVarB.a().isShowing()) {
            return;
        }
        lVarB.a().dismiss();
    }

    public final l b() {
        return (l) this.f9432b.getValue();
    }
}
