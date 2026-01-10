package androidx.media3.ui;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2490a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f2491b;

    public /* synthetic */ a(View view, int i6) {
        this.f2490a = i6;
        this.f2491b = view;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2490a) {
            case 0:
                ((DefaultTimeBar) this.f2491b).lambda$new$0();
                break;
            case 1:
                ((PlayerControlView) this.f2491b).updateProgress();
                break;
            default:
                ((PlayerView) this.f2491b).invalidate();
                break;
        }
    }
}
