package y1;

import android.view.View;
import android.view.ViewGroup;
import java.util.WeakHashMap;
import n0.s0;

/* compiled from: MyApplication */
/* loaded from: classes2.dex */
public final class s extends v {

    /* renamed from: v, reason: collision with root package name */
    public final /* synthetic */ int f11321v;

    @Override // y1.v, y1.u
    public final float b(ViewGroup viewGroup, View view) {
        switch (this.f11321v) {
            case 0:
                break;
            case 1:
                WeakHashMap weakHashMap = s0.f8353a;
                if (viewGroup.getLayoutDirection() != 1) {
                    break;
                } else {
                    break;
                }
            case 2:
                break;
            default:
                WeakHashMap weakHashMap2 = s0.f8353a;
                if (viewGroup.getLayoutDirection() != 1) {
                    break;
                } else {
                    break;
                }
        }
        return view.getTranslationX() + viewGroup.getWidth();
    }
}
