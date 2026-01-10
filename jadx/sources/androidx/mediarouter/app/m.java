package androidx.mediarouter.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Transformation;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class m extends Animation {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2625a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2626b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2627c;
    public final /* synthetic */ View d;

    public /* synthetic */ m(int i6, int i10, int i11, View view) {
        this.f2625a = i11;
        this.f2626b = i6;
        this.f2627c = i10;
        this.d = view;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        View view = this.d;
        int i6 = this.f2627c;
        int i10 = this.f2626b;
        switch (this.f2625a) {
            case 0:
                u.q(i10 - ((int) ((i10 - i6) * f)), view);
                break;
            default:
                int i11 = i6 + ((int) ((i10 - i6) * f));
                int i12 = q0.S;
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.height = i11;
                view.setLayoutParams(layoutParams);
                break;
        }
    }
}
