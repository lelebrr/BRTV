package androidx.media3.ui;

import android.content.res.Resources;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2501a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PlayerControlViewLayoutManager f2502b;

    public /* synthetic */ f(PlayerControlViewLayoutManager playerControlViewLayoutManager, int i6) {
        this.f2501a = i6;
        this.f2502b = playerControlViewLayoutManager;
    }

    @Override // java.lang.Runnable
    public final void run() throws Resources.NotFoundException {
        switch (this.f2501a) {
            case 0:
                this.f2502b.updateLayoutForSizeChange();
                break;
            case 1:
                this.f2502b.onLayoutWidthChanged();
                break;
            case 2:
                this.f2502b.showAllBars();
                break;
            case 3:
                this.f2502b.hideAllBars();
                break;
            case 4:
                this.f2502b.hideProgressBar();
                break;
            case 5:
                this.f2502b.hideMainBar();
                break;
            default:
                this.f2502b.hideController();
                break;
        }
    }
}
