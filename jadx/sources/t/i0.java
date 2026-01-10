package t;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class i0 extends m0 {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ int f9938g;

    @Override // t.m0
    public final boolean b(float f, long j10, View view, u uVar) {
        switch (this.f9938g) {
            case 0:
                view.setAlpha(a(f, j10, view, uVar));
                break;
            case 1:
                view.setElevation(a(f, j10, view, uVar));
                break;
            case 2:
                view.setRotation(a(f, j10, view, uVar));
                break;
            case 3:
                view.setRotationX(a(f, j10, view, uVar));
                break;
            case 4:
                view.setRotationY(a(f, j10, view, uVar));
                break;
            case 5:
                view.setScaleX(a(f, j10, view, uVar));
                break;
            case 6:
                view.setScaleY(a(f, j10, view, uVar));
                break;
            case 7:
                view.setTranslationX(a(f, j10, view, uVar));
                break;
            case 8:
                view.setTranslationY(a(f, j10, view, uVar));
                break;
            default:
                view.setTranslationZ(a(f, j10, view, uVar));
                break;
        }
        return this.d;
    }
}
