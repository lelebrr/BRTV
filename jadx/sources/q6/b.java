package q6;

import android.os.SystemClock;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f9240a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ d f9241b;

    public /* synthetic */ b(d dVar, int i6) {
        this.f9240a = i6;
        this.f9241b = dVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f9240a) {
            case 0:
                d dVar = this.f9241b;
                if (dVar.d > 0) {
                    SystemClock.uptimeMillis();
                }
                dVar.setVisibility(0);
                break;
            default:
                d dVar2 = this.f9241b;
                ((l) dVar2.getCurrentDrawable()).e(false, false, true);
                if ((dVar2.getProgressDrawable() == null || !dVar2.getProgressDrawable().isVisible()) && (dVar2.getIndeterminateDrawable() == null || !dVar2.getIndeterminateDrawable().isVisible())) {
                    dVar2.setVisibility(4);
                }
                dVar2.getClass();
                break;
        }
    }
}
