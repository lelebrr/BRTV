package y1;

import android.view.View;
import android.view.ViewGroup;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class t extends v {

    /* renamed from: v, reason: collision with root package name */
    public final /* synthetic */ int f11322v;

    @Override // y1.v, y1.u
    public final float a(ViewGroup viewGroup, View view) {
        switch (this.f11322v) {
            case 0:
                return view.getTranslationY() - viewGroup.getHeight();
            default:
                return view.getTranslationY() + viewGroup.getHeight();
        }
    }
}
