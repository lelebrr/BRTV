package androidx.leanback.transition;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class d extends a2.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1591b;

    @Override // androidx.leanback.transition.e
    public final float h(View view) {
        switch (this.f1591b) {
            case 0:
                return view.getTranslationY() - view.getHeight();
            default:
                return view.getTranslationY() + view.getHeight();
        }
    }
}
