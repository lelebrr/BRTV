package androidx.leanback.transition;

import android.view.View;

/* compiled from: MyApplication */
/* loaded from: classes.dex */
public final class c extends u7.d {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1590b;

    @Override // androidx.leanback.transition.e
    public final float h(View view) {
        switch (this.f1590b) {
            case 0:
                return view.getTranslationX() - view.getWidth();
            case 1:
                return view.getTranslationX() + view.getWidth();
            case 2:
                return view.getLayoutDirection() == 1 ? view.getTranslationX() + view.getWidth() : view.getTranslationX() - view.getWidth();
            default:
                return view.getLayoutDirection() == 1 ? view.getTranslationX() - view.getWidth() : view.getTranslationX() + view.getWidth();
        }
    }
}
