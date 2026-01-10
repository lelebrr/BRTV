package androidx.appcompat.widget;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f673a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ActionBarOverlayLayout f674b;

    public /* synthetic */ c(ActionBarOverlayLayout actionBarOverlayLayout, int i6) {
        this.f673a = i6;
        this.f674b = actionBarOverlayLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f673a) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = this.f674b;
                actionBarOverlayLayout.d();
                actionBarOverlayLayout.f462w = actionBarOverlayLayout.d.animate().translationY(0.0f).setListener(actionBarOverlayLayout.f463x);
                break;
            default:
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.f674b;
                actionBarOverlayLayout2.d();
                actionBarOverlayLayout2.f462w = actionBarOverlayLayout2.d.animate().translationY(-actionBarOverlayLayout2.d.getHeight()).setListener(actionBarOverlayLayout2.f463x);
                break;
        }
    }
}
