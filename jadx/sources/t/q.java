package t;

import android.view.ViewGroup;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f10010a;

    public q(ViewGroup viewGroup) {
        this.f10010a = viewGroup;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10010a.setNestedScrollingEnabled(true);
    }
}
