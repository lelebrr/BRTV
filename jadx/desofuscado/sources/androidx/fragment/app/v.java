package androidx.fragment.app;

import android.os.Handler;
import android.view.View;
import android.view.Window;
import androidx.lifecycle.a1;
import androidx.lifecycle.z0;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class v extends o9.e implements a1, a.r, c.b, m0 {
    public final FragmentActivity f;

    /* renamed from: g, reason: collision with root package name */
    public final FragmentActivity f1555g;

    /* renamed from: h, reason: collision with root package name */
    public final Handler f1556h;

    /* renamed from: i, reason: collision with root package name */
    public final k0 f1557i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ FragmentActivity f1558j;

    public v(FragmentActivity fragmentActivity) {
        this.f1558j = fragmentActivity;
        Handler handler = new Handler();
        this.f1557i = new k0();
        this.f = fragmentActivity;
        a2.a.p(fragmentActivity, "context == null");
        this.f1555g = fragmentActivity;
        this.f1556h = handler;
    }

    @Override // o9.e
    public final View B(int i6) {
        return this.f1558j.findViewById(i6);
    }

    @Override // o9.e
    public final boolean C() {
        Window window = this.f1558j.getWindow();
        return (window == null || window.peekDecorView() == null) ? false : true;
    }

    @Override // androidx.fragment.app.m0
    public final void b() {
        this.f1558j.getClass();
    }

    @Override // androidx.lifecycle.a1
    public final z0 e() {
        return this.f1558j.e();
    }

    @Override // androidx.lifecycle.w
    public final androidx.lifecycle.p f() {
        return this.f1558j.f1380s;
    }
}
